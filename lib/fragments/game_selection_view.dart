import 'package:flutter/material.dart';
import 'package:ticket_to_ride/fragments/create_game_fragment.dart';
import 'package:ticket_to_ride/fragments/game_list_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameSelectionView {
  GameSelectionView();

  static Widget build(CreateGameFragment createGameFragment, GameListFragment gameListFragment) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Game Selection', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: <Widget> [
            FragmentLibrary().background,
            Row(
              children: [
                 Flexible(
                   child: createGameFragment,
                 ),
                 Flexible(
                   child: gameListFragment,
                 )
               ]
            ) 
          ]
        ),
      resizeToAvoidBottomPadding: false,
    );
  }

}
