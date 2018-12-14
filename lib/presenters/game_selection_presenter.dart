import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/api/game_wrapper.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/fragments/game_list_fragment.dart';
import 'package:ticket_to_ride/fragments/create_game_fragment.dart';
import 'package:ticket_to_ride/fragments/game_selection_view.dart';

final gameListKey = GlobalKey<GameListFragmentState>();

class GameSelectionPresenter {

  final String title;

  CreateGameFragment createGameFragment;
  GameListFragment gameListFragment;

  // default constructor
  GameSelectionPresenter({this.title}) {
    createGameFragment = CreateGameFragment(this);

    var request = StreamGamesRequest();
    var ctx = ClientContext();
    var stream = api.gameProxy.streamGames(ctx,request);
    gameListFragment = GameListFragment(this, key: gameListKey, games: stream);
    //gameListFragment = GameListFragment(this, games: stream);
  }

  // another constructor with fragments passed in
  GameSelectionPresenter.fromFragments(CreateGameFragment createGameFragment, GameListFragment gameListFragment,
  {this.title}) {
    this.createGameFragment = createGameFragment;
    this.gameListFragment = gameListFragment;
  }

  getGameHostName(var game) async {
    var ctx = ClientContext();
    // similarly evil/disgusting code as in lobby presenter
    var request2 = new api.GetPlayerRequest();
    request2.playerId = game.hostPlayerId;
    var response2 = await api.gameProxy.getPlayer(ctx, request2);

    var request3 = new api.GetUsernameRequest();
    request3.userId = response2.accountId;
    var response3 = await api.authProxy.getUsername(ctx, request3);

    return response3;
  }

  streamGames(bool open) async {
    try {
      await for (Game game in gameListFragment.games) {
        if (!open) {
          break;
        }
        if (game != null) {
          if (game.status == api.Game_Status.PRE) {
            GameWrapper gameWrapper = GameWrapper();
            gameWrapper.game = game;

            try {
              var hostNameResponse = await getGameHostName(game);
              String username = hostNameResponse.username;

              gameWrapper.hostUsername = username;

              gameListKey.currentState.handleReceipt(gameWrapper);
            } catch(error) {
              print("error with getGameHostName");
              print(error.toString());
            }
          }
        }
      }
    } catch(error) {
      print(error.toString());
    }
  }

  createGame(request) async {

    var ctx = ClientContext();

    try {
      var response = await api.gameProxy.createGame(ctx,request);

      GetPlayerRequest getPlayerRequest = GetPlayerRequest();
      getPlayerRequest.playerId = response.playerId;
      var playerResponse = await api.gameProxy.getPlayer(ctx, getPlayerRequest);

      GlobalContext().currentGameId = response.gameId;
      GlobalContext().currentPlayerId = playerResponse.id;

      // gameListKey.currentState.cancelPoll();
      FragmentLibrary.navigatePush('/lobby_view');

    } catch(error) {
      print(error);
      print(error.code);
      print(error.message);
    }
  }

  createPlayer(request) async {
      var ctx = ClientContext();

      try {
        var response = await api.gameProxy.createPlayer(ctx, request);

        try {
          GetPlayerRequest getPlayerRequest = GetPlayerRequest();
          getPlayerRequest.playerId = response.playerId;
          print(getPlayerRequest.playerId);
          var playerResponse = await api.gameProxy.getPlayer(ctx, getPlayerRequest);

          GlobalContext().currentGameId = playerResponse.gameId;
          GlobalContext().currentPlayerId = playerResponse.id;

          FragmentLibrary.navigatePush('/lobby_view');

        } catch(error) {
          print(error);
          print(error.code);
          print(error.message);
        }

      } catch(error) {
          switch(error.code) {
            case api.Code.INVALID_ARGUMENT:
              FragmentLibrary.showErrorToast('This game is full');
              break;
            case api.Code.NOT_FOUND:
              FragmentLibrary.showErrorToast('This game no longer exists');
              break;
            default:
              FragmentLibrary.showErrorToast('UNKNOWN ERROR');
          }
      }
  }

  Widget build() {

    return GameSelectionView.build(createGameFragment, gameListFragment);

  }

}
