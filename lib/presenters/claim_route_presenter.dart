import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/global_context.dart';
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/fragments/claim_route_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';

class ClaimRouteApi {
  getTrainCardHand(ctx, request) async {
    return api.cardProxy.getTrainCardsInHand(ctx, request);
  }
  claimRoute(ctx, request) {
    return api.routeProxy.claimRoute(ctx, request);
  }
}

class ClaimRoutePresenter implements ClaimRouteObserver  {

  ClaimRouteApi _api;
  ClaimRouteFragment _fragment;

  ClaimRoutePresenter() {
    this._api = new ClaimRouteApi();
  }

  ClaimRoutePresenter.withApi(this._api);

  @override
  getTrainCardHand() async {
    var ctx = ClientContext();

    try {
      var request = new api.GetTrainCardsInHandRequest();
      request.id = GlobalContext().currentPlayerId;
      var response = await _api.getTrainCardHand(ctx, request);
      var cards = [];

      response.cards.forEach((card) {
        cards.add(TrainCard(card.id, getTrainColor(card.color)));
      });

      return cards;

    } catch(error) {
      print(error);
      print(error.code);
      print(error.message);
      return [];
    }

  }

  @override
  claimRoute(routeId, cardIds) async {

    FragmentLibrary.showToast("${GlobalContext().currentPlayerId} is claiming $routeId");

    var ctx = ClientContext();
    var request = new api.ClaimRouteRequest();
    request.routeId = routeId;
    request.playerId = GlobalContext().currentPlayerId;
    request.cardIds.addAll(cardIds);

    // print(routeId);
    // print(GlobalContext().currentPlayerId);
    // print(cardIds);

    try {

      await _api.claimRoute(ctx, request);

    } catch(error) {

      print(error);
      print(error.code);
      print(error.message);

      switch(error.code) {
        case api.Code.INVALID_ARGUMENT:
          FragmentLibrary.showErrorToast('Invalid cards');
          break;
        // case api.Code.ACCESS_DENIED:
        //   FragmentLibrary.showErrorToast('Incorrect password');
        //   break;
        default:
          FragmentLibrary.showErrorToast('UNKNOWN ERROR');
      }
    }
  }

  cancel() {
    FragmentLibrary.navigatePop();
  }


  build({routeId, routeLength}) {
    _fragment = new ClaimRouteFragment(title: 'Claim Route', routeId: routeId, routeLength: routeLength);
    _fragment.addObserver(this);
    return _fragment;
  }
}
