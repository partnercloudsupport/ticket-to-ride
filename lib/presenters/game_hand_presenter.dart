import 'package:ticket_to_ride/api/api.dart' as api;
import 'dart:async';
import 'package:ticket_to_ride/fragments/game_hand_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameHandApi {
  Future<api.LoginResponse> login(ctx, request) {
    return api.authProxy.login(ctx, request);
  }

  Future<api.LoginResponse> register(ctx, request) {
    return api.authProxy.register(ctx, request);
  }
}

class GameHandPresenter implements GameHandObserver  {

  GameHandApi _api;
  GameHandFragment _fragment;

  GameHandPresenter() {
    this._api = new GameHandApi();
  }

  GameHandPresenter.withApi(this._api);

  @override
  getDestinationCards() {
    return [
      DestinationCard('Los Angeles', 'New York', 21),
      DestinationCard('Duluth', 'Houston', 8)
    ];
  }

  @override
  getTrainCards() {
    int orange = 0xFFDB9759;
    int pink = 0xFFD950C6;
    int green = 0xFF84B72A;
    int blue = 0xFF5FDCDA;
    int black = 0xFF212121;
    int grey = 0xFFC3C3C3;
    int yellow = 0xFFD9B755;
    int red = 0xFFD74141;
    int white = 0xFFECECEC;

    return [
      TrainCards(orange, 2),
      TrainCards(pink, 2),
      TrainCards(green, 2),
      TrainCards(blue, 2),
      TrainCards(black, 2),
      TrainCards(grey, 2),
      TrainCards(yellow, 2),
      TrainCards(red, 2),
      TrainCards(white, 2)
    ];
  }


  build() {
    _fragment = new GameHandFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
