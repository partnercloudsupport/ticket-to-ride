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
    // return api.routeProxy.streamRoutes(ctx, request);
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
  getRoutes() async {

    // var ctx = ClientContext();
    // var request = new api.StreamRoutesRequest();
    // var routesList = Map();
    //
    // var city1 = City("Helena", .3, .22);
    // var city2 = City("Salt Lake City", .22, .40);
    // var city3 = City("Denver", .33, .44);

    return await _getAllRoutes();

    // return _api.streamRoutes(ctx, request).map((response) {
    //   // update old route data
    //   if(routesList.containsKey(response.id)) {
    //     routesList.removeWhere((k,v) => k == response.id);
    //   }
    //   routesList.putIfAbsent(response.id, () => response);
    //
    //   var finalRoutesList = [];
    //
    //   routesList.forEach((routeId, route) {
    //     var firstCity = route.firstCityId == "city1" ? city1 : route.firstCityId == "city2" ? city2 : city3;
    //     var secondCity = route.secondCityId == "city1" ? city1 : route.secondCityId == "city2" ? city2 : city3;
    //
    //     finalRoutesList.add(ClientRoute(
    //       firstCity.coordinateX,
    //       firstCity.coordinateY,
    //       secondCity.coordinateX,
    //       secondCity.coordinateY,
    //       3,
    //       route.id,
    //       data.getTrainColor(route.color),
    //       GlobalContext().dummyPlayerMap[route.playerId] != null ? data.getPlayerColorInt(GlobalContext().dummyPlayerMap[route.playerId].color) : -1)
    //     );
    //   });
    //
    //   finalRoutesList.addAll(_getAllRoutes());
    //
    //   return finalRoutesList;
    // });
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

  _getAllRoutes() async {

    // print(data.getRoutes());
    return data.getRoutes();

    // int orange = 0xFFDB9759;
    // int pink = 0xFFD950C6;
    // int green = 0xFF84B72A;
    // int blue = 0xFF5FDCDA;
    // int black = 0xFF212121;
    // int grey = 0xFFC3C3C3;
    // int yellow = 0xFFD9B755;
    // int red = 0xFFD74141;
    // int white = 0xFFECECEC;

    // return [
    //   ClientRoute(.07, .05, .08,.115, 1, "vancouver-seattle", grey, -1),
    //   ClientRoute(.07, .05, .08,.115, 1, "vancouver-seattle-2", grey, -1),
    //   ClientRoute(.07, .05, .2,.04,   3, "vancouver-calgary", grey, -1),
    //   ClientRoute(.005, .45, .07,.6,  3, "sanFrancisco-losAngeles", pink, -1),
    //   ClientRoute(.005, .45, .07,.6,  3, "sanFrancisco-losAngeles-2", yellow, -1),
    //   ClientRoute(.005, .45, .04,.17, 5, "sanFrancisco-portland", pink, -1),
    //   ClientRoute(.005, .45, .04,.17, 5, "sanFrancisco-portland-2", green, -1),
    //   ClientRoute(.005, .45, .22,.40, 5, "sanFrancisco-saltLakeCity", orange, -1),
    //   ClientRoute(.005, .45, .22,.40, 5, "sanFrancisco-saltLakeCity-2", white, -1),
    //   ClientRoute(.04, .17, .22, .40, 6, "portland-saltLakeCity", blue, -1),
    //   ClientRoute(.04, .17, .08,.115, 1, "portland-seattle", grey, -1),
    //   ClientRoute(.04, .17, .08,.115, 1, "portland-seattle-2", grey, -1),
    //   ClientRoute(.08, .115, .2, .04, 4, "1", grey, -1), // Seattle - Calgary
    //   ClientRoute(.07, .6, .13, .52,  2, "1", grey, -1), //  Los Angeles - Las Vegas
    //   ClientRoute(.07, .6, .17, .63,  3, "1", grey, -1), //  Los Angeles - Pheonix
    //   ClientRoute(.07, .6, .315, .69, 6, "1", black, -1), //  Los Angeles - El Paso
    //   ClientRoute(.13, .52, .22, .40, 3, "1", orange, -1), //  Las Vegas - SaltLake City
    //   ClientRoute(.2, .04, .3, .22,   4, "1", grey, -1), //  Calgary - Helena
    //   ClientRoute(.2, .04, .47, .1,   6, "1", white, -1), //  Calgary - Winnipeg
    //   ClientRoute(.3, .22, .47, .1,   4, "1", blue, -1), //  Helena - Winnipeg
    //   ClientRoute(.3, .22, .57, .28,  6, "1", orange, -1), //  Helena - Duluth
    //   ClientRoute(.3, .22, .5, .37,   5, "1", red, -1), //  Helena - Omaha
    //   // ClientRoute(.3, .22, .33, .44,  4, "1", green, -1), //  Helena - Denver
    //   // ClientRoute(.22, .40, .3,  .22, 3, "1", pink, -1), // salt lake city - helena
    //   ClientRoute(.17, .63, .315,.69, 3, "1", grey, -1), //  Pheonix - El Paso
    //   ClientRoute(.17, .63, .3, .55,  3, "1", grey, -1), //  Pheonix - Santa Fe
    //   ClientRoute(.17, .63, .33, .44, 5, "1", white, -1), //  Pheonix - Denver
    //   ClientRoute(.3, .55, .33, .44,  2, "1", grey, -1), //  Santa Fe - Denver
    //   ClientRoute(.3, .55,.315, .69,  2, "1", grey, -1), //  Santa Fe - El Paso
    //   ClientRoute(.3, .55, .48, .56,  3, "1", blue, -1), //  Santa Fe - Oklahoma City
    //   ClientRoute(.315, .69,.48, .56, 5, "1", yellow, -1), //  El Paso - Oklahoma City
    //   ClientRoute(.315, .69,.53, .75, 6, "1", green, -1), //  El Paso - Houston
    //   ClientRoute(.47, .69, .315,.69, 4, "2", red, -1), // dallas - el paso
    //   // ClientRoute(.33, .44, .22, .40, 3, "2", red,    -1), // denver - salt lake city
    //   // ClientRoute(.33, .44, .22, .40, 3, "2", yellow, -1), // denver - salt lake city
    //   ClientRoute(.33, .44, .48, .56, 4, "1", red, -1), //  Denver - Oklahoma City
    //   ClientRoute(.33, .44, .52, .45, 4, "Denver-KansasCity", orange, -1),
    //   ClientRoute(.33, .44, .52, .45, 4, "Denver-KansasCity-2", black, -1),
    //   ClientRoute(.33, .44, .5, .37,  4, "1", pink, -1), //  Denver - Omaha
    //   ClientRoute(.57, .28, .47, .1,  4, "1", black, -1), //  Duluth - Winnipeg
    //   ClientRoute(.57, .28, .69, .2,  3, "1", grey, -1), //  Duluth - Sault St. Marie
    //   ClientRoute(.57, .28, .79, .25, 6, "1", pink, -1), //  Duluth - Toronto
    //   ClientRoute(.57, .28, .67, .38, 3, "1", red, -1), //  Duluth - Chicago
    //   ClientRoute(.57, .28, .5, .37,  2, "1", grey, -1), //  Duluth - Omaha
    //   ClientRoute(.57, .28, .5, .37,  2, "1", grey, -1), //  Duluth - Omaha
    //   ClientRoute(.47, .1, .69, .2,   6, "1", grey, -1), //  Winnipeg - Sault St. Mary
    //   ClientRoute(.5, .37, .67, .38,  4, "1", blue, -1), //  Omaha - Chicago
    //   ClientRoute(.5, .37, .52, .45,  1, "1", blue, -1), //  Omaha - Kansas City
    //   ClientRoute(.5, .37, .52, .45,  1, "1", pink, -1), //  Omaha - Kansas City
    //   ClientRoute(.48, .56, .52, .45, 2, "1", grey, -1), //  Oklahoma City - Kansas City
    //   ClientRoute(.48, .56, .52, .45, 2, "1", grey, -1), //  Oklahoma City - Kansas City
    //   ClientRoute(.48, .56, .58, .58, 2, "1", grey, -1), //  Oklahoma City - Little Rock
    //   ClientRoute(.48, .56, .47, .69, 2, "1", grey, -1), //  Oklahoma City - Dallas
    //   ClientRoute(.48, .56, .47, .69, 2, "1", grey, -1), //  Oklahoma City - Dallas
    //   ClientRoute(.47, .69, .53, .75, 1, "1", grey, -1), //  Dallas - Houston
    //   ClientRoute(.47, .69, .53, .75, 1, "1", grey, -1), //  Dallas - Houston
    //   ClientRoute(.47, .69, .58, .58, 2, "1", grey, -1), //  Dallas - Little Rock
    //   ClientRoute(.62, .73, .58, .58, 3, "1", green, -1), //  New Orleans - Little Rock
    //   ClientRoute(.62, .73, .53, .75, 2, "1", grey, -1), //  New Orleans - Houston
    //   ClientRoute(.62, .73, .75, .6,  4, "1", yellow, -1), //  New Orleans - Atlanta
    //   ClientRoute(.62, .73, .75, .6,  4, "1", orange, -1), //  New Orleans - Atlanta
    //   ClientRoute(.62, .73, .84, .86, 6, "1", red, -1), //  New Orleans - Miami
    //   ClientRoute(.6, .47, .58, .58,  2, "1", grey, -1), //  St Louis - Little Rock
    //   ClientRoute(.6, .47, .7, .55,   2, "1", grey, -1), //  St Louis - Nashville
    //   ClientRoute(.6, .47, .8, .37,   5, "1", green, -1), //  St Louis - Pittsburgh
    //   ClientRoute(.6, .47, .67, .38,  2, "1", green, -1), //  St Louis - Chicago
    //   ClientRoute(.6, .47, .67, .38,  2, "1", white, -1), //  St Louis - Chicago
    //   ClientRoute(.7, .55, .58, .58,  3, "1", white, -1), //  Nashville - Little Rock
    //   ClientRoute(.7, .55, .75, .6,   1, "1", grey, -1), //  Nashville - Atlanta
    //   ClientRoute(.7, .55, .83, .53,  3, "1", black, -1), //  Nashville - Raleigh
    //   ClientRoute(.7, .55, .8, .37,   4, "1", yellow, -1), //  Nashville - Pittsburgh
    //   ClientRoute(.8, .37, .67, .38,  3, "1", orange, -1), //  Pittsburgh - Chicago
    //   ClientRoute(.8, .37, .67, .38,  3, "1", black, -1), //  Pittsburgh - Chicago
    //   ClientRoute(.8, .37, .83, .53,  2, "1", grey, -1), //  Pittsburgh - Raleigh
    //   ClientRoute(.8, .37, .89, .42,  2, "1", grey, -1), //  Pittsburgh - Washington
    //   ClientRoute(.8, .37, .89, .32,  2, "1", white, -1), //  Pittsburgh - New York
    //   ClientRoute(.8, .37, .89, .32,  2, "1", green, -1), //  Pittsburgh - New York
    //   ClientRoute(.8, .37, .79, .25,  2, "1", grey, -1), //  Pittsburgh - Toronto
    //   ClientRoute(.75, .6, .84, .86,  5, "1", blue, -1), //  Atlanta - Miami
    //   ClientRoute(.75, .6, .83, .63,  2, "1", grey, -1), //  Atlanta - Charleston
    //   ClientRoute(.75, .6, .83, .53,  2, "1", grey, -1), //  Atlanta - Raleigh
    //   ClientRoute(.75, .6, .83, .53,  2, "1", grey, -1), //  Atlanta - Raleigh
    //   ClientRoute(.83, .63, .83, .53, 2, "1", grey, -1), //  Charleston - Raleigh
    //   ClientRoute(.83, .63, .84, .86, 4, "1", pink, -1), //  Charleston - Miami
    //   ClientRoute(.83, .53, .89, .42, 2, "1", grey, -1), //  Releigh - Washington
    //   ClientRoute(.83, .53, .89, .42, 2, "1", grey, -1), //  Releigh - Washington
    //   ClientRoute(.89, .32, .89, .42, 2, "1", orange, -1), //  New York - Washington
    //   ClientRoute(.89, .32, .89, .42, 2, "1", black, -1), //  New York - Washington
    //   ClientRoute(.89, .32, .96, .25, 2, "1", yellow, -1), //  New York - Boston
    //   ClientRoute(.89, .32, .96, .25, 2, "1", red, -1), //  New York - Boston
    //   ClientRoute(.89, .32, .9, .12,  3, "1", blue, -1), //  New York - Montréal
    //   ClientRoute(.9, .12, .96, .25,  2, "1", grey, -1), //  Montréal - Boston
    //   ClientRoute(.9, .12, .96, .25,  2, "1", grey, -1), //  Montréal - Boston
    //   ClientRoute(.9, .12, .79, .25,  3, "1", grey, -1), //  Montréal - Toronto
    //   ClientRoute(.9, .12, .69, .2,   5, "1", black, -1), //  Montréal - Sault St. Marie
    //   ClientRoute(.79, .25, .69, .2,  2, "1", grey, -1), //  Toronto - Sault St. Marie
    //   ClientRoute(.79, .25, .67, .38, 4, "1", white, -1), //  Toronto - Chicago
    //   ClientRoute(.08, .115, .3, .22, 6, "2", yellow, -1), // seattle - helena
    //   ClientRoute(.52, .45, .6, .47,  2, "2", pink, -1), // kansas city - saint louis
    //   ClientRoute(.52, .45, .6, .47,  2, "2", blue, -1), // kansas city - saint louis
    // ];
  }
}
