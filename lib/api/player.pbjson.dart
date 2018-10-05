///
//  Generated code. Do not modify.
//  source: api/player.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Player$json = const {
  '1': 'Player',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'game_id', '3': 3, '4': 1, '5': 9, '10': 'gameId'},
  ],
  '4': const [Player_color$json],
};

const Player_color$json = const {
  '1': 'color',
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

const CreatePlayerRequest$json = const {
  '1': 'CreatePlayerRequest',
};

const UpdatePlayerRequest$json = const {
  '1': 'UpdatePlayerRequest',
};

const DeletePlayerRequest$json = const {
  '1': 'DeletePlayerRequest',
};

const GetPlayerRequest$json = const {
  '1': 'GetPlayerRequest',
};

const ListPlayersRequest$json = const {
  '1': 'ListPlayersRequest',
};

const ListPlayersResponse$json = const {
  '1': 'ListPlayersResponse',
};

const Empty$json = const {
  '1': 'Empty',
};

const PlayerService$json = const {
  '1': 'PlayerService',
  '2': const [
    const {'1': 'CreatePlayer', '2': '.auth.CreatePlayerRequest', '3': '.auth.Player'},
    const {'1': 'DeletePlayer', '2': '.auth.DeletePlayerRequest', '3': '.auth.Empty'},
    const {'1': 'GetPlayer', '2': '.auth.GetPlayerRequest', '3': '.auth.Player'},
    const {'1': 'ListPlayers', '2': '.auth.ListPlayersRequest', '3': '.auth.ListPlayersResponse'},
  ],
};

const PlayerService$messageJson = const {
  '.auth.CreatePlayerRequest': CreatePlayerRequest$json,
  '.auth.Player': Player$json,
  '.auth.DeletePlayerRequest': DeletePlayerRequest$json,
  '.auth.Empty': Empty$json,
  '.auth.GetPlayerRequest': GetPlayerRequest$json,
  '.auth.ListPlayersRequest': ListPlayersRequest$json,
  '.auth.ListPlayersResponse': ListPlayersResponse$json,
};

