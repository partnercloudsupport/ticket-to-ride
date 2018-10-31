import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/fragments/game_list_fragment.dart';
import 'package:ticket_to_ride/fragments/create_game_fragment.dart';
import 'package:ticket_to_ride/fragments/game_selection_view.dart';

class CreatePlayer {
  String userId;
  String gameId;
}

class CreateGame {
  String displayName;
  int maxPlayers;
  String userId;
}

class GameSelectionApi {
  CreatePlayer createPlayerData = CreatePlayer();
  CreateGame createGameData = CreateGame();

  createPlayer(ctx, request) {
    return api.gameProxy.createGame(ctx,request);
  }

  createGame(ctx, request) {
    return api.gameProxy.createGame(ctx,request);
  }
}

class GameSelectionPresenter {
  
  final String title;

  GameSelectionApi _api;
  CreateGameFragment createGameFragment;
  GameListFragment gameListFragment;

  // default constructor
  GameSelectionPresenter({this.title}) {
    createGameFragment = CreateGameFragment(this);
    gameListFragment = GameListFragment(this);
    this._api = GameSelectionApi();
  }

  // another constructor with fragments passed in
  GameSelectionPresenter.fromFragments(CreateGameFragment createGameFragment, GameListFragment gameListFragment,
  {this.title}) {
    this.createGameFragment = createGameFragment;
    this.gameListFragment = gameListFragment;
    this._api = GameSelectionApi();
  }

  getApi() {
    return _api;
  }

  getGameList() async {
    var ctx = ClientContext();
    try {
      var request = api.ListGamesRequest();
      var response = await api.gameProxy.listGames(ctx, request);

      return response.games;
            
    } catch(error) {
      print(error.code);
      print(error.message);
    }
  } 

  createGame(request) async {
    //if (request.validate()) {
      //request.save();

      var ctx = ClientContext();

      print('Display name: ' + request.displayName);
      print('Max players: ' + request.maxPlayers.toString());

      try {
        var response = await api.gameProxy.createGame(ctx,request);


        //createGameFragment.onCurrentGameIdChange(response.gameId);
        GlobalContext().currentGameId = response.gameId;

        
        // TODO replace with wrapper Navigator implementation
        //createGameFragment.pushNavigator('/lobby_view');
        FragmentLibrary.navigatePush('/lobby_view');

        print('just created game ' + response.gameId);


      } catch(error) {
        print(error.code);
        print(error.message);
      }

    //}
  }

  createPlayer(request) async {
      var ctx = ClientContext();

      try {
        print('querying game ' + request.gameId);
        var response = await api.gameProxy.createPlayer(ctx, request);

        try {
          GetPlayerRequest getPlayerRequest = GetPlayerRequest();
          getPlayerRequest.playerId = response.playerId;
          print(getPlayerRequest.playerId);
          var playerResponse = await api.gameProxy.getPlayer(ctx, getPlayerRequest);

          print(playerResponse.gameId);

          //gameListFragment.onCurrentGameIdChange(playerResponse.gameId);
          GlobalContext().currentGameId = playerResponse.gameId;

          // TODO replace with wrapper Navigator implementation
          //gameListFragment.pushNavigator('/lobby_view');
          FragmentLibrary.navigatePush('/lobby_view');

        } catch(error) {
            print(error.code);
            print(error.message);
        }

      } catch(error) {
          switch(error.code) {
            case api.Code.INVALID_ARGUMENT:
              //gameListFragment.showErrorToast('This game is full');
              FragmentLibrary.showErrorToast('This game is full');
              break;
            case api.Code.NOT_FOUND:
              //gameListFragment.showErrorToast('This game no longer exists');
              FragmentLibrary.showErrorToast('This game no longer exists');
              break;
            default:
              //gameListFragment.showErrorToast('UNKNOWN ERROR');
              FragmentLibrary.showErrorToast('UNKNOWN ERROR');
          }
      }
  } 

  Widget build() {

    getGameList();

    return GameSelectionView.build(createGameFragment, gameListFragment);

  }

}

