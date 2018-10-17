import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';
import 'package:ticket_to_ride/fragments/create_game_fragment.dart';

class CreateGameActivity extends StatefulWidget {
  CreateGameActivity(GameSelectionPresenter presenter, {Key key, this.title}) :
   this.presenter = presenter, fragment = CreateGameFragment(presenter), super(key: key); 

  final String title;
  final GameSelectionPresenter presenter;
  final CreateGameFragment fragment;


  @override
  _CreateGameActivityState createState() => new _CreateGameActivityState();
}

class _CreateGameActivityState extends State<CreateGameActivity> {



  @override
  Widget build(BuildContext context) {
    return widget.fragment;
  }

}