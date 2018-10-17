import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';
//import 'package:ticket_to_ride/activities/activity.dart';

class CreateGameFragment extends StatefulWidget {

  CreateGameFragment(GameSelectionPresenter presenter, {Key key, this.title}) : 
    this.presenter = presenter, super(key: key); 

  final String title;
  final GameSelectionPresenter presenter;

  @override
  _CreateGameFragmentState createState() => new _CreateGameFragmentState();

}


class _CreateGameFragmentState extends State<CreateGameFragment> {

  final _formKey = GlobalKey<FormState>();
  int maxPlayersSelected;

  @override
  Widget build(BuildContext build) {

    final displayNameInput = TextFormField(
     // autofocus: true,
      decoration: InputDecoration(
        labelText: 'Game Display Name',
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter a Display Name for the new game.';
        }
      },
      onSaved: (String value) {
        this.widget.presenter.createGameRequest.displayName = value;
      }         
    );          

    final maxPlayersInput = DropdownButton<int>(
      value: maxPlayersSelected,
      hint: Text('Max # of Players'),
      items:<int>[2, 3, 4, 5].map((int value) {
        return DropdownMenuItem<int>(
          value:value,
          child: Text("$value"),
        );
      }).toList(),
      onChanged: (int value) { 
        maxPlayersSelected = value;
        this.widget.presenter.createGameRequest.maxPlayers = maxPlayersSelected;
        setState(() {});
      },
    );

    final createButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        onPressed: () {
          this.widget.presenter.createGameRequest.userId = GlobalContext.of(context).userId;
          this.widget.presenter.createGame(_formKey.currentState);
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
            displayNameInput,
            maxPlayersInput,
            createButton
          ]
        )
      )
    );

  }
} 
