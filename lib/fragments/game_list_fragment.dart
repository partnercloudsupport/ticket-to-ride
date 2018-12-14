import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:ticket_to_ride/api/game_wrapper.dart';

import 'package:ticket_to_ride/api/api.dart' as api;

//final gameListKey = GlobalKey<GameListFragmentState>();

class GameListFragment extends StatefulWidget {

  GameListFragment(GameSelectionPresenter presenter, {Key key, this.title, this.games}) : 
    presenter = presenter, super(key: key);

  final String title;
  final GameSelectionPresenter presenter;
  final Stream<Game> games;

  @override
  GameListFragmentState createState() => new GameListFragmentState();

  void handleReceipt(GameWrapper game) {
    gameListKey.currentState.handleReceipt(game);
  }

}

class GameListFragmentState extends State<GameListFragment>  {

  var request = api.CreatePlayerRequest();
  //var cancelPoll;

  List<GameWrapper> _games = List<GameWrapper>();
  bool gamesLoaded = false;

  @override
  initState() {
    super.initState();
    this.widget.presenter.streamGames(true);
    gamesLoaded = true;
  }

  @override
  void deactivate(){
    //cancelPoll();
    super.deactivate();
  }

  @override
  void dispose() {
    //cancelPoll();
    super.dispose();
  }


  /*_getGameList() async {
    cancelPoll = poll(100, () async {
      games = await widget.presenter.getGameList();
      setState(() {
        gamesLoaded = true;
      });
    });
  } */

  // receive a game from stream
  void handleReceipt(GameWrapper game) {
    setState(() {
      _games.insert(0, game);
    });
  }


  Widget _buildRow(GameWrapper gameWrapper) {
    final joinButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {
          request.userId = GlobalContext().currentUserId;
          request.gameId = gameWrapper.game.gameId;
          this.widget.presenter.createPlayer(request);
        },
        child: Text(
          'Join',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        //color: ticketToRideTheme.buttonColor,
      ),
    );

    return ListTile(
      //leading: const Icon(),
      title: Text(
        gameWrapper.game.displayName,
      ),
      subtitle:  Column(
        children: [
          Text('Host: ' + gameWrapper.hostUsername),
          Text('Waiting for ' + ((gameWrapper.game.maxPlayers - gameWrapper.game.playerIds.length).toString() 
                                  + ' players')),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      trailing: joinButton,
    );
  }

  @override
  Widget build(BuildContext context) {

    var gameList = (!gamesLoaded) ? Text('Loading games...') :
      ((_games.length == 0) ?
        Text('No active games to show.') :
          Flexible(
            child: ListView.builder(
              itemCount: _games.length,
              itemBuilder: (BuildContext context, int i) {
                return _buildRow(_games[i]);
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
