import 'package:flutter/material.dart';
import 'package:ticket_to_ride/poll.dart';
import 'package:ticket_to_ride/theme/theme.dart';

class Player {
  String name;
  String color;

  Player(this.name, this.color);
}

class LobbyGame {
  String name;
  String hostName;
  List players = [];
  bool canStart = false;
}

abstract class LobbyViewObserver {
  getGame() {}
  exitGame() {}
  startGame() {}
}

class LobbyViewFragment extends StatefulWidget {
  LobbyViewFragment({Key key, this.title}) : super(key: key);

  final observers = List<LobbyViewObserver>();
  final String title;

  void addObserver(LobbyViewObserver o) {
    observers.add(o);
  }

  void removeObserver(LobbyViewObserver o) {
    observers.remove(o);
  }

  @override
  _LobbyViewFragmentState createState() => new _LobbyViewFragmentState();
}

class _LobbyViewFragmentState extends State<LobbyViewFragment> {

  var _gameLobby;
  var _cancelPoll;

  @override
  initState() {
    super.initState();

    _getGameLobby();
  }

  @override
  void deactivate(){
    _cancelPoll();
    super.deactivate();
  }

  @override
  void dispose(){
    _cancelPoll();
    super.dispose();
  }

  _getGameLobby() async {
    _cancelPoll = poll(30, () async {
      var gameLobby;
      for (var o in widget.observers) {
        gameLobby = await o.getGame();
      }

      // print('poll');

      setState(() {
        _gameLobby = gameLobby;
      });
    });
  }

  Widget _displayPlayer(player) {

    // if the player is null then we are still waiting for a player to join
    var name = player != null && player.name != '' ? player.name : "Waiting for player...";
    var color = player != null && player.color != '' ? player.color : "waiting";

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            height: MediaQuery.of(context).size.width * .1,
            width: MediaQuery.of(context).size.width * .1,
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

  _startGameButton(canStart) {

    if(!canStart) {
      return Text('', key: Key('noStart'));
    } else {
      return Padding(
        padding: Theme.of(context).platform == TargetPlatform.iOS ?
          const EdgeInsets.symmetric(vertical:16.0, horizontal: 16.0) :
          const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        child: RaisedButton(
          key: Key('startButton'),
          onPressed: () {
            for (var o in widget.observers) {
              o.startGame();
            }
          },
          child: Text(
            'Start Game',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    }
  }

  _buildLobby() {
    if(_gameLobby == null || _gameLobby.name == null) {
      // By default, show a loading spinner
      return CircularProgressIndicator();
    } else {
      return new Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            _gameLobby.name ?? '',
            key: Key('gameName'),
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            'Hosted by ${_gameLobby.hostName}',
            key: Key('hostName')
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _gameLobby.players.map<Widget>((player){
              return _displayPlayer(player);
            }).toList()
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: Theme.of(context).platform == TargetPlatform.iOS ?
                          const EdgeInsets.symmetric(vertical:16.0, horizontal: 16.0) :
                          const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                child: RaisedButton(
                  key: Key('exitButton'),
                  onPressed: () {
                    for (var o in widget.observers) {
                      o.exitGame();
                    }
                  },
                  child: Text(
                    'Exit Game',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  //color: ticketToRideTheme.buttonColor,
                ),
              ),
              _startGameButton(_gameLobby.canStart)
            ]
          )
        ],
      );
    }
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
            margin: Theme.of(context).platform == TargetPlatform.iOS ?
                      const EdgeInsets.symmetric(vertical:16.0, horizontal: 16.0) :
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
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
