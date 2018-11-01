import 'package:ticket_to_ride/api/api.dart' as api;
import 'dart:async';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/game_bank_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameBankApi {
  selectTrainCard(playerId, trainCardId) {
    FragmentLibrary.showToast("$playerId is claiming $trainCardId");
  }

  selectTrainCardFromDeck(playerId) {
    FragmentLibrary.showToast("$playerId is claiming a train card");
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
      FaceUpTrainCard('1', true, blue),
      FaceUpTrainCard('2', false, blue),
      FaceUpTrainCard('3', true, green),
      FaceUpTrainCard('4', false, white),
      FaceUpTrainCard('5', true, red),
    ];
  }

  @override
  selectDestinationCards(){
    FragmentLibrary.showToast('Selecting destination card');
    FragmentLibrary.navigatePush('/dest_card_select');
  }

  @override
  selectTrainCard(String trainCardId){
    _api.selectTrainCard(GlobalContext().currentPlayerId, trainCardId);
  }

  @override
  selectTrainCardFromDeck(){
    _api.selectTrainCardFromDeck(GlobalContext().currentPlayerId);
  }


  build() {
    _fragment = new GameBankFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
