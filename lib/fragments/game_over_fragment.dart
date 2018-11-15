import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/api/player_wrapper.dart';

import 'package:ticket_to_ride/presenters/presenter-data.dart';


class PlayerStatsCard extends StatelessWidget {

  final Player player;
  //final int rank;

  // default constructor from Player
  PlayerStatsCard(Player player) : player = player;

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
          )
        ],
      )
    );
  }
}

class GameOverFragment extends StatefulWidget {


@override
GameOverFragmentState createState() => GameOverFragmentState();

}

class GameOverFragmentState extends State<GameOverFragment> {

  @override
  Widget build(BuildContext context) {

  }

}