import 'package:flutter/material.dart';
import 'package:ticket_to_ride/fragments/game_map_fragment.dart';
import 'package:ticket_to_ride/fragments/game_player_fragment.dart';
import 'package:ticket_to_ride/fragments/game_menu_fragment.dart';
import 'package:ticket_to_ride/fragments/game_bank_fragment.dart';
import 'package:ticket_to_ride/fragments/game_hand_fragment.dart';

class GameViewFragment extends StatefulWidget {
  GameViewFragment(
    {
      Key key,
      this.title,
      this.boardFragment,
      this.playerFragment,
      this.menuFragment,
      this.bankFragment,
      this.handFragment,
    }) : super(key: key);

  final String title;
  final GameMapFragment boardFragment;
  final GamePlayerFragment playerFragment;
  final GameMenuFragment menuFragment;
  final GameBankFragment bankFragment;
  final GameHandFragment handFragment;

  @override
  _GameViewFragmentState createState() => new _GameViewFragmentState();
}

class _GameViewFragmentState extends State<GameViewFragment> {

  _buildGameView() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            widget.menuFragment,
            widget.playerFragment
          ]
        ),
        Row(
          children: [
            widget.boardFragment
          ]
        ),
        widget.handFragment
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Container(
            child: _buildGameView()
          ),
        ]
      ),
    );
  }
}
