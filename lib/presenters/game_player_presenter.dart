import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/api/player_wrapper.dart' as playerWrapper;
import 'package:ticket_to_ride/api/api.dart' as api;
import 'dart:async';
import 'package:ticket_to_ride/fragments/game_player_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GamePlayerApi {
  // Future<api.LoginResponse> login(ctx, request) {
  //   return api.authProxy.login(ctx, request);
  // }
  //
  // Future<api.LoginResponse> register(ctx, request) {
  //   return api.authProxy.register(ctx, request);
  // }
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
  getPlayers() async {
    /*return [
      Player('user1', _getColor(api.Player_Color.RED), _getColorInt(api.Player_Color.RED), 23, 45, 8, 2),
      Player('user2', _getColor(api.Player_Color.BLUE), _getColorInt(api.Player_Color.BLUE), 23, 45, 8, 2),
      Player('user3', _getColor(api.Player_Color.GREEN), _getColorInt(api.Player_Color.GREEN), 23, 45, 8, 2),
      Player('user4', _getColor(api.Player_Color.PURPLE), _getColorInt(api.Player_Color.PURPLE), 23, 45, 8, 2),
      Player('user5', _getColor(api.Player_Color.ORANGE), _getColorInt(api.Player_Color.ORANGE), 23, 45, 8, 2)
    ]; */

    var playerList = [];

    for (var p in GlobalContext().playerMap.values) {
      playerList.add(Player(p.username,_getColor(p.color), _getColorInt(p.color), 23, 45, 8, 2));
    }

    return playerList;
  }

  build() {
    _fragment = new GamePlayerFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
