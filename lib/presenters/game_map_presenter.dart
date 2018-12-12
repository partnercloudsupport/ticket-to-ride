import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/game_map_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart' as data;
import 'package:ticket_to_ride/presenters/claim_route_presenter.dart';

class GameMapApi {
  streamRoutes(ctx, request) {
    return api.routeProxy.streamRoutes(ctx, request);
  }
}

class GameMapPresenter implements GameMapObserver  {

  GameMapApi _api;
  GameMapFragment _fragment;

  GameMapPresenter() {
    this._api = new GameMapApi();
  }

  GameMapPresenter.withApi(this._api);

  @override
  getCities() {
    return data.getCities();
  }

  @override
  getRoutes() {

    var ctx = ClientContext();
    var request = new api.StreamRoutesRequest();
    request.gameId = GlobalContext().currentGameId;
    var routesList = Map();

    print("STARTING ROUTE STREAM");

    return _api.streamRoutes(ctx, request).map((response) {
      print("Stream routes");
      // print(response);
      // update old route data
      routesList[response.id] = response;

      return data.getRoutes(routesList, GlobalContext().playerMap);
    });
  }

  @override
  claimRoute(routeId, routeLength) {
    FragmentLibrary.navigateTo(ClaimRoutePresenter().build(routeId: routeId, routeLength: routeLength));
  }

  build() {
    _fragment = new GameMapFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
