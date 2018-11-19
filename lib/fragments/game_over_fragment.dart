import 'package:flutter/material.dart';

import 'package:ticket_to_ride/theme/theme.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

import 'package:ticket_to_ride/presenters/game_over_presenter.dart';

import 'package:ticket_to_ride/presenters/presenter-data.dart';

final gameOverFragmentKey = GlobalKey<GameOverFragmentState>();

enum TileSize {
  LARGE,
  MEDIUM,
  SMALL
}

class PlayerStatsTile extends StatelessWidget {

  final PlayerStatsWrapper playerInfo;
  final TileSize size;
  final bool twoRows;

  // default constructor from Player, PlayerStats, and rank
  PlayerStatsTile(PlayerStatsWrapper p, TileSize size, bool twoRows) :
    playerInfo = p, size = size, twoRows = twoRows;

  @override
  Widget build(BuildContext context) {

    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    // this is a multiplier that shrinks the size of MEDIUM and LARGE
    // tiles when there is another row to follow
    double m = twoRows ? .4 : 1;

    double height = (size == TileSize.LARGE) ? screenH * .4 * m :
      (size == TileSize.MEDIUM) ? screenH * .3 * m : screenH * .2;
    double width = (size == TileSize.LARGE) ? screenW * .2 * m :
      (size == TileSize.MEDIUM) ? screenW * .15 * m : screenW * .1;
    double titleFontSize = (size == TileSize.LARGE) ? 50 * m : (size == TileSize.MEDIUM) ? 40 * m : 30;
    double topMargin = (size == TileSize.LARGE) ? 10 : 20;


    return Container(
      margin: EdgeInsets.fromLTRB(20.0, topMargin, 20.0, 20.0),
      height: height,
      width: width,
      child: Column(
        children: <Widget>[
          Text(
            "${playerInfo.rank}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize,
            )
          ),
          Container(
            child:  CircleAvatar(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/player-${getPlayerColor(playerInfo.player.color)}.jpg"),
                  ),
                  shape: BoxShape.circle,
                ),
                height: height * .3,
                width: width * .7,
              )
            ),
          ),
          Text(
            "${playerInfo.player.username}",
            style: TextStyle(fontSize: 18),
          ),
          // TODO route stat
          /*Text(
            "${player.routes}"
          )*/
          Text(
            "Trains: ${playerInfo.stats.trainCount}"
          ),
          Text(
            "Destination Cards: ${playerInfo.stats.destinationCardCount}"
          ),
          // TODO longest route
          Container(
            height: 1.0,
            width: width,
            color: ticketToRideTheme.primaryColor,
            margin: EdgeInsets.only(top: 6.0, bottom: 5.0)
          ),
          Text(
            "Total points: ${playerInfo.getTotalPoints()}",
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
        ],
      )
    );
  }
}

class GameOverFragment extends StatefulWidget {

  final String title;
  final GameOverPresenter presenter;

  final List<PlayerStatsTile> tiles;


  static List<PlayerStatsTile> _getTiles(List<PlayerStatsWrapper> players) {
    List<PlayerStatsTile> tiles = List<PlayerStatsTile>();

    for (PlayerStatsWrapper p in players) {
      TileSize size;
      switch(p.rank) {
        case 1 :
          size = TileSize.LARGE;
          break;
        case 2 :
          size = TileSize.MEDIUM;
          break;
        case 3 :
          size = TileSize.MEDIUM;
          break;
        default :
          size = TileSize.SMALL;
      }

      tiles.add(PlayerStatsTile(p, size, players.length > 3));
    }

    // re-sort the tiles so that winner is centered (2 1 3)
    // ASSUMPTION: tiles is in descending point order
    // --> tiles[0] is the winner
    PlayerStatsTile winnerTemp = tiles[0];
    tiles[0] = tiles[1];
    tiles[1] = winnerTemp;

    return tiles;
  }

  GameOverFragment(GameOverPresenter presenter, List<PlayerStatsWrapper> players, {Key key, this.title}) :
    presenter = presenter,
    tiles = _getTiles(players);

@override
GameOverFragmentState createState() => GameOverFragmentState();

}

class GameOverFragmentState extends State<GameOverFragment> {

  @override
  Widget build(BuildContext context) {
    Widget tileContainer;
    if (this.widget.tiles.length > 3) {
      tileContainer = Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: this.widget.tiles.sublist(0,3)
          ),
          Row(
            children: this.widget.tiles.sublist(3)
          )
          ],
        )
      );
    }
    else {
      tileContainer = Container(
        child: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: this.widget.tiles,
        )
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Game Over', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: <Widget> [
            FragmentLibrary().background,
            tileContainer
          ]
        ),
    );
  }

}
