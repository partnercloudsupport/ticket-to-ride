import 'package:flutter/material.dart';
import 'create_game_fragment.dart';
import 'game_list_fragment.dart';

import 'fragment_library.dart';

class GameSelectionPresenterApi {
  createPlayer(request) async {}
  createGame(request) async {}
}

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
