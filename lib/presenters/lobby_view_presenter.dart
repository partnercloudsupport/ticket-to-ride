import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/lobby_view_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/api/game.pb.dart' as gameApi;
import 'package:ticket_to_ride/api/player_wrapper.dart' as playerWrapper;

class LobbyViewApi {
  getGame(ctx, request) {
    return api.gameProxy.getGame(ctx, request);
  }

  getPlayer(ctx, request) {
    return api.gameProxy.getPlayer(ctx, request);
  }

  getUsername(ctx, request) {
    return api.authProxy.getUsername(ctx, request);
  }
}

class LobbyViewPresenter implements LobbyViewObserver {


  LobbyViewApi _api;
  LobbyViewFragment _fragment;
  LobbyGame _game;

  List<playerWrapper.Player> playerObjects = [];

  LobbyViewPresenter() {
    this._api = new LobbyViewApi();
    _game = LobbyGame();
  }

  LobbyViewPresenter.withApi(this._api);

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

  @override
  getGame() async {
    var ctx = ClientContext();

    try {

      var request1 = new api.GetGameRequest();
      request1.gameId = GlobalContext().currentGameId;
      var response1 = await _api.getGame(ctx, request1);

      var players = [];

      for(var x = 0; x < response1.maxPlayers; x++) {
        if(response1.playerIds.length > x) {
          var request2 = new api.GetPlayerRequest();
          request2.playerId = response1.playerIds[x];
          var response2 = await _api.getPlayer(ctx, request2);

          var request3 = new api.GetUsernameRequest();
          request3.userId = response2.accountId;
          var response3 = await _api.getUsername(ctx, request3);

          // evil disgusting code to save wrapped player object in list
          gameApi.Player p = response2;
          playerWrapper.Player player = playerWrapper.Player(null, p.id, p.accountId, p.gameId, p.color);
          player.username = response3.username;
          playerObjects.add(player);

          players.add(Player(response3.username, _getColor(response2.color)));
        } else {
          players.add(null);
        }
      }

      var request4 = new api.GetPlayerRequest();
      request4.playerId = response1.hostPlayerId;
      var response4 = await _api.getPlayer(ctx, request4);

      var request5 = new api.GetUsernameRequest();
      request5.userId = response4.accountId;
      var response5 = await _api.getUsername(ctx, request5);

      _game.name = response1.displayName;
      _game.hostName = response5.username;
      _game.players = players;
      _game.canStart = response1.playerIds.length > 1 && GlobalContext().currentUserId == response4.accountId;

      return _game;

    } catch(error) {
      // print(error.code);
      // print(error.message);
      print(error);

      return _game;
    }
  }

  @override
  exitGame() async {
    FragmentLibrary.navigatePop();
  }

  @override
  startGame() async {
    for (playerWrapper.Player p in playerObjects) {
      // print(p.username);
      GlobalContext().addPlayerToMap(p);
    }

    var ctx = ClientContext();
    var request = api.StartGameRequest();
    request.gameId = GlobalContext().currentGameId;

    api.gameProxy.startGame(ctx, request);

    FragmentLibrary.navigatePush('/game_view');
    FragmentLibrary.navigatePush('/dest_card_select');
  }

  build() {
    _fragment = new LobbyViewFragment(title: 'Lobby');
    _fragment.addObserver(this);
    return _fragment;
  }
}
