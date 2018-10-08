///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'player.pb.dart';

export 'game.pbenum.dart';

class Game extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Game', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameId')
    ..aOS(2, 'displayName')
    ..a<int>(3, 'maxPlayers', $pb.PbFieldType.O3)
    ..aOS(4, 'hostUserId')
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

  String get hostUserId => $_getS(3, '');
  set hostUserId(String v) { $_setString(3, v); }
  bool hasHostUserId() => $_has(3);
  void clearHostUserId() => clearField(4);

  List<String> get playerIds => $_getList(4);
}

// allison edited this for temp fix to use in game_selection_page (player.proto not yet finished)
class CreatePlayerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreatePlayerRequest', package: const $pb.PackageName('auth'))
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


class JoinGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('JoinGameRequest', package: const $pb.PackageName('game'))
    ..hasRequiredFields = false
  ;

  JoinGameRequest() : super();
  JoinGameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JoinGameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JoinGameRequest clone() => new JoinGameRequest()..mergeFromMessage(this);
  JoinGameRequest copyWith(void Function(JoinGameRequest) updates) => super.copyWith((message) => updates(message as JoinGameRequest));
  $pb.BuilderInfo get info_ => _i;
  static JoinGameRequest create() => new JoinGameRequest();
  static $pb.PbList<JoinGameRequest> createRepeated() => new $pb.PbList<JoinGameRequest>();
  static JoinGameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static JoinGameRequest _defaultInstance;
  static void $checkItem(JoinGameRequest v) {
    if (v is! JoinGameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class LeaveGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LeaveGameRequest', package: const $pb.PackageName('game'))
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
}

class JoinGameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('JoinGameResponse', package: const $pb.PackageName('game'))
    ..hasRequiredFields = false
  ;

  JoinGameResponse() : super();
  JoinGameResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JoinGameResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JoinGameResponse clone() => new JoinGameResponse()..mergeFromMessage(this);
  JoinGameResponse copyWith(void Function(JoinGameResponse) updates) => super.copyWith((message) => updates(message as JoinGameResponse));
  $pb.BuilderInfo get info_ => _i;
  static JoinGameResponse create() => new JoinGameResponse();
  static $pb.PbList<JoinGameResponse> createRepeated() => new $pb.PbList<JoinGameResponse>();
  static JoinGameResponse getDefault() => _defaultInstance ??= create()..freeze();
  static JoinGameResponse _defaultInstance;
  static void $checkItem(JoinGameResponse v) {
    if (v is! JoinGameResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class CreateGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateGameRequest', package: const $pb.PackageName('game'))
    ..a<Game>(1, 'game', $pb.PbFieldType.OM, Game.getDefault, Game.create)
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

  Game get game => $_getN(0);
  set game(Game v) { setField(1, v); }
  bool hasGame() => $_has(0);
  void clearGame() => clearField(1);
}

class UpdateGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateGameRequest', package: const $pb.PackageName('game'))
    ..a<Game>(1, 'game', $pb.PbFieldType.OM, Game.getDefault, Game.create)
    ..hasRequiredFields = false
  ;

  UpdateGameRequest() : super();
  UpdateGameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateGameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateGameRequest clone() => new UpdateGameRequest()..mergeFromMessage(this);
  UpdateGameRequest copyWith(void Function(UpdateGameRequest) updates) => super.copyWith((message) => updates(message as UpdateGameRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateGameRequest create() => new UpdateGameRequest();
  static $pb.PbList<UpdateGameRequest> createRepeated() => new $pb.PbList<UpdateGameRequest>();
  static UpdateGameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateGameRequest _defaultInstance;
  static void $checkItem(UpdateGameRequest v) {
    if (v is! UpdateGameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Game get game => $_getN(0);
  set game(Game v) { setField(1, v); }
  bool hasGame() => $_has(0);
  void clearGame() => clearField(1);
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

class CreateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateResponse', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameName')
    ..a<int>(2, 'totalPlayers', $pb.PbFieldType.O3)
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

  String get gameName => $_getS(0, '');
  set gameName(String v) { $_setString(0, v); }
  bool hasGameName() => $_has(0);
  void clearGameName() => clearField(1);

  int get totalPlayers => $_get(1, 0);
  set totalPlayers(int v) { $_setSignedInt32(1, v); }
  bool hasTotalPlayers() => $_has(1);
  void clearTotalPlayers() => clearField(2);
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

class JoinResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('JoinResponse', package: const $pb.PackageName('game'))
    ..aOS(1, 'gameName')
    ..a<int>(2, 'totalPlayers', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  JoinResponse() : super();
  JoinResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  JoinResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  JoinResponse clone() => new JoinResponse()..mergeFromMessage(this);
  JoinResponse copyWith(void Function(JoinResponse) updates) => super.copyWith((message) => updates(message as JoinResponse));
  $pb.BuilderInfo get info_ => _i;
  static JoinResponse create() => new JoinResponse();
  static $pb.PbList<JoinResponse> createRepeated() => new $pb.PbList<JoinResponse>();
  static JoinResponse getDefault() => _defaultInstance ??= create()..freeze();
  static JoinResponse _defaultInstance;
  static void $checkItem(JoinResponse v) {
    if (v is! JoinResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameName => $_getS(0, '');
  set gameName(String v) { $_setString(0, v); }
  bool hasGameName() => $_has(0);
  void clearGameName() => clearField(1);

  int get totalPlayers => $_get(1, 0);
  set totalPlayers(int v) { $_setSignedInt32(1, v); }
  bool hasTotalPlayers() => $_has(1);
  void clearTotalPlayers() => clearField(2);
}

class GameServiceApi {
  $pb.RpcClient _client;
  GameServiceApi(this._client);

  Future<CreateResponse> createGame($pb.ClientContext ctx, CreateGameRequest request) {
    var emptyResponse = new CreateResponse();
    return _client.invoke<CreateResponse>(ctx, 'GameService', 'CreateGame', request, emptyResponse);
  }
  Future<JoinGameResponse> joinGame($pb.ClientContext ctx, JoinGameRequest request) {
    var emptyResponse = new JoinGameResponse();
    return _client.invoke<JoinGameResponse>(ctx, 'GameService', 'JoinGame', request, emptyResponse);
  }
  Future<Empty> leaveGame($pb.ClientContext ctx, LeaveGameRequest request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'GameService', 'LeaveGame', request, emptyResponse);
  }
  Future<Empty> deleteGame($pb.ClientContext ctx, DeleteGameRequest request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'GameService', 'DeleteGame', request, emptyResponse);
  }
  // allison edited this for temp fix to use in game_selection_page (game.proto not yet finished)
  Future<Player> createPlayer($pb.ClientContext ctx, CreatePlayerRequest request) {
    var emptyResponse = new Player();
    return _client.invoke<Player>(ctx, 'GameService', 'CreateGame', request, emptyResponse);

  }
  Future<Game> getGame($pb.ClientContext ctx, GetGameRequest request) {
    var emptyResponse = new Game();
    return _client.invoke<Game>(ctx, 'GameService', 'GetGame', request, emptyResponse);
  }
  Future<ListGamesResponse> listGames($pb.ClientContext ctx, ListGamesRequest request) {
    var emptyResponse = new ListGamesResponse();
    return _client.invoke<ListGamesResponse>(ctx, 'GameService', 'ListGames', request, emptyResponse);
  }
}