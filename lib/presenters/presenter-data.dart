import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/fragments/game_map_fragment.dart';
import 'package:ticket_to_ride/global_context.dart';

getTrainColor(color) {
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
  case api.TrainColor.RAINBOW:
    return 0xFFA000FF;
  case api.TrainColor.YELLOW:
    return 0xFFD9B755;
  case api.TrainColor.RED:
    return 0xFFD74141;
  case api.TrainColor.WHITE:
    return 0xFFECECEC;
  }
}

getPlayerColor(colorCode) {
  switch(colorCode) {
    case api.Player_Color.RED:
      return 'red';
    case api.Player_Color.BLUE:
      return 'blue';
    case api.Player_Color.GREEN:
      return 'green';
    case api.Player_Color.PURPLE:
      return 'purple';
    case api.Player_Color.ORANGE:
      return 'orange';
    case api.Player_Color.YELLOW:
      return 'yellow';
  }
}

getPlayerColorInt(colorCode) {
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

@override
getCities() {
  return [
    City("Los Angeles", .07, .6),
    City("New York", .89, .32),
    City("Duluth", .57, .28),
    City("Houston", .53, .75),
    City("Sault St. Marie", .69, .2),
    City("Nashville", .7, .55),
    City("Atlanta", .75, .6),
    City("Portland", .04, .17),
    City("Vancouver", .07, .05),
    City("Calgary", .2, .04),
    City("Winnipeg", .47, .1),
    City("Montreal", .9, .12),
    City("Boston", .96, .25),
    City("Toronto", .79, .25),
    City("Helena", .3, .22),
    City("Seattle", .08, .115),
    City("Pittsburgh", .8, .37),
    City("Washington", .89, .42),
    City("Raleigh", .83, .53),
    City("Saint Louis", .6, .47),
    City("Omaha", .5, .37),
    City("Kansas City", .52, .45),
    City("Little Rock", .58, .58),
    City("Charleston", .83, .63),
    City("Miami", .84, .86),
    City("New Orleans", .62, .73),
    City("Dallas", .47, .69),
    City("El Paso", .315, .69),
    City("Santa Fe", .3, .55),
    City("Phoenix", .19, .60),
    City("Las Vegas", .13, .52),
    City("San Francisco", .005, .45),
    City("Salt Lake City", .22, .40),
    City("Oklahoma City", .48, .56),
    City("Denver", .33, .44),
    City("Chicago", .67, .38),
  ];
}

getCityById(cityId) {
  var cities = getCities();
  var returnCity;

  for(var city in cities) {
    if(city.name == cityId) {
      returnCity = city;
    }
  }

  return returnCity;
}

getRoutes(routes) {
  var newRoutes = [];
  routes.forEach((index, route) {
    var city1 = getCityById(route.firstCityId);
    var city2 = getCityById(route.secondCityId);
    print(route);
    var color = route.playerId == '' ? -1 : getPlayerColorInt(GlobalContext().playerMap[route.playerId].color);

    newRoutes.add(ClientRoute(
      city1.coordinateX,
      city1.coordinateY,
      city2.coordinateX,
      city2.coordinateY,
      route.length,
      route.id,
      getTrainColor(route.color),
      color
    ));
  });

  return newRoutes;
}
