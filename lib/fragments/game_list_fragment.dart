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

    final gameList = (this.widget.pageState.games.length == 0) ? Text('No active games to show.') : 
      Form(
        key: _formKey,
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          // The itemBuilder callback is called once per game,
          // and places each suggestion into a ListTile row.
          // For even rows, the function adds a ListTile row for the game.
          // For odd rows, the function adds a Divider widget to visually
          // separate the entries. Note that the divider may be difficult
          // to see on smaller devices.
          itemBuilder: (context, i) {
            // Add a one-pixel-high divider widget before each row in theListView.
            if (i.isOdd) return Divider();

            // The syntax "i ~/ 2" divides i by 2 and returns an integer result.
            // For example: 1, 2, 3, 4, 5 becomes 0, 1, 1, 2, 2.
            // This calculates the actual number of word pairings in the ListView,
            // minus the divider widgets.
            final index = i ~/ 2;
            return _buildRow(this.widget.pageState.games[index]);
          }
        )
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