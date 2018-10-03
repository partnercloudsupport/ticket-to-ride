import 'package:flutter/material.dart';

class LobbyViewPage extends StatefulWidget {
  LobbyViewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LobbyViewPageState createState() => new _LobbyViewPageState();
}

class _LobbyViewPageState extends State<LobbyViewPage> {

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
              children: <Widget>[
                Text('Player One'),
                Text('Player Two'),
              ]
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
