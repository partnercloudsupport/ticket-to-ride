import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:ticket_to_ride/poll.dart';
import 'fragment.dart';

import 'package:ticket_to_ride/api/api.dart' as api;

class GameListFragment extends Fragment {

  GameListFragment(GameSelectionPresenter presenter, {Key key, this.title}) : presenter = presenter, 
    super(presenter, key: key);

  final String title;
  final GameSelectionPresenter presenter;

  void pushNavigator(String routeName) {
    gameListKey.currentState.pushNavigator(routeName);
  }

  @override
  GameListFragmentState createState() => new GameListFragmentState();

}

class GameListFragmentState extends FragmentState {
  
  var request = api.CreatePlayerRequest();
  var _cancelPoll;

  List<api.Game> games;
  bool gamesLoaded = false;

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
      games = await widget.presenter.getGameList();
      gamesLoaded = true;
      print('poll');
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget _buildRow(Game game) {
    
      final joinButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          onPressed: () {
            request.userId = GlobalContext().userId;
            request.gameId = game.gameId;
            this.widget.presenter.createPlayer(request);
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
    
    var gameList = (!gamesLoaded) ? Text('Loading games...') :
      ((games.length == 0) ? 
        Text('No active games to show.') : 
          Flexible(
            child: ListView.builder(
              itemCount: games.length,
              itemBuilder: (BuildContext context, int i) {
                return _buildRow(games[i]);
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