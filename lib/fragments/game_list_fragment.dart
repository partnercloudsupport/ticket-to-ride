import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:ticket_to_ride/poll.dart';


class GameListFragment extends StatefulWidget {

  GameListFragment(GameSelectionPresenter presenter, {Key key, this.title}) : presenter = presenter, super(key: key);

  final String title;
  final GameSelectionPresenter presenter;

  @override
  _GameListFragmentState createState() => new _GameListFragmentState();

}

class _GameListFragmentState extends State<GameListFragment> {

  final _formKey = GlobalKey<FormState>();

  var _gameList;
  var _cancelPoll;

  @override
  initState() {
    super.initState();
    _getGameList();
  }

  @override
  void dispose() {
    _cancelPoll();
    super.dispose();
  }


  _getGameList() async {
    _cancelPoll = poll(50, () async {
      var gameList = await widget.presenter.getGameList();

      print('poll');

      setState(() {
              _gameList = gameList;
            });
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget _buildRow(Game game) {
    
      final joinButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          onPressed: () {
            this.widget.presenter.createPlayerRequest.userId = GlobalContextDEPR.of(context).userId;
            this.widget.presenter.createPlayerRequest.gameId = game.gameId;
            //this.widget.presenter.createPlayer(_formKey.currentState);
          },
          child: Text(
            'Join',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),            
      );

      return ListTile(
        //leading: const Icon(),
        title: Text(
          game.displayName,
        ),
        subtitle:  Column(
          children: [
            Text('Host: ' + game.hostPlayerId.toString()),
            Text('Waiting for ' + ((game.maxPlayers - game.playerIds.length).toString() + ' players')),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        trailing: joinButton,
      );

    }

  
    
    var gameList = (!this.widget.presenter.gamesLoaded) ? Text('Loading games...') :
      ((this.widget.presenter.games.length == 0) ? 
        Text('No active games to show.') : 
          Flexible(
            child: ListView.builder(
              itemCount: this.widget.presenter.games.length,
              itemBuilder: (BuildContext context, int i) {
                return _buildRow(this.widget.presenter.games[i]);
              }
            ),
          )
      );

    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 30.0, 30.0, 30.0),
      child: Column (
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Join a Game', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          SizedBox(height:8.0),
          gameList
        ]
      )
    );
  }
}