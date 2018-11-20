import 'package:ticket_to_ride/global_context.dart';
// import 'package:ticket_to_ride/api/player_wrapper.dart' as playerWrapper;
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/fragments/game_player_fragment.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GamePlayerApi {
  streamPlayerStats(ctx, request) {
    return api.gameProxy.streamPlayerStats(ctx, request);
  }
}

class GamePlayerPresenter implements GamePlayerObserver  {

  GamePlayerApi _api;
  GamePlayerFragment _fragment;

  GamePlayerPresenter() {
    this._api = new GamePlayerApi();
  }

  GamePlayerPresenter.withApi(this._api);

  @override
  getPlayers() {
    var ctx = ClientContext();
    var request = new api.StreamPlayerStatsRequest();
    print(GlobalContext().currentGameId);
    request.gameId = GlobalContext().currentGameId;

    var playerList = Map<String, api.PlayerStats>();

    return _api.streamPlayerStats(ctx, request).map((api.PlayerStats response) {

      if (response.playerId == GlobalContext().currentPlayerId && response.turnState != playerList[response.playerId]?.turnState) {
        switch (response.turnState) {
        case api.PlayerTurnState.LAST:
          FragmentLibrary.showToast("It's your last turn!");
          break;
        case api.PlayerTurnState.GAME_ENDED:
          FragmentLibrary.navigatePush('/game_over');
          break;
        }
      }

      // update old player data
      playerList[response.playerId] = response;

      var finalPlayerList = [];

      playerList.forEach((playerId, player) {
        finalPlayerList.add(Player(
          GlobalContext().playerMap[playerId].username,
          getPlayerColor(GlobalContext().playerMap[playerId].color),
          getPlayerColorInt(GlobalContext().playerMap[playerId].color),
          player.trainCardPoints,
          player.trainCount,
          player.trainCardCount,
          player.destinationCardCount,
          player.turnState == api.PlayerTurnState.START || player.turnState == api.PlayerTurnState.MID ? true : false
        ));
      });

      return finalPlayerList;
    });
  }

  build() {
    _fragment = new GamePlayerFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
