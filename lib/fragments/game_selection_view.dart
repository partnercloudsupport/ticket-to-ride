import 'package:flutter/material.dart';
import 'create_game_fragment.dart';
import 'game_list_fragment.dart';

class GameSelectionView {
  GameSelectionView();

  static Widget build(CreateGameFragment createGameFragment, GameListFragment gameListFragment) {

    var _background = Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("images/background2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Game Selection', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: <Widget> [
            _background,
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
