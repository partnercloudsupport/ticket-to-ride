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
          GlobalContext().dummyPlayerMap[playerId].username,
          getPlayerColor(GlobalContext().dummyPlayerMap[playerId].color),
          getPlayerColorInt(GlobalContext().dummyPlayerMap[playerId].color),
          player.points,
          player.trainCount,
          player.trainCardCount,
          player.destinationCardCount,
          playerId == "player1" && player.points == 11 ? true : playerId == "player2" && player.points == 30 ? true : false
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
