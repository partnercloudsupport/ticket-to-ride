import 'package:flutter/material.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class LobbyView {
  getGame(context) {}
  exitGame(context) {}
  startGame(context) {}
}

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

class Player {
  String name;
  String color;

  Player(this.name, this.color);
}

class LobbyGame {
  String name;
  String hostName;
  List players = [];
  bool canStart = false;
}

class LobbyViewPresenter implements LobbyView {

  LobbyViewApi _api;
  var _lobbyGame = LobbyGame();

  LobbyViewPresenter() {
    this._api = new LobbyViewApi();
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
  getGame(context) async {
    var ctx = ClientContext();

    try {

      var request1 = new api.GetGameRequest();
      request1.gameId = GlobalContextDEPR.of(context).currentGameId;
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

      _lobbyGame.name = response1.displayName;
      _lobbyGame.hostName = response5.username;
      _lobbyGame.players = players;
      _lobbyGame.canStart = response1.playerIds.length > 1 && GlobalContextDEPR.of(context).userId == response4.accountId;

      return _lobbyGame;

    } catch(error) {
      // print(error.code);
      // print(error.message);
      print(error);

      return _lobbyGame;
    }
  }

  @override
  exitGame(context) async {
    Navigator.pop(context);
  }

  @override
  startGame(context) async {
    Fluttertoast.showToast(
        msg: 'Game Started!',
        toastLength: Toast.LENGTH_LONG,
        bgcolor: "#e74c3c",
        textcolor: '#ffffff',
        timeInSecForIos: 5,
        gravity: ToastGravity.TOP
    );

    // Navigator.of(context).pushNamed('/game_board');
  }
}
