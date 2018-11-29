import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/game_bank_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';

class GameBankApi {
  selectTrainCard(ctx, request) {
    return api.cardProxy.drawFaceUpTrainCard(ctx, request);
  }

  selectTrainCardFromDeck(ctx, request) {
    return api.cardProxy.drawTrainCardFromDeck(ctx, request);
  }

  streamTrainCards(ctx, request) {
    return api.cardProxy.streamTrainCards(ctx, request);
  }

  streamDestinationCount(ctx, request) {
    return api.cardProxy.streamDeckStats(ctx, request);
  }

  streamTrainCount(ctx, request) {
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

    return _api.streamTrainCards(ctx, request).map((response) {

      var index = trainCards.indexWhere((train) => train.id == response.id);

      if(response.state == api.TrainCard_State.VISIBLE && index <= -1) {
        trainCards.add(FaceUpTrainCard(response.id, true, getTrainColor(response.color)));
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
    request.gameId = GlobalContext().currentGameId;

    return _api.streamDestinationCount(ctx, request).map((response) {
      return response.hiddenDestinationCardCount;
    });
  }

  @override
  getTrainCardCount(){
    var ctx = ClientContext();
    var request = new api.StreamDeckStatsRequest();
    request.gameId = GlobalContext().currentGameId;

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
  selectTrainCard(String trainCardId) async {

    var ctx = ClientContext();
    var request = new api.DrawFaceUpTrainCardRequest();
    request.id = GlobalContext().currentPlayerId;
    request.cardDrawnId = trainCardId;

    try {
      await _api.selectTrainCard(ctx, request);
    } catch(error) {
      print(error);
      print(error.code);
      print(error.message);
    }
  }

  @override
  selectTrainCardFromDeck() async {
    var ctx = ClientContext();
    var request = new api.DrawTrainCardFromDeckRequest();
    request.id = GlobalContext().currentPlayerId;

    try {
      await _api.selectTrainCardFromDeck(ctx, request);
    } catch(error) {
      print(error);
      print(error.code);
      print(error.message);
    }
  }


  build() {
    _fragment = new GameBankFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
