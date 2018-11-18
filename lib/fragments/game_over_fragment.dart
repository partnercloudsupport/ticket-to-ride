import 'package:flutter/material.dart';

import 'package:ticket_to_ride/fragments/fragment_library.dart';

import 'package:ticket_to_ride/presenters/game_over_presenter.dart';

import 'package:ticket_to_ride/presenters/presenter-data.dart';

final gameOverFragmentKey = GlobalKey<GameOverFragmentState>();

class PlayerStatsTile extends StatelessWidget {

  final PlayerStatsWrapper playerInfo;
  final double height;
  final double width;
  final bool detailed;

  // default constructor from Player, PlayerStats, and rank
  PlayerStatsTile(PlayerStatsWrapper p, double h, double w, bool detailed) :
    playerInfo = p, height = h, width = w, detailed = detailed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child:  CircleAvatar(
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/player-${getPlayerColor(playerInfo.player.color)}.jpg"),
                  ),
                  shape: BoxShape.circle,
                )
              )
            ),
          ),
          Text(
            "${playerInfo.player.username}"
          ),
          // TODO route stat
          /*Text(
            "${player.routes}"
          )*/
          Text(
            "${playerInfo.stats.trainCount}"
          ),
          Text(
            "${playerInfo.stats.destinationCardCount}"
          ),
          // TODO longest route
          Container(
            height: 1.0,
            width: 30.0,
            color: Colors.white30,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          ),
          Text(
            "Total points: ${playerInfo.getTotalPoints()}"
          )
        ],
      )
    );
  }
}

class GameOverFragment extends StatefulWidget {

  final String title;
  final GameOverPresenter presenter;

  final List<PlayerStatsTile> tiles;

  static double _getHeightFromRank(int rank) {
    if (rank == 1)
      return 30.0;
    else if (rank == 2)
      return 20.0;
    else if (rank == 3)
      return 15.0;
    else
      return 10.0;
  }

  static double _getWidthFromRank(int rank) {
    if (rank > 3)
      return 10.0;
    else
      return 15.0;
  }

  static List<PlayerStatsTile> _getTiles(List<PlayerStatsWrapper> playerInfo) {
    List<PlayerStatsTile> tiles;

    for (PlayerStatsWrapper p in playerInfo) {
      double h = _getHeightFromRank(p.rank);
      double w = _getWidthFromRank(p.rank);
      bool detailed = (p.rank < 4);
      tiles.add(PlayerStatsTile(p, h, w, detailed));
    }

    return tiles;
  }

  GameOverFragment(GameOverPresenter presenter, List<PlayerStatsWrapper> playerInfo, {Key key, this.title}) :
    presenter = presenter,
    tiles = _getTiles(playerInfo);



@override
GameOverFragmentState createState() => GameOverFragmentState();

}

class GameOverFragmentState extends State<GameOverFragment> {

  @override
  Widget build(BuildContext context) {
    Widget tileContainer;
    if (this.widget.tiles.length < 4) {
      tileContainer = Container(
        child: Row (
          children: this.widget.tiles,
        )
      );
    }
    else {
      tileContainer = Container(
        child: Column(
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
