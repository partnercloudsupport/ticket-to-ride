import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'dart:async';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/game_map_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameMapApi {
  Future<api.LoginResponse> login(ctx, request) {
    return api.authProxy.login(ctx, request);
  }

  Future<api.LoginResponse> register(ctx, request) {
    return api.authProxy.register(ctx, request);
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

  @override
  getRoutes() async {

    int orange = 0xFF022D41;
    int pink = 0xFFfa2D41;
    int green = 0xFFfa2D41;
    int blue = 0xFFfa2D41;
    int black = 0xFFfa2D41;
    int grey = 0xFFfa2D41;
    int yellow = 0xFFfa2D41;
    int red = 0xFFfa2D41;
    int white = 0xFFfa2D41;

    return [
      Route( .07, .05, .08, .115, 1, "1", grey, "user1"), // vancouver - Seattle
      Route( .07, .05, .08, .115, 1, "1", grey, "user1"), // vancouver - Seattle

      Route(.07, .05, .2, .04, 5, "1", grey, "user1"), // Vancouver - Calgary

      Route( .005, .45, .07, .6, 5, "1", pink, "user1"), // SanFrancisco - Los Angeles
      Route( .005, .45, .07, .6, 5, "1", yellow, "user1"), // SanFrancisco - Los Angeles





      Route(.005, .45, .04, .17, 5, "1", pink, "user1"), // san francisco - portland
      Route(.005, .45, .04, .17, 5, "1", green, "user1"), // san francisco - portland
      Route(.005, .45, .22, .40, 6, "2", orange, "user1"), // san francisco - salt lake city
      Route(.005, .45, .22, .40, 6, "2", white, "user1"), // san francisco - salt lake city
      Route(.08, .115, .04, .17, 1, "1", 0xFF022D41, "user1"), // seattle - portland
      Route(.08, .115, .04, .17, 1, "1", 0xFF022D41, "user1"), // seattle - portland

      Route(.47, .69, .315, .69, 6, "2", 0xFFfa2D41, "user1"), // dallas - el paso
      Route(.22, .40, .3, .22, 3, "1", 0xFF022D41, "user1"), // salt lake city - helena
      Route(.33, .44, .22, .40, 3, "2", red, "user1"), // denver - salt lake city
      Route(.33, .44, .22, .40, 3, "2", yellow, "user1"), // denver - salt lake city
      Route(.04, .17, .22, .40, 6, "1", 0xFF022D41, "user1"), // portland - salt lake city
      Route(.08, .115, .3, .22, 6, "2", 0xFFfa2D41, "user1"), // seattle - helena
      Route(.52, .45, .6, .47, 2, "2", pink, "user1"), // kansas city - saint louis
      Route(.52, .45, .6, .47, 2, "2", blue, "user1"), // kansas city - saint louis

    ];
  }

  @override
  claimRoute() {

  }

  build() {
    _fragment = new GameMapFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
