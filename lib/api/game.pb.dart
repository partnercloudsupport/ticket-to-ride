///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

class Game extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Game', package: const $pb.PackageName('game'))
    ..a<int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'displayName')
    ..a<int>(3, 'maxUsers', $pb.PbFieldType.O3)
    ..a<int>(4, 'hostUserId', $pb.PbFieldType.O3)
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

  int get id => $_get(0, 0);
  set id(int v) { $_setSignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get displayName => $_getS(1, '');
  set displayName(String v) { $_setString(1, v); }
  bool hasDisplayName() => $_has(1);
  void clearDisplayName() => clearField(2);

  int get maxUsers => $_get(2, 0);
  set maxUsers(int v) { $_setSignedInt32(2, v); }
  bool hasMaxUsers() => $_has(2);
  void clearMaxUsers() => clearField(3);

  int get hostUserId => $_get(3, 0);
  set hostUserId(int v) { $_setSignedInt32(3, v); }
  bool hasHostUserId() => $_has(3);
  void clearHostUserId() => clearField(4);
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

class GameServiceApi {
  $pb.RpcClient _client;
  GameServiceApi(this._client);

  Future<Game> createGame($pb.ClientContext ctx, CreateGameRequest request) {
    var emptyResponse = new Game();
    return _client.invoke<Game>(ctx, 'GameService', 'CreateGame', request, emptyResponse);
  }
  Future<Game> updateGame($pb.ClientContext ctx, UpdateGameRequest request) {
    var emptyResponse = new Game();
    return _client.invoke<Game>(ctx, 'GameService', 'UpdateGame', request, emptyResponse);
  }
  Future<Empty> deleteGame($pb.ClientContext ctx, DeleteGameRequest request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'GameService', 'DeleteGame', request, emptyResponse);
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

