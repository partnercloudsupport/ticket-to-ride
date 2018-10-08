import 'package:flutter/material.dart';

class LobbyViewPage extends StatefulWidget {
  LobbyViewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LobbyViewPageState createState() => new _LobbyViewPageState();
}

class _LobbyViewPageState extends State<LobbyViewPage> {

  Widget _displayPlayer(player) {

    if(player == null) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              height: 92.0,
              width: 92.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/player-waiting.jpg"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              margin: new EdgeInsets.symmetric(
                vertical: 16.0
              ),
              alignment: FractionalOffset.centerLeft,

            ),
            Text('Waiting for player...'),
          ]
        )
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              height: 92.0,
              width: 92.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("images/player-${player.color}.jpg"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              margin: new EdgeInsets.symmetric(
                vertical: 16.0
              ),
              alignment: FractionalOffset.centerLeft,

            ),
            Text(player.name),
          ]
        )
      );
    }
  }

  var _players = [
    Player('user1', 'blue'),
    Player('user2', 'green'),
    Player('user3', 'yellow'),
    Player('user4', 'red'),
    null,
    null
  ];

  _exitGame() async {
    Navigator.of(context).pushNamed('/game_list');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Game Name'),
            Text('Hosted by ... '),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _players.map((player){
                return _displayPlayer(player);
              }).toList()
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                  child: RaisedButton(
                    onPressed: () {_exitGame();},
                    child: Text(
                      'Exit Game',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                  child: RaisedButton(
                    onPressed: () {_exitGame();},
                    child: Text(
                      'Start Game',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}

class Player {
  String name;
  String color;

  Player(this.name, this.color);
}
