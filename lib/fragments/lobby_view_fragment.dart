import 'package:flutter/material.dart';
import 'package:ticket_to_ride/lobby_view_presenter.dart';
import 'package:ticket_to_ride/poll.dart';

class LobbyViewFragment extends StatefulWidget {
  LobbyViewFragment(this.lobbyViewPresenter, {Key key, this.title}) : super(key: key);

  final LobbyViewPresenter lobbyViewPresenter;
  final String title;

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
  void dispose(){
    _cancelPoll();
    super.dispose();
  }

  _getGameLobby() async {
    _cancelPoll = poll(30, () async {
      var gameLobby = await widget.lobbyViewPresenter.getGame(context);

      print('poll');

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

  _startGameButton(canStart) {

    if(!canStart) {
      return Text('');
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
        child: RaisedButton(
          onPressed: () {widget.lobbyViewPresenter.startGame(context);},
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
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
            textAlign: TextAlign.start,
          ),
          Text('Hosted by ${_gameLobby.hostName}'),
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
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                child: RaisedButton(
                  onPressed: () {widget.lobbyViewPresenter.exitGame(context);},
                  child: Text(
                    'Exit Game',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
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
