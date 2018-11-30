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

  getGame(ctx, request) {
    return api.gameProxy.getGame(ctx, request);
  }
}

class GamePlayerPresenter implements GamePlayerObserver  {

  GamePlayerApi _api;
  GamePlayerFragment _fragment;
  bool _gameOver = false;

  GamePlayerPresenter() {
    this._api = new GamePlayerApi();
  }

  GamePlayerPresenter.withApi(this._api);

  @override
  getPlayers() {
    var ctx = ClientContext();
    var request = new api.StreamPlayerStatsRequest();
    request.gameId = GlobalContext().currentGameId;

    var playerList = Map<String, api.PlayerStats>();

    return _api.streamPlayerStats(ctx, request).map((api.PlayerStats response) async {

      if(_gameOver) {
        return [];
      }

      var request1 = new api.GetGameRequest();
      request1.gameId = GlobalContext().currentGameId;
      var response1 = await _api.getGame(ctx, request1);

      if(response1.status == api.Game_Status.LAST_ROUND && response.playerId == GlobalContext().currentPlayerId) {
        FragmentLibrary.showToast("It's your last turn!");
      }

      if(response1.status == api.Game_Status.FINISHED && response.playerId == GlobalContext().currentPlayerId && !_gameOver) {
        FragmentLibrary.navigatePush('/game_over');
        _gameOver = true;
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
