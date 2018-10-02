import 'package:flutter/material.dart';
import 'model/game.dart';

class GameSelectionPage extends StatefulWidget {
  GameSelectionPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _GameSelectionPageState createState() => new _GameSelectionPageState();
}

class _GameSelectionPageState extends State<GameSelectionPage> {
  List<Game> _games;
  String _gameDisplayName;
  int _maxPlayers;

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCreateGame(),
              _buildGameList()
            ]
          )
        ),
      )
    );

  }


  Widget _buildCreateGame() {
    final displayName = TextFormField(
      initialValue: 'The A Game',
      decoration: InputDecoration(
        hintText: 'Game Display Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      )
    );

    final maxPlayers = DropdownButton<int>(
      items:<int>[2, 3, 4, 5].map((int value) {
        return DropdownMenuItem<int>(
          value:value,
          child: Text("$value"),
        );
      }),
      onChanged: (int value) { setState((){ _maxPlayers = value;}); },
      hint: Text('Max # of Players')
    );


    final createButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            // TODO add lobby transition
            //Navigator.of(context).pushNamed(LobbyPage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Create', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Widget _buildGameList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      // The itemBuilder callback is called once per suggested word pairing,
      // and places each suggestion into a ListTile row.
      // For even rows, the function adds a ListTile row for the word pairing.
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
        return _buildRow(_games[index]);
      }
    );
  }

  Widget _buildRow(Game game) {
    return ListTile(
      title: Text(
        game.displayName,
        style:_biggerFont,
      ),
      subtitle:  Text(
        game.hostUserID.toString(),
      ),
    );
  }
}
