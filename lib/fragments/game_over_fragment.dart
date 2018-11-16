import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/api/player_wrapper.dart' as pw;
import 'package:ticket_to_ride/api/game.pb.dart';

import 'package:ticket_to_ride/presenters/game_over_presenter.dart';

import 'package:ticket_to_ride/presenters/presenter-data.dart';

final gameOverFragmentKey = GlobalKey<GameOverFragmentState>();

class PlayerStatsTile extends StatelessWidget {

  final pw.Player player;
  final PlayerStats stats;
  final int rank;

  // default constructor from Player, PlayerStats, and rank
  PlayerStatsTile(pw.Player player, PlayerStats stats, int rank) : player = player, stats = stats, rank = rank;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child:  CircleAvatar(
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/player-${getPlayerColor(player.color)}.jpg"),
                  ),
                  shape: BoxShape.circle,
                )
              )
            ),
          ),
          Text(
            "${player.username}"
          ),
          // TODO route stat
          /*Text(
            "${player.routes}"
          )*/
          Text(
            "${stats.trainCount}"
          ),
          Text(
            "${stats.destinationCardCount}"
          ),
          // TODO longest route
          Container(
            height: 1.0,
            width: 30.0,
            color: Colors.white30,
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          ),
          Text(
            // dummy total
            "${stats.trainCount + stats.destinationCardCount}"
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

  static List<PlayerStatsTile> _getTiles(List<PlayerStatsWrapper> playerInfo) {
    List<PlayerStatsTile> tiles;

    for (PlayerStatsWrapper p in playerInfo) {
      tiles.add(PlayerStatsTile(p.player, p.stats, p.rank));
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

  }

}