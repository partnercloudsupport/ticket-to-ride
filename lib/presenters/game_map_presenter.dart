import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/game_map_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart' as data;

class GameMapApi {
  claimRoute(playerId, routeId) {
    FragmentLibrary.showToast("$playerId is claiming $routeId");
  }

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

    return _api.streamRoutes(ctx, request).map((response) {
      // update old route data
      if(routesList.containsKey(response.id)) {
        routesList.removeWhere((k,v) => k == response.id);
      }
      routesList[response.id] = response;

      return data.getRoutes(routesList);
    });
  }

  @override
  claimRoute(routeId) {
    _api.claimRoute(GlobalContext().currentPlayerId, routeId);
  }

  build() {
    _fragment = new GameMapFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
