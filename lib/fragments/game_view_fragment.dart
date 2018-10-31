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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double width65 = width * 0.65;
    // if(_gameBoard == null || _gameBoard.name == null) {
    //   // By default, show a loading spinner
    //   return CircularProgressIndicator();
    // } else {
      return new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          widget.boardFragment

          // Container(
          //   width: width65,
          //   height: height * .25,
          //   child: Text(
          //     // _gameBoard.name ?? '',
          //     'This is the game name',
          //     key: Key('gameName'),
          //     style: new TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 40.0,
          //     ),
          //     textAlign: TextAlign.start,
          //   ),
          // ),

          // Text(
          //   'Hosted by ${_gameLobby.hostName}',
          //   key: Key('hostName')
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: _gameLobby.players.map<Widget>((player){
          //     return _displayPlayer(player);
          //   }).toList()
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Padding(
          //       padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
          //       child: RaisedButton(
          //         key: Key('exitButton'),
          //         onPressed: () {
          //           for (var o in widget.observers) {
          //             o.exitGame();
          //           }
          //         },
          //         child: Text(
          //           'Exit Game',
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //     ),
          //     _startGameButton(_gameLobby.canStart)
          //   ]
          // )
        ],
      );
    // }
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
