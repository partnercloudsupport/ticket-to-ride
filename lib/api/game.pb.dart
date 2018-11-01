///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'game.pbenum.dart';

export 'game.pbenum.dart';

class Game extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Game', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameId')
    ..aOS(2, 'displayName')
    ..a<int>(3, 'maxPlayers', $pb.PbFieldType.O3)
    ..aOS(4, 'hostPlayerId')
    ..pPS(5, 'playerIds')
    ..hasRequiredFields = false
  ;

  Game() : super();
  Game.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Game.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Game clone() => new Game()..mergeFromMessage(this);
  Game copyWith(void Function(Game) updates) => super.copyWith((message) => updates(message as Game));
  $pb.BuilderInfo get info_ => _i;
  static Game create() => new Game();
  static $pb.PbList<Game> createRepeated() => new $pb.PbList<Game>();
  static Game getDefault() => _defaultInstance ??= create()..freeze();
  static Game _defaultInstance;
  static void $checkItem(Game v) {
    if (v is! Game) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);

  String get displayName => $_getS(1, '');
  set displayName(String v) { $_setString(1, v); }
  bool hasDisplayName() => $_has(1);
  void clearDisplayName() => clearField(2);

  int get maxPlayers => $_get(2, 0);
  set maxPlayers(int v) { $_setSignedInt32(2, v); }
  bool hasMaxPlayers() => $_has(2);
  void clearMaxPlayers() => clearField(3);

  String get hostPlayerId => $_getS(3, '');
  set hostPlayerId(String v) { $_setString(3, v); }
  bool hasHostPlayerId() => $_has(3);
  void clearHostPlayerId() => clearField(4);

  List<String> get playerIds => $_getList(4);
}

class CreateGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateGameRequest', package: const $pb.PackageName('game'))
    ..aOS(1, 'userId')
    ..aOS(2, 'displayName')
    ..a<int>(3, 'maxPlayers', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CreateGameRequest() : super();
  CreateGameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateGameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateGameRequest clone() => new CreateGameRequest()..mergeFromMessage(this);
  CreateGameRequest copyWith(void Function(CreateGameRequest) updates) => super.copyWith((message) => updates(message as CreateGameRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateGameRequest create() => new CreateGameRequest();
  static $pb.PbList<CreateGameRequest> createRepeated() => new $pb.PbList<CreateGameRequest>();
  static CreateGameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateGameRequest _defaultInstance;
  static void $checkItem(CreateGameRequest v) {
    if (v is! CreateGameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId => $_getS(0, '');
  set userId(String v) { $_setString(0, v); }
  bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  String get displayName => $_getS(1, '');
  set displayName(String v) { $_setString(1, v); }
  bool hasDisplayName() => $_has(1);
  void clearDisplayName() => clearField(2);

  int get maxPlayers => $_get(2, 0);
  set maxPlayers(int v) { $_setSignedInt32(2, v); }
  bool hasMaxPlayers() => $_has(2);
  void clearMaxPlayers() => clearField(3);
}

class LeaveGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LeaveGameRequest', package: const $pb.PackageName('game'))
    ..aOS(1, 'playerId')
    ..aOS(2, 'gameId')
    ..hasRequiredFields = false
  ;

  LeaveGameRequest() : super();
  LeaveGameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LeaveGameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LeaveGameRequest clone() => new LeaveGameRequest()..mergeFromMessage(this);
  LeaveGameRequest copyWith(void Function(LeaveGameRequest) updates) => super.copyWith((message) => updates(message as LeaveGameRequest));
  $pb.BuilderInfo get info_ => _i;
  static LeaveGameRequest create() => new LeaveGameRequest();
  static $pb.PbList<LeaveGameRequest> createRepeated() => new $pb.PbList<LeaveGameRequest>();
  static LeaveGameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static LeaveGameRequest _defaultInstance;
  static void $checkItem(LeaveGameRequest v) {
    if (v is! LeaveGameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get playerId => $_getS(0, '');
  set playerId(String v) { $_setString(0, v); }
  bool hasPlayerId() => $_has(0);
  void clearPlayerId() => clearField(1);

  String get gameId => $_getS(1, '');
  set gameId(String v) { $_setString(1, v); }
  bool hasGameId() => $_has(1);
  void clearGameId() => clearField(2);
}

class ListGamesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListGamesRequest', package: const $pb.PackageName('game'))
    ..hasRequiredFields = false
  ;

  ListGamesRequest() : super();
  ListGamesRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListGamesRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListGamesRequest clone() => new ListGamesRequest()..mergeFromMessage(this);
  ListGamesRequest copyWith(void Function(ListGamesRequest) updates) => super.copyWith((message) => updates(message as ListGamesRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListGamesRequest create() => new ListGamesRequest();
  static $pb.PbList<ListGamesRequest> createRepeated() => new $pb.PbList<ListGamesRequest>();
  static ListGamesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListGamesRequest _defaultInstance;
  static void $checkItem(ListGamesRequest v) {
    if (v is! ListGamesRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class GetGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetGameRequest', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameId')
    ..hasRequiredFields = false
  ;

  GetGameRequest() : super();
  GetGameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetGameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetGameRequest clone() => new GetGameRequest()..mergeFromMessage(this);
  GetGameRequest copyWith(void Function(GetGameRequest) updates) => super.copyWith((message) => updates(message as GetGameRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetGameRequest create() => new GetGameRequest();
  static $pb.PbList<GetGameRequest> createRepeated() => new $pb.PbList<GetGameRequest>();
  static GetGameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetGameRequest _defaultInstance;
  static void $checkItem(GetGameRequest v) {
    if (v is! GetGameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);
}

class StartGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StartGameRequest', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameId')
    ..hasRequiredFields = false
  ;

  StartGameRequest() : super();
  StartGameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StartGameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StartGameRequest clone() => new StartGameRequest()..mergeFromMessage(this);
  StartGameRequest copyWith(void Function(StartGameRequest) updates) => super.copyWith((message) => updates(message as StartGameRequest));
  $pb.BuilderInfo get info_ => _i;
  static StartGameRequest create() => new StartGameRequest();
  static $pb.PbList<StartGameRequest> createRepeated() => new $pb.PbList<StartGameRequest>();
  static StartGameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StartGameRequest _defaultInstance;
  static void $checkItem(StartGameRequest v) {
    if (v is! StartGameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);
}

class DeleteGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteGameRequest', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameId')
    ..hasRequiredFields = false
  ;

  DeleteGameRequest() : super();
  DeleteGameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteGameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteGameRequest clone() => new DeleteGameRequest()..mergeFromMessage(this);
  DeleteGameRequest copyWith(void Function(DeleteGameRequest) updates) => super.copyWith((message) => updates(message as DeleteGameRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteGameRequest create() => new DeleteGameRequest();
  static $pb.PbList<DeleteGameRequest> createRepeated() => new $pb.PbList<DeleteGameRequest>();
  static DeleteGameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteGameRequest _defaultInstance;
  static void $checkItem(DeleteGameRequest v) {
    if (v is! DeleteGameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);
}

class CreatePlayerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreatePlayerRequest', package: const $pb.PackageName('game'))
    ..aOS(1, 'userId')
    ..aOS(2, 'gameId')
    ..hasRequiredFields = false
  ;

  CreatePlayerRequest() : super();
  CreatePlayerRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreatePlayerRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreatePlayerRequest clone() => new CreatePlayerRequest()..mergeFromMessage(this);
  CreatePlayerRequest copyWith(void Function(CreatePlayerRequest) updates) => super.copyWith((message) => updates(message as CreatePlayerRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreatePlayerRequest create() => new CreatePlayerRequest();
  static $pb.PbList<CreatePlayerRequest> createRepeated() => new $pb.PbList<CreatePlayerRequest>();
  static CreatePlayerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreatePlayerRequest _defaultInstance;
  static void $checkItem(CreatePlayerRequest v) {
    if (v is! CreatePlayerRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId => $_getS(0, '');
  set userId(String v) { $_setString(0, v); }
  bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  String get gameId => $_getS(1, '');
  set gameId(String v) { $_setString(1, v); }
  bool hasGameId() => $_has(1);
  void clearGameId() => clearField(2);
}

class Player extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Player', package: const $pb.PackageName('game'))
    ..aOS(1, 'id')
    ..aOS(2, 'accountId')
    ..aOS(3, 'gameId')
    ..e<Player_Color>(4, 'color', $pb.PbFieldType.OE, Player_Color.UNKNOWN, Player_Color.valueOf, Player_Color.values)
    ..hasRequiredFields = false
  ;

  Player() : super();
  Player.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Player.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Player clone() => new Player()..mergeFromMessage(this);
  Player copyWith(void Function(Player) updates) => super.copyWith((message) => updates(message as Player));
  $pb.BuilderInfo get info_ => _i;
  static Player create() => new Player();
  static $pb.PbList<Player> createRepeated() => new $pb.PbList<Player>();
  static Player getDefault() => _defaultInstance ??= create()..freeze();
  static Player _defaultInstance;
  static void $checkItem(Player v) {
    if (v is! Player) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get accountId => $_getS(1, '');
  set accountId(String v) { $_setString(1, v); }
  bool hasAccountId() => $_has(1);
  void clearAccountId() => clearField(2);

  String get gameId => $_getS(2, '');
  set gameId(String v) { $_setString(2, v); }
  bool hasGameId() => $_has(2);
  void clearGameId() => clearField(3);

  Player_Color get color => $_getN(3);
  set color(Player_Color v) { setField(4, v); }
  bool hasColor() => $_has(3);
  void clearColor() => clearField(4);
}

class GetPlayerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetPlayerRequest', package: const $pb.PackageName('game'))
    ..aOS(1, 'playerId')
    ..hasRequiredFields = false
  ;

  GetPlayerRequest() : super();
  GetPlayerRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetPlayerRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetPlayerRequest clone() => new GetPlayerRequest()..mergeFromMessage(this);
  GetPlayerRequest copyWith(void Function(GetPlayerRequest) updates) => super.copyWith((message) => updates(message as GetPlayerRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetPlayerRequest create() => new GetPlayerRequest();
  static $pb.PbList<GetPlayerRequest> createRepeated() => new $pb.PbList<GetPlayerRequest>();
  static GetPlayerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetPlayerRequest _defaultInstance;
  static void $checkItem(GetPlayerRequest v) {
    if (v is! GetPlayerRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get playerId => $_getS(0, '');
  set playerId(String v) { $_setString(0, v); }
  bool hasPlayerId() => $_has(0);
  void clearPlayerId() => clearField(1);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Empty', package: const $pb.PackageName('game'))
    ..hasRequiredFields = false
  ;

  Empty() : super();
  Empty.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty clone() => new Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  static Empty create() => new Empty();
  static $pb.PbList<Empty> createRepeated() => new $pb.PbList<Empty>();
  static Empty getDefault() => _defaultInstance ??= create()..freeze();
  static Empty _defaultInstance;
  static void $checkItem(Empty v) {
    if (v is! Empty) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListGamesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListGamesResponse', package: const $pb.PackageName('game'))
    ..pp<Game>(1, 'games', $pb.PbFieldType.PM, Game.$checkItem, Game.create)
    ..hasRequiredFields = false
  ;

  ListGamesResponse() : super();
  ListGamesResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListGamesResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListGamesResponse clone() => new ListGamesResponse()..mergeFromMessage(this);
  ListGamesResponse copyWith(void Function(ListGamesResponse) updates) => super.copyWith((message) => updates(message as ListGamesResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListGamesResponse create() => new ListGamesResponse();
  static $pb.PbList<ListGamesResponse> createRepeated() => new $pb.PbList<ListGamesResponse>();
  static ListGamesResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListGamesResponse _defaultInstance;
  static void $checkItem(ListGamesResponse v) {
    if (v is! ListGamesResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Game> get games => $_getList(0);
}

class CreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateResponse', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameId')
    ..aOS(2, 'playerId')
    ..hasRequiredFields = false
  ;

  CreateResponse() : super();
  CreateResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateResponse clone() => new CreateResponse()..mergeFromMessage(this);
  CreateResponse copyWith(void Function(CreateResponse) updates) => super.copyWith((message) => updates(message as CreateResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateResponse create() => new CreateResponse();
  static $pb.PbList<CreateResponse> createRepeated() => new $pb.PbList<CreateResponse>();
  static CreateResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateResponse _defaultInstance;
  static void $checkItem(CreateResponse v) {
    if (v is! CreateResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);

  String get playerId => $_getS(1, '');
  set playerId(String v) { $_setString(1, v); }
  bool hasPlayerId() => $_has(1);
  void clearPlayerId() => clearField(2);
}

class DeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteResponse', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameName')
    ..p<int>(2, 'orphanedUsers', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  DeleteResponse() : super();
  DeleteResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteResponse clone() => new DeleteResponse()..mergeFromMessage(this);
  DeleteResponse copyWith(void Function(DeleteResponse) updates) => super.copyWith((message) => updates(message as DeleteResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteResponse create() => new DeleteResponse();
  static $pb.PbList<DeleteResponse> createRepeated() => new $pb.PbList<DeleteResponse>();
  static DeleteResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteResponse _defaultInstance;
  static void $checkItem(DeleteResponse v) {
    if (v is! DeleteResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameName => $_getS(0, '');
  set gameName(String v) { $_setString(0, v); }
  bool hasGameName() => $_has(0);
  void clearGameName() => clearField(1);

  List<int> get orphanedUsers => $_getList(1);
}

class CreatePlayerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreatePlayerResponse', package: const $pb.PackageName('game'))
    ..aOS(1, 'playerId')
    ..hasRequiredFields = false
  ;

  CreatePlayerResponse() : super();
  CreatePlayerResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreatePlayerResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreatePlayerResponse clone() => new CreatePlayerResponse()..mergeFromMessage(this);
  CreatePlayerResponse copyWith(void Function(CreatePlayerResponse) updates) => super.copyWith((message) => updates(message as CreatePlayerResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreatePlayerResponse create() => new CreatePlayerResponse();
  static $pb.PbList<CreatePlayerResponse> createRepeated() => new $pb.PbList<CreatePlayerResponse>();
  static CreatePlayerResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreatePlayerResponse _defaultInstance;
  static void $checkItem(CreatePlayerResponse v) {
    if (v is! CreatePlayerResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get playerId => $_getS(0, '');
  set playerId(String v) { $_setString(0, v); }
  bool hasPlayerId() => $_has(0);
  void clearPlayerId() => clearField(1);
}

class StreamPlayerStatsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StreamPlayerStatsRequest', package: const $pb.PackageName('game'))
    ..hasRequiredFields = false
  ;

  StreamPlayerStatsRequest() : super();
  StreamPlayerStatsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StreamPlayerStatsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StreamPlayerStatsRequest clone() => new StreamPlayerStatsRequest()..mergeFromMessage(this);
  StreamPlayerStatsRequest copyWith(void Function(StreamPlayerStatsRequest) updates) => super.copyWith((message) => updates(message as StreamPlayerStatsRequest));
  $pb.BuilderInfo get info_ => _i;
  static StreamPlayerStatsRequest create() => new StreamPlayerStatsRequest();
  static $pb.PbList<StreamPlayerStatsRequest> createRepeated() => new $pb.PbList<StreamPlayerStatsRequest>();
  static StreamPlayerStatsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StreamPlayerStatsRequest _defaultInstance;
  static void $checkItem(StreamPlayerStatsRequest v) {
    if (v is! StreamPlayerStatsRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class PlayerStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PlayerStats', package: const $pb.PackageName('game'))
    ..aOS(1, 'playerId')
    ..a<int>(2, 'points', $pb.PbFieldType.O3)
    ..a<int>(3, 'trainCount', $pb.PbFieldType.O3)
    ..a<int>(4, 'trainCardCount', $pb.PbFieldType.O3)
    ..a<int>(5, 'destinationCardCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PlayerStats() : super();
  PlayerStats.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PlayerStats.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PlayerStats clone() => new PlayerStats()..mergeFromMessage(this);
  PlayerStats copyWith(void Function(PlayerStats) updates) => super.copyWith((message) => updates(message as PlayerStats));
  $pb.BuilderInfo get info_ => _i;
  static PlayerStats create() => new PlayerStats();
  static $pb.PbList<PlayerStats> createRepeated() => new $pb.PbList<PlayerStats>();
  static PlayerStats getDefault() => _defaultInstance ??= create()..freeze();
  static PlayerStats _defaultInstance;
  static void $checkItem(PlayerStats v) {
    if (v is! PlayerStats) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get playerId => $_getS(0, '');
  set playerId(String v) { $_setString(0, v); }
  bool hasPlayerId() => $_has(0);
  void clearPlayerId() => clearField(1);

  int get points => $_get(1, 0);
  set points(int v) { $_setSignedInt32(1, v); }
  bool hasPoints() => $_has(1);
  void clearPoints() => clearField(2);

  int get trainCount => $_get(2, 0);
  set trainCount(int v) { $_setSignedInt32(2, v); }
  bool hasTrainCount() => $_has(2);
  void clearTrainCount() => clearField(3);

  int get trainCardCount => $_get(3, 0);
  set trainCardCount(int v) { $_setSignedInt32(3, v); }
  bool hasTrainCardCount() => $_has(3);
  void clearTrainCardCount() => clearField(4);

  int get destinationCardCount => $_get(4, 0);
  set destinationCardCount(int v) { $_setSignedInt32(4, v); }
  bool hasDestinationCardCount() => $_has(4);
  void clearDestinationCardCount() => clearField(5);
}

class GameServiceApi {
  $pb.RpcClient _client;
  GameServiceApi(this._client);

  $async.Future<CreateResponse> createGame($pb.ClientContext ctx, CreateGameRequest request) {
    var emptyResponse = new CreateResponse();
    return _client.invoke<CreateResponse>(ctx, 'GameService', 'CreateGame', request, emptyResponse);
  }
  $async.Future<Empty> leaveGame($pb.ClientContext ctx, LeaveGameRequest request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'GameService', 'LeaveGame', request, emptyResponse);
  }
  $async.Future<Empty> deleteGame($pb.ClientContext ctx, DeleteGameRequest request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'GameService', 'DeleteGame', request, emptyResponse);
  }
  $async.Future<Game> getGame($pb.ClientContext ctx, GetGameRequest request) {
    var emptyResponse = new Game();
    return _client.invoke<Game>(ctx, 'GameService', 'GetGame', request, emptyResponse);
  }
  $async.Future<Game> startGame($pb.ClientContext ctx, StartGameRequest request) {
    var emptyResponse = new Game();
    return _client.invoke<Game>(ctx, 'GameService', 'StartGame', request, emptyResponse);
  }
  $async.Future<ListGamesResponse> listGames($pb.ClientContext ctx, ListGamesRequest request) {
    var emptyResponse = new ListGamesResponse();
    return _client.invoke<ListGamesResponse>(ctx, 'GameService', 'ListGames', request, emptyResponse);
  }
  $async.Future<CreatePlayerResponse> createPlayer($pb.ClientContext ctx, CreatePlayerRequest request) {
    var emptyResponse = new CreatePlayerResponse();
    return _client.invoke<CreatePlayerResponse>(ctx, 'GameService', 'CreatePlayer', request, emptyResponse);
  }
  $async.Future<Player> getPlayer($pb.ClientContext ctx, GetPlayerRequest request) {
    var emptyResponse = new Player();
    return _client.invoke<Player>(ctx, 'GameService', 'GetPlayer', request, emptyResponse);
  }
  $async.Future<PlayerStats> streamPlayerStats($pb.ClientContext ctx, StreamPlayerStatsRequest request) {
    var emptyResponse = new PlayerStats();
    return _client.invoke<PlayerStats>(ctx, 'GameService', 'StreamPlayerStats', request, emptyResponse);
  }
  $async.Future<Empty> togglePlayerStats($pb.ClientContext ctx, Empty request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'GameService', 'TogglePlayerStats', request, emptyResponse);
  }
}

