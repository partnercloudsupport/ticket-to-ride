///
//  Generated code. Do not modify.
//  source: api/player.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

export 'player.pbenum.dart';

class Player extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Player', package: const $pb.PackageName('auth'))
    ..aOS(1, 'id')
    ..aOS(2, 'accountId')
    ..aOS(3, 'gameId')
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
}

class CreatePlayerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreatePlayerRequest', package: const $pb.PackageName('auth'))
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
}

class UpdatePlayerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdatePlayerRequest', package: const $pb.PackageName('auth'))
    ..hasRequiredFields = false
  ;

  UpdatePlayerRequest() : super();
  UpdatePlayerRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdatePlayerRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdatePlayerRequest clone() => new UpdatePlayerRequest()..mergeFromMessage(this);
  UpdatePlayerRequest copyWith(void Function(UpdatePlayerRequest) updates) => super.copyWith((message) => updates(message as UpdatePlayerRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdatePlayerRequest create() => new UpdatePlayerRequest();
  static $pb.PbList<UpdatePlayerRequest> createRepeated() => new $pb.PbList<UpdatePlayerRequest>();
  static UpdatePlayerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdatePlayerRequest _defaultInstance;
  static void $checkItem(UpdatePlayerRequest v) {
    if (v is! UpdatePlayerRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class DeletePlayerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeletePlayerRequest', package: const $pb.PackageName('auth'))
    ..hasRequiredFields = false
  ;

  DeletePlayerRequest() : super();
  DeletePlayerRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeletePlayerRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeletePlayerRequest clone() => new DeletePlayerRequest()..mergeFromMessage(this);
  DeletePlayerRequest copyWith(void Function(DeletePlayerRequest) updates) => super.copyWith((message) => updates(message as DeletePlayerRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeletePlayerRequest create() => new DeletePlayerRequest();
  static $pb.PbList<DeletePlayerRequest> createRepeated() => new $pb.PbList<DeletePlayerRequest>();
  static DeletePlayerRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeletePlayerRequest _defaultInstance;
  static void $checkItem(DeletePlayerRequest v) {
    if (v is! DeletePlayerRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class GetPlayerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetPlayerRequest', package: const $pb.PackageName('auth'))
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
}

class ListPlayersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListPlayersRequest', package: const $pb.PackageName('auth'))
    ..hasRequiredFields = false
  ;

  ListPlayersRequest() : super();
  ListPlayersRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListPlayersRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListPlayersRequest clone() => new ListPlayersRequest()..mergeFromMessage(this);
  ListPlayersRequest copyWith(void Function(ListPlayersRequest) updates) => super.copyWith((message) => updates(message as ListPlayersRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListPlayersRequest create() => new ListPlayersRequest();
  static $pb.PbList<ListPlayersRequest> createRepeated() => new $pb.PbList<ListPlayersRequest>();
  static ListPlayersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListPlayersRequest _defaultInstance;
  static void $checkItem(ListPlayersRequest v) {
    if (v is! ListPlayersRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListPlayersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListPlayersResponse', package: const $pb.PackageName('auth'))
    ..hasRequiredFields = false
  ;

  ListPlayersResponse() : super();
  ListPlayersResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListPlayersResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListPlayersResponse clone() => new ListPlayersResponse()..mergeFromMessage(this);
  ListPlayersResponse copyWith(void Function(ListPlayersResponse) updates) => super.copyWith((message) => updates(message as ListPlayersResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListPlayersResponse create() => new ListPlayersResponse();
  static $pb.PbList<ListPlayersResponse> createRepeated() => new $pb.PbList<ListPlayersResponse>();
  static ListPlayersResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListPlayersResponse _defaultInstance;
  static void $checkItem(ListPlayersResponse v) {
    if (v is! ListPlayersResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Empty', package: const $pb.PackageName('auth'))
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

class PlayerServiceApi {
  $pb.RpcClient _client;
  PlayerServiceApi(this._client);

  Future<Player> createPlayer($pb.ClientContext ctx, CreatePlayerRequest request) {
    var emptyResponse = new Player();
    return _client.invoke<Player>(ctx, 'PlayerService', 'CreatePlayer', request, emptyResponse);
  }
  Future<Empty> deletePlayer($pb.ClientContext ctx, DeletePlayerRequest request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'PlayerService', 'DeletePlayer', request, emptyResponse);
  }
  Future<Player> getPlayer($pb.ClientContext ctx, GetPlayerRequest request) {
    var emptyResponse = new Player();
    return _client.invoke<Player>(ctx, 'PlayerService', 'GetPlayer', request, emptyResponse);
  }
  Future<ListPlayersResponse> listPlayers($pb.ClientContext ctx, ListPlayersRequest request) {
    var emptyResponse = new ListPlayersResponse();
    return _client.invoke<ListPlayersResponse>(ctx, 'PlayerService', 'ListPlayers', request, emptyResponse);
  }
}

