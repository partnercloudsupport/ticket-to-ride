import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';

import 'package:ticket_to_ride/api/api.dart' as api;

class CreateGameFragment extends StatefulWidget {

  CreateGameFragment(GameSelectionPresenter presenter, {Key key, this.title}) : 
    this.presenter = presenter;

  final String title;
  final GameSelectionPresenter presenter;

  @override
  CreateGameFragmentState createState() => new CreateGameFragmentState();

}


class CreateGameFragmentState extends State<CreateGameFragment> {

  final _formKey = GlobalKey<FormState>();
  int maxPlayersSelected = 2;
  var request = api.CreateGameRequest();

  @override
  Widget build(BuildContext build) {

    var _displayNameInput = TextFormField(
     // autofocus: true,
      key: Key("display_name"),
      decoration: InputDecoration(
        labelText: 'Game Display Name',
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter a Display Name for the new game.';
        }
      },
      onSaved: (String value) {
        request.displayName = value;
        print('building request with display name ' + request.displayName);
      }         
    );
    request.maxPlayers = 2;

    var _maxPlayersInput = DropdownButton<int>(
      value: maxPlayersSelected,
      //hint: Text('Max # of Players'),
      items:<int>[2, 3, 4, 5].map((int value) {
        return DropdownMenuItem<int>(
          value:value,
          child: Text("$value"),
        );
      }).toList(),
      onChanged: (int value) { 
        maxPlayersSelected = value;
        request.maxPlayers = maxPlayersSelected;
        setState(() {});
      },
    );

    final createButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            request.userId = GlobalContext().currentUserId;
            this.widget.presenter.createGame(request);
          }
        },
        child: Text(
          'Create',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 30.0, 15.0, 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Create a New Game', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
            _displayNameInput,
            _maxPlayersInput,
            createButton
          ]
        )
      )
    );

  }
} 
