import 'package:ticket_to_ride/global_context.dart';
// import 'package:ticket_to_ride/api/player_wrapper.dart' as playerWrapper;
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/fragments/game_player_fragment.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';

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

    var playerList = Map();

    return _api.streamPlayerStats(ctx, request).map((response) {

      // update old player data
      if(playerList.containsKey(response.playerId)) {
        playerList.removeWhere((k,v) => k == response.playerId);
      }
      playerList.putIfAbsent(response.playerId, () => response);

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
