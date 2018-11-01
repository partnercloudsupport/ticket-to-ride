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
    const {'1': 'host_player_id', '3': 4, '4': 1, '5': 9, '10': 'hostPlayerId'},
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

const CreateGameRequest$json = const {
  '1': 'CreateGameRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'maxPlayers', '3': 3, '4': 1, '5': 5, '10': 'maxPlayers'},
  ],
};

const LeaveGameRequest$json = const {
  '1': 'LeaveGameRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'game_id', '3': 2, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const ListGamesRequest$json = const {
  '1': 'ListGamesRequest',
};

const GetGameRequest$json = const {
  '1': 'GetGameRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const StartGameRequest$json = const {
  '1': 'StartGameRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const DeleteGameRequest$json = const {
  '1': 'DeleteGameRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const CreatePlayerRequest$json = const {
  '1': 'CreatePlayerRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'game_id', '3': 2, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'game_id', '3': 3, '4': 1, '5': 9, '10': 'gameId'},
    const {'1': 'color', '3': 4, '4': 1, '5': 14, '6': '.game.Player.Color', '10': 'color'},
  ],
  '4': const [Player_Color$json],
};

const Player_Color$json = const {
  '1': 'Color',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'RED', '2': 1},
    const {'1': 'BLUE', '2': 2},
    const {'1': 'GREEN', '2': 3},
    const {'1': 'YELLOW', '2': 4},
    const {'1': 'PURPLE', '2': 5},
    const {'1': 'ORANGE', '2': 6},
  ],
};

const GetPlayerRequest$json = const {
  '1': 'GetPlayerRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const ListGamesResponse$json = const {
  '1': 'ListGamesResponse',
  '2': const [
    const {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.game.Game', '10': 'games'},
  ],
};

const CreateResponse$json = const {
  '1': 'CreateResponse',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    const {'1': 'player_id', '3': 2, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const DeleteResponse$json = const {
  '1': 'DeleteResponse',
  '2': const [
    const {'1': 'game_name', '3': 1, '4': 1, '5': 9, '10': 'gameName'},
    const {'1': 'orphaned_users', '3': 2, '4': 3, '5': 5, '10': 'orphanedUsers'},
  ],
};

const CreatePlayerResponse$json = const {
  '1': 'CreatePlayerResponse',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const StreamPlayerStatsRequest$json = const {
  '1': 'StreamPlayerStatsRequest',
};

const PlayerStats$json = const {
  '1': 'PlayerStats',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'points', '3': 2, '4': 1, '5': 5, '10': 'points'},
    const {'1': 'train_count', '3': 3, '4': 1, '5': 5, '10': 'trainCount'},
    const {'1': 'train_card_count', '3': 4, '4': 1, '5': 5, '10': 'trainCardCount'},
    const {'1': 'destination_card_count', '3': 5, '4': 1, '5': 5, '10': 'destinationCardCount'},
  ],
};

const GameService$json = const {
  '1': 'GameService',
  '2': const [
    const {'1': 'CreateGame', '2': '.game.CreateGameRequest', '3': '.game.CreateResponse'},
    const {'1': 'LeaveGame', '2': '.game.LeaveGameRequest', '3': '.game.Empty'},
    const {'1': 'DeleteGame', '2': '.game.DeleteGameRequest', '3': '.game.Empty'},
    const {'1': 'GetGame', '2': '.game.GetGameRequest', '3': '.game.Game'},
    const {'1': 'StartGame', '2': '.game.StartGameRequest', '3': '.game.Game'},
    const {'1': 'ListGames', '2': '.game.ListGamesRequest', '3': '.game.ListGamesResponse'},
    const {'1': 'CreatePlayer', '2': '.game.CreatePlayerRequest', '3': '.game.CreatePlayerResponse'},
    const {'1': 'GetPlayer', '2': '.game.GetPlayerRequest', '3': '.game.Player'},
    const {'1': 'StreamPlayerStats', '2': '.game.StreamPlayerStatsRequest', '3': '.game.PlayerStats'},
    const {'1': 'TogglePlayerStats', '2': '.game.Empty', '3': '.game.Empty'},
  ],
};

const GameService$messageJson = const {
  '.game.CreateGameRequest': CreateGameRequest$json,
  '.game.CreateResponse': CreateResponse$json,
  '.game.LeaveGameRequest': LeaveGameRequest$json,
  '.game.Empty': Empty$json,
  '.game.DeleteGameRequest': DeleteGameRequest$json,
  '.game.GetGameRequest': GetGameRequest$json,
  '.game.Game': Game$json,
  '.game.StartGameRequest': StartGameRequest$json,
  '.game.ListGamesRequest': ListGamesRequest$json,
  '.game.ListGamesResponse': ListGamesResponse$json,
  '.game.CreatePlayerRequest': CreatePlayerRequest$json,
  '.game.CreatePlayerResponse': CreatePlayerResponse$json,
  '.game.GetPlayerRequest': GetPlayerRequest$json,
  '.game.Player': Player$json,
  '.game.StreamPlayerStatsRequest': StreamPlayerStatsRequest$json,
  '.game.PlayerStats': PlayerStats$json,
};

