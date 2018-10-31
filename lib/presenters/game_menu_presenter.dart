import 'package:ticket_to_ride/api/api.dart' as api;
import 'dart:async';
import 'package:ticket_to_ride/fragments/game_menu_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameMenuApi {
  Future<api.LoginResponse> login(ctx, request) {
    return api.authProxy.login(ctx, request);
  }

  Future<api.LoginResponse> register(ctx, request) {
    return api.authProxy.register(ctx, request);
  }
}

class GameMenuPresenter implements GameMenuObserver  {

  GameMenuApi _api;
  GameMenuFragment _fragment;

  GameMenuPresenter() {
    this._api = new GameMenuApi();
  }

  GameMenuPresenter.withApi(this._api);

  @override
  openChat() {
    FragmentLibrary.navigatePush('/chat');
  }

  @override
  openGameHistory() {
    FragmentLibrary.navigatePush('/game_history');
  }

  build() {
    _fragment = new GameMenuFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
