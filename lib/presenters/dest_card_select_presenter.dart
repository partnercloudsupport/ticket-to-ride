import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/card.pb.dart' as cardApi;
import 'package:ticket_to_ride/global_context.dart';
import 'package:protobuf/protobuf.dart';
import 'dart:async';
import 'package:ticket_to_ride/fragments/dest_card_select_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class DestCardSelectApi {
  // selectDestinationCards(List<String> cardIds) {
  //
  // }
  getDestinationCards(ctx, request) {
    return api.cardProxy.peekDestinationCards(ctx, request);
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

    var request = new api.PeekDestinationCardsRequest();
    request.gameId = GlobalContext().currentGameId;
    var response = await _api.getDestinationCards(ctx, request);

    print(response);

    return [
      DestinationCard("losAngeles-newYorkCity", "losAngeles-newYorkCity", 21),
      DestinationCard("duluth-houston", "duluth-houston", 8),
      DestinationCard("toronto-miami", "toronto-miami", 10)
    ];
  }

  @override
  selectDestinationCards(List<String> cardIds) {
    print(cardIds);
    FragmentLibrary.navigatePop();
  }

  build() {
    _fragment = new DestCardSelectFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
