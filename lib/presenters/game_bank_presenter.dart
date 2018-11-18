import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/game_bank_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';

class GameBankApi {
  selectTrainCard(playerId, trainCardId) {
    FragmentLibrary.showToast("$playerId is claiming $trainCardId");
  }

  selectTrainCardFromDeck(playerId) {
    FragmentLibrary.showToast("$playerId is claiming a train card");
  }

  streamTrainCards(ctx, request) {
    // return [];
    return api.cardProxy.streamTrainCards(ctx, request);
  }

  streamDestinationCount(ctx, request) {
    // return [];
    return api.cardProxy.streamDeckStats(ctx, request);
  }

  streamTrainCount(ctx, request) {
    // return [];
    return api.cardProxy.streamDeckStats(ctx, request);
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

    var ctx = ClientContext();

    var request = new api.StreamTrainCardsRequest();
    request.playerId = GlobalContext().currentPlayerId;

    var trainCards = [];

    print('here');

    return _api.streamTrainCards(ctx, request).map((response) {
      print(response);

      var index = trainCards.indexWhere((train) => train.id == response.id);

      if(response.state == api.TrainCard_State.VISIBLE && index <= -1) {
        trainCards.add(FaceUpTrainCard(response.id, true,getTrainColor(response.color)));
      } else if(index > -1 && response.state != api.TrainCard_State.VISIBLE) {
        trainCards.removeAt(index);
      }

      return trainCards;
    });
  }

  @override
  getDestCardCount(){
    var ctx = ClientContext();
    var request = new api.StreamDeckStatsRequest();

    return _api.streamDestinationCount(ctx, request).map((response) {
      return response.hiddenDestinationCardCount;
    });
  }

  @override
  getTrainCardCount(){
    var ctx = ClientContext();
    var request = new api.StreamDeckStatsRequest();

    // print('here');
    return _api.streamTrainCount(ctx, request).map((response) {
      return response.hiddenTrainCardCount;
    });
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
