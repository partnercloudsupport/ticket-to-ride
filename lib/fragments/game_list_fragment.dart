import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:ticket_to_ride/game_selection_page.dart';
import 'package:ticket_to_ride/api/game.pb.dart';


class GameListFragment extends StatefulWidget {

  GameListFragment(GameSelectionPageState pageState, {Key key, this.title}) : pageState = pageState, super(key: key);

  final String title;
  final GameSelectionPageState pageState;

  @override
  _GameListFragmentState createState() => new _GameListFragmentState();

}

class _GameListFragmentState extends State<GameListFragment> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    Widget _buildRow(Game game) {
    
      final joinButton = Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          onPressed: () {
            this.widget.pageState.createPlayerRequest.userId = GlobalContext.of(context).userId;
            this.widget.pageState.createPlayerRequest.gameId = game.gameId;
            this.widget.pageState.createPlayer(_formKey.currentState);
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
          style:TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle:  Column(
          children: [
            Text('Host: ' + game.hostPlayerId.toString()),
            Text(' Waiting for ' + ((game.maxPlayers - game.playerIds.length).toString() + ' players')),
          ]
        ),
        trailing: joinButton,
      );

    }

    var gameList = (this.widget.pageState.games.length == 0) ? Text('No active games to show.') : 
      ListView.builder(
        itemCount: this.widget.pageState.games.length,
        itemBuilder: (BuildContext context, int i) {
          //return _buildRow(this.widget.pageState.games[i]);
          print('PRINTING I FOR BUILDER: ' + i.toString());
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('hello'),
            ]
          ) ;
        }
      ); 

    return Padding(
      padding: EdgeInsets.fromLTRB(15.0, 30.0, 30.0, 30.0),
      child: Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Join a Game'),
          SizedBox(height:8.0),
          gameList
        ]
      )
    );
  }
}