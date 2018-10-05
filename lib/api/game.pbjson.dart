///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Game$json = const {
  '1': 'Game',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    const {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'max_players', '3': 3, '4': 1, '5': 5, '10': 'maxPlayers'},
    const {'1': 'host_user_id', '3': 4, '4': 1, '5': 9, '10': 'hostUserId'},
    const {'1': 'player_ids', '3': 5, '4': 3, '5': 9, '10': 'playerIds'},
  ],
  '4': const [Game_status$json],
};

const Game_status$json = const {
  '1': 'status',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'PRE', '2': 1},
    const {'1': 'STARTED', '2': 2},
    const {'1': 'FINISHED', '2': 3},
  ],
};

const JoinGameRequest$json = const {
  '1': 'JoinGameRequest',
};

const LeaveGameRequest$json = const {
  '1': 'LeaveGameRequest',
};

const JoinGameResponse$json = const {
  '1': 'JoinGameResponse',
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

const CreateResponse$json = const {
  '1': 'CreateResponse',
  '2': const [
    const {'1': 'game_name', '3': 1, '4': 1, '5': 9, '10': 'gameName'},
    const {'1': 'total_players', '3': 2, '4': 1, '5': 5, '10': 'totalPlayers'},
  ],
};

const DeleteResponse$json = const {
  '1': 'DeleteResponse',
  '2': const [
    const {'1': 'game_name', '3': 1, '4': 1, '5': 9, '10': 'gameName'},
    const {'1': 'orphaned_users', '3': 2, '4': 3, '5': 5, '10': 'orphanedUsers'},
  ],
};

const JoinResponse$json = const {
  '1': 'JoinResponse',
  '2': const [
    const {'1': 'game_name', '3': 1, '4': 1, '5': 9, '10': 'gameName'},
    const {'1': 'total_players', '3': 2, '4': 1, '5': 5, '10': 'totalPlayers'},
  ],
};

const GameService$json = const {
  '1': 'GameService',
  '2': const [
    const {'1': 'CreateGame', '2': '.game.CreateGameRequest', '3': '.game.CreateResponse'},
    const {'1': 'JoinGame', '2': '.game.JoinGameRequest', '3': '.game.JoinGameResponse'},
    const {'1': 'LeaveGame', '2': '.game.LeaveGameRequest', '3': '.game.Empty'},
    const {'1': 'DeleteGame', '2': '.game.DeleteGameRequest', '3': '.game.Empty'},
    const {'1': 'GetGame', '2': '.game.GetGameRequest', '3': '.game.Game'},
    const {'1': 'ListGames', '2': '.game.ListGamesRequest', '3': '.game.ListGamesResponse'},
  ],
};

const GameService$messageJson = const {
  '.game.CreateGameRequest': CreateGameRequest$json,
  '.game.Game': Game$json,
  '.game.CreateResponse': CreateResponse$json,
  '.game.JoinGameRequest': JoinGameRequest$json,
  '.game.JoinGameResponse': JoinGameResponse$json,
  '.game.LeaveGameRequest': LeaveGameRequest$json,
  '.game.Empty': Empty$json,
  '.game.DeleteGameRequest': DeleteGameRequest$json,
  '.game.GetGameRequest': GetGameRequest$json,
  '.game.ListGamesRequest': ListGamesRequest$json,
  '.game.ListGamesResponse': ListGamesResponse$json,
};

