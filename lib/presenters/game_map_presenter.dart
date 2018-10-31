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
      Route(.07, .05, .08,.115, 1, "1", grey, "user1"), // vancouver - Seattle
      Route(.07, .05, .08,.115, 1, "1", grey, "user1"), // vancouver - Seattle
      Route(.07, .05, .2,.04,   3, "1", grey, "user1"), // Vancouver - Calgary
      Route(.005, .45, .07,.6,  3, "1", pink, "user1"), // SanFrancisco - Los Angeles
      Route(.005, .45, .07,.6,  3, "1", yellow, "user1"), // SanFrancisco - Los Angeles
      Route(.005, .45, .04,.17, 5, "1", pink, "user1"), // san francisco - portland
      Route(.005, .45, .04,.17, 5, "1", green, "user1"), // san francisco - portland
      Route(.005, .45, .22,.40, 5, "2", orange, "user1"), // san francisco - salt lake city
      Route(.005, .45, .22,.40, 5, "2", white, "user1"), // san francisco - salt lake city
      Route(.005, .45, .04,.17, 6, "1", pink, "user1"), // san francisco - portland
      Route(.005, .45, .04,.17, 6, "1", green, "user1"), // san francisco - portland
      Route(.04, .17, .22, .40, 6, "1", 0xFF022D41, "user1"), // portland - salt lake city
      Route(.08, .115, .2, .04, 4, "1", yellow, "user1"), // Seattle - Calgary
      Route(.07, .6, .13, .52,  2, "1", yellow, "user1"), //  Los Angeles - Las Vegas
      Route(.07, .6, .17, .63,  3, "1", yellow, "user1"), //  Los Angeles - Pheonix
      Route(.07, .6, .315, .69, 6, "1", yellow, "user1"), //  Los Angeles - El Paso
      Route(.13, .52, .22, .40, 3, "1", yellow, "user1"), //  Las Vegas - SaltLake City
      Route(.2, .04, .3, .22,   4, "1", yellow, "user1"), //  Calgary - Helena
      Route(.2, .04, .47, .1,   6, "1", yellow, "user1"), //  Calgary - Winnipeg
      Route(.3, .22, .47, .1,   4, "1", yellow, "user1"), //  Helena - Winnipeg
      Route(.3, .22, .57, .28,  6, "1", yellow, "user1"), //  Helena - Duluth
      Route(.3, .22, .5, .37,   5, "1", yellow, "user1"), //  Helena - Omaha
      Route(.3, .22, .33, .44,  4, "1", yellow, "user1"), //  Helena - Denver
      Route(.22, .40, .3,  .22, 3, "1", 0xFF022D41, "user1"), // salt lake city - helena
      Route(.17, .63, .315,.69, 3, "1", yellow, "user1"), //  Pheonix - El Paso
      Route(.17, .63, .3, .55,  3, "1", yellow, "user1"), //  Pheonix - Santa Fe
      Route(.17, .63, .33, .44, 5, "1", yellow, "user1"), //  Pheonix - Denver
      Route(.3, .55, .33, .44,  2, "1", yellow, "user1"), //  Santa Fe - Denver
      Route(.3, .55,.315, .69,  2, "1", yellow, "user1"), //  Santa Fe - El Paso
      Route(.3, .55, .48, .56,  3, "1", yellow, "user1"), //  Santa Fe - Oklahoma City
      Route(.315, .69,.48, .56, 5, "1", yellow, "user1"), //  El Paso - Oklahoma City
      Route(.315, .69,.53, .75, 6, "1", yellow, "user1"), //  El Paso - Houston
      Route(.47, .69, .315,.69, 4, "2", 0xFFfa2D41, "user1"), // dallas - el paso
      Route(.33, .44, .22, .40, 3, "2", red,    "user1"), // denver - salt lake city
      Route(.33, .44, .22, .40, 3, "2", yellow, "user1"), // denver - salt lake city
      Route(.33, .44, .48, .56, 4, "1", yellow, "user1"), //  Denver - Oklahoma City
      Route(.33, .44, .52, .45, 4, "1", yellow, "user1"), //  Denver - Kansas City
      Route(.33, .44, .52, .45, 4, "1", yellow, "user1"), //  Denver - Kansas City
      Route(.33, .44, .5, .37,  4, "1", yellow, "user1"), //  Denver - Omaha
      Route(.57, .28, .47, .1,  4, "1", yellow, "user1"), //  Duluth - Winnipeg
      Route(.57, .28, .69, .2,  3, "1", yellow, "user1"), //  Duluth - Sault St. Marie
      Route(.57, .28, .79, .25, 6, "1", yellow, "user1"), //  Duluth - Toronto
      Route(.57, .28, .67, .38, 3, "1", yellow, "user1"), //  Duluth - Chicago
      Route(.57, .28, .5, .37,  2, "1", yellow, "user1"), //  Duluth - Omaha
      Route(.57, .28, .5, .37,  2, "1", yellow, "user1"), //  Duluth - Omaha
      Route(.47, .1, .69, .2,   6, "1", yellow, "user1"), //  Winnipeg - Sault St. Mary
      Route(.5, .37, .67, .38,  4, "1", yellow, "user1"), //  Omaha - Chicago
      Route(.5, .37, .52, .45,  1, "1", yellow, "user1"), //  Omaha - Kansas City
      Route(.5, .37, .52, .45,  1, "1", yellow, "user1"), //  Omaha - Kansas City
      Route(.48, .56, .52, .45, 2, "1", yellow, "user1"), //  Oklahoma City - Kansas City
      Route(.48, .56, .52, .45, 2, "1", yellow, "user1"), //  Oklahoma City - Kansas City
      Route(.48, .56, .58, .58, 2, "1", yellow, "user1"), //  Oklahoma City - Little Rock
      Route(.48, .56, .47, .69, 2, "1", yellow, "user1"), //  Oklahoma City - Dallas
      Route(.48, .56, .47, .69, 2, "1", yellow, "user1"), //  Oklahoma City - Dallas
      Route(.47, .69, .53, .75, 1, "1", yellow, "user1"), //  Dallas - Houston
      Route(.47, .69, .53, .75, 1, "1", yellow, "user1"), //  Dallas - Houston
      Route(.47, .69, .58, .58, 2, "1", yellow, "user1"), //  Dallas - Little Rock
      Route(.62, .73, .58, .58, 3, "1", yellow, "user1"), //  New Orleans - Little Rock
      Route(.62, .73, .53, .75, 2, "1", yellow, "user1"), //  New Orleans - Houston
      Route(.62, .73, .75, .6,  4, "1", yellow, "user1"), //  New Orleans - Atlanta
      Route(.62, .73, .75, .6,  4, "1", yellow, "user1"), //  New Orleans - Atlanta
      Route(.62, .73, .84, .86, 6, "1", yellow, "user1"), //  New Orleans - Miami
      Route(.6, .47, .58, .58,  2, "1", yellow, "user1"), //  St Louis - Little Rock
      Route(.6, .47, .7, .55,   2, "1", yellow, "user1"), //  St Louis - Nashville
      Route(.6, .47, .8, .37,   5, "1", yellow, "user1"), //  St Louis - Pittsburgh
      Route(.6, .47, .67, .38,  2, "1", yellow, "user1"), //  St Louis - Chicago
      Route(.6, .47, .67, .38,  2, "1", yellow, "user1"), //  St Louis - Chicago
      Route(.7, .55, .58, .58,  3, "1", yellow, "user1"), //  Nashville - Little Rock
      Route(.7, .55, .75, .6,   1, "1", yellow, "user1"), //  Nashville - Atlanta
      Route(.7, .55, .83, .53,  3, "1", yellow, "user1"), //  Nashville - Raleigh
      Route(.7, .55, .8, .37,   4, "1", yellow, "user1"), //  Nashville - Pittsburgh
      Route(.8, .37, .67, .38,  3, "1", yellow, "user1"), //  Pittsburgh - Chicago
      Route(.8, .37, .67, .38,  3, "1", yellow, "user1"), //  Pittsburgh - Chicago
      Route(.8, .37, .83, .53,  2, "1", yellow, "user1"), //  Pittsburgh - Raleigh
      Route(.8, .37, .89, .42,  2, "1", yellow, "user1"), //  Pittsburgh - Washington
      Route(.8, .37, .89, .32,  2, "1", yellow, "user1"), //  Pittsburgh - New York
      Route(.8, .37, .89, .32,  2, "1", yellow, "user1"), //  Pittsburgh - New York
      Route(.8, .37, .79, .25,  2, "1", yellow, "user1"), //  Pittsburgh - Toronto
      Route(.75, .6, .84, .86,  5, "1", yellow, "user1"), //  Atlanta - Miami
      Route(.75, .6, .83, .63,  2, "1", yellow, "user1"), //  Atlanta - Charleston
      Route(.75, .6, .83, .53,  2, "1", yellow, "user1"), //  Atlanta - Raleigh
      Route(.75, .6, .83, .53,  2, "1", yellow, "user1"), //  Atlanta - Raleigh
      Route(.83, .63, .83, .53, 2, "1", yellow, "user1"), //  Charleston - Raleigh
      Route(.83, .63, .84, .86, 4, "1", yellow, "user1"), //  Charleston - Miami
      Route(.83, .53, .89, .42, 2, "1", yellow, "user1"), //  Releigh - Washington
      Route(.83, .53, .89, .42, 2, "1", yellow, "user1"), //  Releigh - Washington
      Route(.89, .32, .89, .42, 2, "1", yellow, "user1"), //  New York - Washington
      Route(.89, .32, .89, .42, 2, "1", yellow, "user1"), //  New York - Washington
      Route(.89, .32, .96, .25, 2, "1", yellow, "user1"), //  New York - Boston
      Route(.89, .32, .96, .25, 2, "1", yellow, "user1"), //  New York - Boston
      Route(.89, .32, .9, .12,  3, "1", yellow, "user1"), //  New York - Montréal
      Route(.9, .12, .96, .25,  2, "1", yellow, "user1"), //  Montréal - Boston
      Route(.9, .12, .96, .25,  2, "1", yellow, "user1"), //  Montréal - Boston
      Route(.9, .12, .79, .25,  3, "1", yellow, "user1"), //  Montréal - Toronto
      Route(.9, .12, .69, .2,   5, "1", yellow, "user1"), //  Montréal - Sault St. Marie
      Route(.79, .25, .69, .2,  2, "1", yellow, "user1"), //  Toronto - Sault St. Marie
      Route(.79, .25, .67, .38, 4, "1", yellow, "user1"), //  Toronto - Chicago


      Route(.08, .115, .3, .22, 6, "2", 0xFFfa2D41, "user1"), // seattle - helena
      Route(.52, .45, .6, .47,  2, "2", pink, "user1"), // kansas city - saint louis
      Route(.52, .45, .6, .47,  2, "2", blue, "user1"), // kansas city - saint louis

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
