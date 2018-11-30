import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/global_context.dart';
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/fragments/dest_card_select_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class DestCardSelectApi {
  getDestinationCards(ctx, request) async {
    return api.cardProxy.peekDestinationCards(ctx, request);
  }
  claimDestinationCards(ctx, request) async {
    return api.cardProxy.claimDestinationCards(ctx, request);
  }
}

class DestCardSelectPresenter implements DestCardSelectObserver  {

  DestCardSelectApi _api;
  DestCardSelectFragment _fragment;

  DestCardSelectPresenter() {
    this._api = new DestCardSelectApi();
  }

  DestCardSelectPresenter.withApi(this._api);

  @override
  getDestinationCards() async {
    var ctx = ClientContext();

    try {
      var request = new api.PeekDestinationCardsRequest();
      request.playerId = GlobalContext().currentPlayerId;
      var response = await _api.getDestinationCards(ctx, request);
      var cards = [];

      response.destinationCards.forEach((card) {
        cards.add(DestinationCard(card.id, "${card.firstCityId}-${card.secondCityId}", card.pointValue));
      });

      return cards;

    } catch(error) {
      print(error);
      print(error.code);
      print(error.message);
      switch (error.code) {
        case api.Code.NOT_FOUND:
        FragmentLibrary.showErrorToast("Invalid player");
        break;
        default:
        FragmentLibrary.showErrorToast(error.message);
      }
      
      FragmentLibrary.navigatePop();
      return [];
    }

  }

  @override
  selectDestinationCards(List<String> cardIds) async {
    var ctx = ClientContext();

    try {
      var request = new api.ClaimDestinationCardsRequest();
      request.playerId = GlobalContext().currentPlayerId;
      request.destinationCardIds.addAll(cardIds);
      await _api.claimDestinationCards(ctx, request);

      FragmentLibrary.navigatePop();
    } catch(error) {
      print(error);
      print(error.code);
      print(error.message);
    }
  }

  build({minCard = 1}) {
    _fragment = new DestCardSelectFragment(title: 'Login', minCard: minCard);
    _fragment.addObserver(this);
    return _fragment;
  }
}
