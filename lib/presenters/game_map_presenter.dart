import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/game_map_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameMapApi {
  claimRoute(playerId, routeId) {
    FragmentLibrary.showToast("$playerId is claiming $routeId");
  }

  streamRoutes(ctx, request) {
    return api.cardProxy.streamRoutes(ctx, request);
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
  getCities() async {
    return [
      City("Los Angeles", "1", .07, .6),
      City("New York", "2", .89, .32),
      City("Duluth", "3", .57, .28),
      City("Houston", "4", .53, .75),
      City("Sault St. Marie", "5", .69, .2),
      City("Nashville", "6", .7, .55),
      City("Atlanta", "7", .75, .6),
      City("Portland", "8", .04, .17),
      City("Vancouver", "9", .07, .05),
      City("Calgary", "10", .2, .04),
      City("Winnipeg", "11", .47, .1),
      City("Montreal", "12", .9, .12),
      City("Boston", "13", .96, .25),
      City("Toronto", "14", .79, .25),
      City("Helena", "15", .3, .22),
      City("Seattle", "16", .08, .115),
      City("Pittsburgh", "17", .8, .37),
      City("Washington", "18", .89, .42),
      City("Raleigh", "19", .83, .53),
      City("Saint Louis", "20", .6, .47),
      City("Omaha", "21", .5, .37),
      City("Kansas City", "22", .52, .45),
      City("Little Rock", "23", .58, .58),
      City("Charleston", "24", .83, .63),
      City("Miami", "25", .84, .86),
      City("New Orleans", "26", .62, .73),
      City("Dallas", "27", .47, .69),
      City("El Paso", "28", .315, .69),
      City("Santa Fe", "29", .3, .55),
      City("Phoenix", "30", .17, .63),
      City("Las Vegas", "31", .13, .52),
      City("San Francisco", "32", .005, .45),
      City("Salt Lake City", "33", .22, .40),
      City("Oklahoma City", "34", .48, .56),
      City("Denver", "35", .33, .44),
      City("Chicago", "36", .67, .38),
    ];
  }

  _getColorInt(colorCode) {
    switch(colorCode) {
      case api.Player_Color.RED:
        return 0XFF731616;
      case api.Player_Color.BLUE:
        return 0XFF00587C;
      case api.Player_Color.GREEN:
        return 0XFF527C00;
      case api.Player_Color.PURPLE:
        return 0XFF4D345A;
      case api.Player_Color.ORANGE:
        return 0XFF7C4000;
      case api.Player_Color.YELLOW:
        return 0XFFB59A00;
    }
  }

  _getCardColor(color) {
    switch(color) {
    case api.TrainColor.ORANGE:
      return 0xFFDB9759;
    case api.TrainColor.PINK:
      return 0xFFD950C6;
    case api.TrainColor.GREEN:
      return 0xFF84B72A;
    case api.TrainColor.BLUE:
      return 0xFF5FDCDA;
    case api.TrainColor.BLACK:
      return 0xFF212121;
    case api.TrainColor.GREY:
      return 0xFFC3C3C3;
    case api.TrainColor.YELLOW:
      return 0xFFD9B755;
    case api.TrainColor.RED:
      return 0xFFD74141;
    case api.TrainColor.WHITE:
      return 0xFFECECEC;
    }
  }

  @override
  getRoutes() {

    // StreamRoutes (StreamRoutesRequest)

    var ctx = ClientContext();
    var request = new api.StreamRoutesRequest();

    var routesList = Map();

    // string id = 1;
    // string first_city_id = 2;
    // string second_city_id = 3;
    // TrainColor color = 4;
    // string player_id = 5;
    var city1 = City("Helena", "15", .3, .22);
    var city2 = City("Salt Lake City", "33", .22, .40);
    var city3 = City("Denver", "35", .33, .44);

    return _api.streamRoutes(ctx, request).map((response) {
      // print(response);

      // update old route data
      if(routesList.containsKey(response.id)) {
        routesList.removeWhere((k,v) => k == response.id);
      }
      routesList.putIfAbsent(response.id, () => response);

      var finalRoutesList = [];

      routesList.forEach((routeId, route) {
        // print(route.firstCityId);
        // print(" ");
        var firstCity = route.firstCityId == "city1" ? city1 : route.firstCityId == "city2" ? city2 : city3;
        var secondCity = route.secondCityId == "city1" ? city1 : route.secondCityId == "city2" ? city2 : city3;

        finalRoutesList.add(Route(
          firstCity.coordinateX,
          firstCity.coordinateY,
          secondCity.coordinateX,
          secondCity.coordinateY,
          3,
          route.id,
          _getCardColor(route.color),
          GlobalContext().dummyPlayerMap[route.playerId] != null ? _getColorInt(GlobalContext().dummyPlayerMap[route.playerId].color) : -1)
        );
      });

      finalRoutesList.addAll(_getAllRoutes());

      return finalRoutesList;
      // return [];
    });

    // _getColorInt(GlobalContext().dummyPlayerMap["player1"].color);
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

  _getAllRoutes() {

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
      Route(.07, .05, .08,.115, 1, "vancouver-seattle", grey, -1),
      Route(.07, .05, .08,.115, 1, "vancouver-seattle", grey, -1),
      Route(.07, .05, .2,.04,   3, "vancouver-calgary", grey, -1),
      Route(.005, .45, .07,.6,  3, "sanFrancisco-losAngeles", pink, -1),
      Route(.005, .45, .07,.6,  3, "sanFrancisco-losAngeles", yellow, -1),
      Route(.005, .45, .04,.17, 5, "sanFrancisco-portland", pink, -1),
      Route(.005, .45, .04,.17, 5, "sanFrancisco-portland", green, -1),
      Route(.005, .45, .22,.40, 5, "sanFrancisco-saltLakeCity", orange, -1),
      Route(.005, .45, .22,.40, 5, "sanFrancisco-saltLakeCity", white, -1),
      Route(.04, .17, .22, .40, 6, "1", blue, -1), // portland - salt lake city
      Route(.08, .115, .2, .04, 4, "1", grey, -1), // Seattle - Calgary
      Route(.07, .6, .13, .52,  2, "1", grey, -1), //  Los Angeles - Las Vegas
      Route(.07, .6, .17, .63,  3, "1", grey, -1), //  Los Angeles - Pheonix
      Route(.07, .6, .315, .69, 6, "1", black, -1), //  Los Angeles - El Paso
      Route(.13, .52, .22, .40, 3, "1", orange, -1), //  Las Vegas - SaltLake City
      Route(.2, .04, .3, .22,   4, "1", grey, -1), //  Calgary - Helena
      Route(.2, .04, .47, .1,   6, "1", white, -1), //  Calgary - Winnipeg
      Route(.3, .22, .47, .1,   4, "1", blue, -1), //  Helena - Winnipeg
      Route(.3, .22, .57, .28,  6, "1", orange, -1), //  Helena - Duluth
      Route(.3, .22, .5, .37,   5, "1", red, -1), //  Helena - Omaha
      // Route(.3, .22, .33, .44,  4, "1", green, -1), //  Helena - Denver
      // Route(.22, .40, .3,  .22, 3, "1", pink, -1), // salt lake city - helena
      Route(.17, .63, .315,.69, 3, "1", grey, -1), //  Pheonix - El Paso
      Route(.17, .63, .3, .55,  3, "1", grey, -1), //  Pheonix - Santa Fe
      Route(.17, .63, .33, .44, 5, "1", white, -1), //  Pheonix - Denver
      Route(.3, .55, .33, .44,  2, "1", grey, -1), //  Santa Fe - Denver
      Route(.3, .55,.315, .69,  2, "1", grey, -1), //  Santa Fe - El Paso
      Route(.3, .55, .48, .56,  3, "1", blue, -1), //  Santa Fe - Oklahoma City
      Route(.315, .69,.48, .56, 5, "1", yellow, -1), //  El Paso - Oklahoma City
      Route(.315, .69,.53, .75, 6, "1", green, -1), //  El Paso - Houston
      Route(.47, .69, .315,.69, 4, "2", red, -1), // dallas - el paso
      // Route(.33, .44, .22, .40, 3, "2", red,    -1), // denver - salt lake city
      // Route(.33, .44, .22, .40, 3, "2", yellow, -1), // denver - salt lake city
      Route(.33, .44, .48, .56, 4, "1", red, -1), //  Denver - Oklahoma City
      Route(.33, .44, .52, .45, 4, "1", orange, -1), //  Denver - Kansas City
      Route(.33, .44, .52, .45, 4, "1", black, -1), //  Denver - Kansas City
      Route(.33, .44, .5, .37,  4, "1", pink, -1), //  Denver - Omaha
      Route(.57, .28, .47, .1,  4, "1", black, -1), //  Duluth - Winnipeg
      Route(.57, .28, .69, .2,  3, "1", grey, -1), //  Duluth - Sault St. Marie
      Route(.57, .28, .79, .25, 6, "1", pink, -1), //  Duluth - Toronto
      Route(.57, .28, .67, .38, 3, "1", red, -1), //  Duluth - Chicago
      Route(.57, .28, .5, .37,  2, "1", grey, -1), //  Duluth - Omaha
      Route(.57, .28, .5, .37,  2, "1", grey, -1), //  Duluth - Omaha
      Route(.47, .1, .69, .2,   6, "1", grey, -1), //  Winnipeg - Sault St. Mary
      Route(.5, .37, .67, .38,  4, "1", blue, -1), //  Omaha - Chicago
      Route(.5, .37, .52, .45,  1, "1", blue, -1), //  Omaha - Kansas City
      Route(.5, .37, .52, .45,  1, "1", pink, -1), //  Omaha - Kansas City
      Route(.48, .56, .52, .45, 2, "1", grey, -1), //  Oklahoma City - Kansas City
      Route(.48, .56, .52, .45, 2, "1", grey, -1), //  Oklahoma City - Kansas City
      Route(.48, .56, .58, .58, 2, "1", grey, -1), //  Oklahoma City - Little Rock
      Route(.48, .56, .47, .69, 2, "1", grey, -1), //  Oklahoma City - Dallas
      Route(.48, .56, .47, .69, 2, "1", grey, -1), //  Oklahoma City - Dallas
      Route(.47, .69, .53, .75, 1, "1", grey, -1), //  Dallas - Houston
      Route(.47, .69, .53, .75, 1, "1", grey, -1), //  Dallas - Houston
      Route(.47, .69, .58, .58, 2, "1", grey, -1), //  Dallas - Little Rock
      Route(.62, .73, .58, .58, 3, "1", green, -1), //  New Orleans - Little Rock
      Route(.62, .73, .53, .75, 2, "1", grey, -1), //  New Orleans - Houston
      Route(.62, .73, .75, .6,  4, "1", yellow, -1), //  New Orleans - Atlanta
      Route(.62, .73, .75, .6,  4, "1", orange, -1), //  New Orleans - Atlanta
      Route(.62, .73, .84, .86, 6, "1", red, -1), //  New Orleans - Miami
      Route(.6, .47, .58, .58,  2, "1", grey, -1), //  St Louis - Little Rock
      Route(.6, .47, .7, .55,   2, "1", grey, -1), //  St Louis - Nashville
      Route(.6, .47, .8, .37,   5, "1", green, -1), //  St Louis - Pittsburgh
      Route(.6, .47, .67, .38,  2, "1", green, -1), //  St Louis - Chicago
      Route(.6, .47, .67, .38,  2, "1", white, -1), //  St Louis - Chicago
      Route(.7, .55, .58, .58,  3, "1", white, -1), //  Nashville - Little Rock
      Route(.7, .55, .75, .6,   1, "1", grey, -1), //  Nashville - Atlanta
      Route(.7, .55, .83, .53,  3, "1", black, -1), //  Nashville - Raleigh
      Route(.7, .55, .8, .37,   4, "1", yellow, -1), //  Nashville - Pittsburgh
      Route(.8, .37, .67, .38,  3, "1", orange, -1), //  Pittsburgh - Chicago
      Route(.8, .37, .67, .38,  3, "1", black, -1), //  Pittsburgh - Chicago
      Route(.8, .37, .83, .53,  2, "1", grey, -1), //  Pittsburgh - Raleigh
      Route(.8, .37, .89, .42,  2, "1", grey, -1), //  Pittsburgh - Washington
      Route(.8, .37, .89, .32,  2, "1", white, -1), //  Pittsburgh - New York
      Route(.8, .37, .89, .32,  2, "1", green, -1), //  Pittsburgh - New York
      Route(.8, .37, .79, .25,  2, "1", grey, -1), //  Pittsburgh - Toronto
      Route(.75, .6, .84, .86,  5, "1", blue, -1), //  Atlanta - Miami
      Route(.75, .6, .83, .63,  2, "1", grey, -1), //  Atlanta - Charleston
      Route(.75, .6, .83, .53,  2, "1", grey, -1), //  Atlanta - Raleigh
      Route(.75, .6, .83, .53,  2, "1", grey, -1), //  Atlanta - Raleigh
      Route(.83, .63, .83, .53, 2, "1", grey, -1), //  Charleston - Raleigh
      Route(.83, .63, .84, .86, 4, "1", pink, -1), //  Charleston - Miami
      Route(.83, .53, .89, .42, 2, "1", grey, -1), //  Releigh - Washington
      Route(.83, .53, .89, .42, 2, "1", grey, -1), //  Releigh - Washington
      Route(.89, .32, .89, .42, 2, "1", orange, -1), //  New York - Washington
      Route(.89, .32, .89, .42, 2, "1", black, -1), //  New York - Washington
      Route(.89, .32, .96, .25, 2, "1", yellow, -1), //  New York - Boston
      Route(.89, .32, .96, .25, 2, "1", red, -1), //  New York - Boston
      Route(.89, .32, .9, .12,  3, "1", blue, -1), //  New York - Montréal
      Route(.9, .12, .96, .25,  2, "1", grey, -1), //  Montréal - Boston
      Route(.9, .12, .96, .25,  2, "1", grey, -1), //  Montréal - Boston
      Route(.9, .12, .79, .25,  3, "1", grey, -1), //  Montréal - Toronto
      Route(.9, .12, .69, .2,   5, "1", black, -1), //  Montréal - Sault St. Marie
      Route(.79, .25, .69, .2,  2, "1", grey, -1), //  Toronto - Sault St. Marie
      Route(.79, .25, .67, .38, 4, "1", white, -1), //  Toronto - Chicago
      Route(.08, .115, .3, .22, 6, "2", yellow, -1), // seattle - helena
      Route(.52, .45, .6, .47,  2, "2", pink, -1), // kansas city - saint louis
      Route(.52, .45, .6, .47,  2, "2", blue, -1), // kansas city - saint louis
    ];
  }
}
