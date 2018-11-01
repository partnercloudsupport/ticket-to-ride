import 'package:ticket_to_ride/global_context.dart';
// import 'package:ticket_to_ride/api/player_wrapper.dart' as playerWrapper;
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/fragments/game_player_fragment.dart';

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

  _getColor(colorCode) {
    switch(colorCode) {
      case api.Player_Color.RED:
        return 'red';
      case api.Player_Color.BLUE:
        return 'blue';
      case api.Player_Color.GREEN:
        return 'green';
      case api.Player_Color.PURPLE:
        return 'purple';
      case api.Player_Color.ORANGE:
        return 'orange';
      case api.Player_Color.YELLOW:
        return 'yellow';
    }
  }

  _getColorInt(colorCode) {
    switch(colorCode) {
      case api.Player_Color.RED:
        return 0XFF731616;
      case api.Player_Color.BLUE:
        return 0XFF00587C;
      case api.Player_Color.GREEN:
        return 0XFF527C00;
      case api.Player_Color.PURPLE:
        return 0XFF4D345A;
      case api.Player_Color.ORANGE:
        return 0XFF7C4000;
      case api.Player_Color.YELLOW:
        return 0XFFB59A00;
    }
  }

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
          _getColor(GlobalContext().dummyPlayerMap[playerId].color),
          _getColorInt(GlobalContext().dummyPlayerMap[playerId].color),
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
