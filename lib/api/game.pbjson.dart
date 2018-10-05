///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Game$json = const {
  '1': 'Game',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'max_users', '3': 3, '4': 1, '5': 5, '10': 'maxUsers'},
    const {'1': 'host_user_id', '3': 4, '4': 1, '5': 5, '10': 'hostUserId'},
  ],
};

const CreateGameRequest$json = const {
  '1': 'CreateGameRequest',
  '2': const [
    const {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.game.Game', '10': 'game'},
  ],
};

const UpdateGameRequest$json = const {
  '1': 'UpdateGameRequest',
  '2': const [
    const {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.game.Game', '10': 'game'},
  ],
};

const DeleteGameRequest$json = const {
  '1': 'DeleteGameRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const GetGameRequest$json = const {
  '1': 'GetGameRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const ListGamesRequest$json = const {
  '1': 'ListGamesRequest',
};

const ListGamesResponse$json = const {
  '1': 'ListGamesResponse',
  '2': const [
    const {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.game.Game', '10': 'games'},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const GameService$json = const {
  '1': 'GameService',
  '2': const [
    const {'1': 'CreateGame', '2': '.game.CreateGameRequest', '3': '.game.Game'},
    const {'1': 'UpdateGame', '2': '.game.UpdateGameRequest', '3': '.game.Game'},
    const {'1': 'DeleteGame', '2': '.game.DeleteGameRequest', '3': '.game.Empty'},
    const {'1': 'GetGame', '2': '.game.GetGameRequest', '3': '.game.Game'},
    const {'1': 'ListGames', '2': '.game.ListGamesRequest', '3': '.game.ListGamesResponse'},
  ],
};

const GameService$messageJson = const {
  '.game.CreateGameRequest': CreateGameRequest$json,
  '.game.Game': Game$json,
  '.game.UpdateGameRequest': UpdateGameRequest$json,
  '.game.DeleteGameRequest': DeleteGameRequest$json,
  '.game.Empty': Empty$json,
  '.game.GetGameRequest': GetGameRequest$json,
  '.game.ListGamesRequest': ListGamesRequest$json,
  '.game.ListGamesResponse': ListGamesResponse$json,
};

