import 'package:flutter/material.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'global_context_widget.dart';

class LobbyViewPage extends StatefulWidget {
  LobbyViewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LobbyViewPageState createState() => new _LobbyViewPageState();
}

class _LobbyViewPageState extends State<LobbyViewPage> {

  _getGame() async {
    var ctx = ClientContext();

    try {

      var request = new api.GetGameRequest();
      print(GlobalContext.of(context).currentGameId);
      request.gameId = GlobalContext.of(context).currentGameId;
      var response = await api.gameProxy.getGame(ctx, request);

      print(response);

      Navigator.of(context).pushNamed('/game_selection');

      return _players;

      var game = new api.Game();
      game.displayName = 'Woodfields Warriors';
      game.maxPlayers = 5;
      game.hostPlayerId = '123';

      return game;
      return response;

    } catch(error) {
      print(error);
      return [];
    }
  }

  Widget _displayPlayer(player) {

    // if the player is null then we are still waiting for a player to join
    var name = player != null && player.name != '' ? player.name : "Waiting for player...";
    var color = player != null && player.color != '' ? player.color : "waiting";

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
                image: new AssetImage("images/player-$color.jpg"),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
            margin: new EdgeInsets.symmetric(
              vertical: 16.0
            ),
            alignment: FractionalOffset.centerLeft,

          ),
          Text(name),
        ]
      )
    );
  }

  var _players = [
    Player('user1', 'blue'),
    Player('user2', 'green'),
    Player('user3', 'yellow'),
    Player('user4', 'red'),
    Player('user3', 'orange'),
    Player('user4', 'purple'),
    // null,
    // null
  ];

  _exitGame() async {
    Navigator.of(context).pushNamed('/game_list');
  }

  _buildLobby() {
    return FutureBuilder(
      future: _getGame(),
      builder: (context, snapshot){
        if(snapshot.hasData) {
          return new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Game Name',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
                textAlign: TextAlign.start,
              ),
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
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner
        return CircularProgressIndicator();
      }
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
          margin: const EdgeInsets.symmetric(vertical: 150.0, horizontal: 60.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/background2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: _buildLobby()
        ),
      ]
      ),
    );
  }
}

class Player {
  String name;
  String color;

  Player(this.name, this.color);
}
