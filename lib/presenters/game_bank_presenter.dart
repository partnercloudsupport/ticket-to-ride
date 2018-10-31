import 'package:ticket_to_ride/api/api.dart' as api;
import 'dart:async';
import 'package:ticket_to_ride/fragments/game_bank_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameBankApi {
  Future<api.LoginResponse> login(ctx, request) {
    return api.authProxy.login(ctx, request);
  }

  Future<api.LoginResponse> register(ctx, request) {
    return api.authProxy.register(ctx, request);
  }
}

class GameBankPresenter implements GameBankObserver  {

  GameBankApi _api;
  GameBankFragment _fragment;

  GameBankPresenter() {
    this._api = new GameBankApi();
  }

  GameBankPresenter.withApi(this._api);

  @override
  getFaceUpTrainCards() {
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
      FaceUpTrainCard(true, blue),
      FaceUpTrainCard(false, blue),
      FaceUpTrainCard(true, green),
      FaceUpTrainCard(false, white),
      FaceUpTrainCard(true, red),
    ];
  }

  @override
  selectDestinationCard(){
  }

  @override
  selectTrainCard(){
  }

  @override
  selectTrainCardFromDeck(){
  }


  build() {
    _fragment = new GameBankFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
