///
//  Generated code. Do not modify.
//  source: route.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Route$json = const {
  '1': 'Route',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'first_city_id', '3': 2, '4': 1, '5': 9, '10': 'firstCityId'},
    const {'1': 'second_city_id', '3': 3, '4': 1, '5': 9, '10': 'secondCityId'},
    const {'1': 'color', '3': 4, '4': 1, '5': 14, '6': '.card.TrainColor', '10': 'color'},
    const {'1': 'player_id', '3': 5, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'length', '3': 6, '4': 1, '5': 5, '10': 'length'},
    const {'1': 'game_id', '3': 7, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const StreamRoutesRequest$json = const {
  '1': 'StreamRoutesRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const ClaimRouteRequest$json = const {
  '1': 'ClaimRouteRequest',
  '2': const [
    const {'1': 'route_id', '3': 1, '4': 1, '5': 9, '10': 'routeId'},
    const {'1': 'player_id', '3': 2, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const ClaimRouteResponse$json = const {
  '1': 'ClaimRouteResponse',
};

const RouteService$json = const {
  '1': 'RouteService',
  '2': const [
    const {'1': 'ClaimRoute', '2': '.route.ClaimRouteRequest', '3': '.route.ClaimRouteResponse'},
    const {'1': 'StreamRoutes', '2': '.route.StreamRoutesRequest', '3': '.route.Route', '6': true},
  ],
};

const RouteService$messageJson = const {
  '.route.ClaimRouteRequest': ClaimRouteRequest$json,
  '.route.ClaimRouteResponse': ClaimRouteResponse$json,
  '.route.StreamRoutesRequest': StreamRoutesRequest$json,
  '.route.Route': Route$json,
};

