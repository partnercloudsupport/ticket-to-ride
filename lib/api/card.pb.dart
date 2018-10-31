///
//  Generated code. Do not modify.
//  source: api/card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

class GetDestinationCardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetDestinationCardRequest', package: const $pb.PackageName('card'))
    ..aOS(1, 'destinationCardId')
    ..hasRequiredFields = false
  ;

  GetDestinationCardRequest() : super();
  GetDestinationCardRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetDestinationCardRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetDestinationCardRequest clone() => new GetDestinationCardRequest()..mergeFromMessage(this);
  GetDestinationCardRequest copyWith(void Function(GetDestinationCardRequest) updates) => super.copyWith((message) => updates(message as GetDestinationCardRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetDestinationCardRequest create() => new GetDestinationCardRequest();
  static $pb.PbList<GetDestinationCardRequest> createRepeated() => new $pb.PbList<GetDestinationCardRequest>();
  static GetDestinationCardRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetDestinationCardRequest _defaultInstance;
  static void $checkItem(GetDestinationCardRequest v) {
    if (v is! GetDestinationCardRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get destinationCardId => $_getS(0, '');
  set destinationCardId(String v) { $_setString(0, v); }
  bool hasDestinationCardId() => $_has(0);
  void clearDestinationCardId() => clearField(1);
}

class DestinationCard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DestinationCard', package: const $pb.PackageName('card'))
    ..aOS(1, 'id')
    ..aOS(2, 'firstCityId')
    ..aOS(3, 'secondCityId')
    ..a<int>(4, 'pointValue', $pb.PbFieldType.O3)
    ..aOS(5, 'playerId')
    ..hasRequiredFields = false
  ;

  DestinationCard() : super();
  DestinationCard.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DestinationCard.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DestinationCard clone() => new DestinationCard()..mergeFromMessage(this);
  DestinationCard copyWith(void Function(DestinationCard) updates) => super.copyWith((message) => updates(message as DestinationCard));
  $pb.BuilderInfo get info_ => _i;
  static DestinationCard create() => new DestinationCard();
  static $pb.PbList<DestinationCard> createRepeated() => new $pb.PbList<DestinationCard>();
  static DestinationCard getDefault() => _defaultInstance ??= create()..freeze();
  static DestinationCard _defaultInstance;
  static void $checkItem(DestinationCard v) {
    if (v is! DestinationCard) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get firstCityId => $_getS(1, '');
  set firstCityId(String v) { $_setString(1, v); }
  bool hasFirstCityId() => $_has(1);
  void clearFirstCityId() => clearField(2);

  String get secondCityId => $_getS(2, '');
  set secondCityId(String v) { $_setString(2, v); }
  bool hasSecondCityId() => $_has(2);
  void clearSecondCityId() => clearField(3);

  int get pointValue => $_get(3, 0);
  set pointValue(int v) { $_setSignedInt32(3, v); }
  bool hasPointValue() => $_has(3);
  void clearPointValue() => clearField(4);

  String get playerId => $_getS(4, '');
  set playerId(String v) { $_setString(4, v); }
  bool hasPlayerId() => $_has(4);
  void clearPlayerId() => clearField(5);
}

class PeekDestinationCardsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PeekDestinationCardsRequest', package: const $pb.PackageName('card'))
    ..aOS(1, 'gameId')
    ..hasRequiredFields = false
  ;

  PeekDestinationCardsRequest() : super();
  PeekDestinationCardsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PeekDestinationCardsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PeekDestinationCardsRequest clone() => new PeekDestinationCardsRequest()..mergeFromMessage(this);
  PeekDestinationCardsRequest copyWith(void Function(PeekDestinationCardsRequest) updates) => super.copyWith((message) => updates(message as PeekDestinationCardsRequest));
  $pb.BuilderInfo get info_ => _i;
  static PeekDestinationCardsRequest create() => new PeekDestinationCardsRequest();
  static $pb.PbList<PeekDestinationCardsRequest> createRepeated() => new $pb.PbList<PeekDestinationCardsRequest>();
  static PeekDestinationCardsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PeekDestinationCardsRequest _defaultInstance;
  static void $checkItem(PeekDestinationCardsRequest v) {
    if (v is! PeekDestinationCardsRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);
}

class PeekDestinationCardsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PeekDestinationCardsResponse', package: const $pb.PackageName('card'))
    ..pp<DestinationCard>(1, 'destinationCards', $pb.PbFieldType.PM, DestinationCard.$checkItem, DestinationCard.create)
    ..hasRequiredFields = false
  ;

  PeekDestinationCardsResponse() : super();
  PeekDestinationCardsResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PeekDestinationCardsResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PeekDestinationCardsResponse clone() => new PeekDestinationCardsResponse()..mergeFromMessage(this);
  PeekDestinationCardsResponse copyWith(void Function(PeekDestinationCardsResponse) updates) => super.copyWith((message) => updates(message as PeekDestinationCardsResponse));
  $pb.BuilderInfo get info_ => _i;
  static PeekDestinationCardsResponse create() => new PeekDestinationCardsResponse();
  static $pb.PbList<PeekDestinationCardsResponse> createRepeated() => new $pb.PbList<PeekDestinationCardsResponse>();
  static PeekDestinationCardsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PeekDestinationCardsResponse _defaultInstance;
  static void $checkItem(PeekDestinationCardsResponse v) {
    if (v is! PeekDestinationCardsResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<DestinationCard> get destinationCards => $_getList(0);
}

class ClaimDestinationCardsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimDestinationCardsRequest', package: const $pb.PackageName('card'))
    ..pPS(1, 'destinationCardIds')
    ..aOS(2, 'playerId')
    ..hasRequiredFields = false
  ;

  ClaimDestinationCardsRequest() : super();
  ClaimDestinationCardsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClaimDestinationCardsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClaimDestinationCardsRequest clone() => new ClaimDestinationCardsRequest()..mergeFromMessage(this);
  ClaimDestinationCardsRequest copyWith(void Function(ClaimDestinationCardsRequest) updates) => super.copyWith((message) => updates(message as ClaimDestinationCardsRequest));
  $pb.BuilderInfo get info_ => _i;
  static ClaimDestinationCardsRequest create() => new ClaimDestinationCardsRequest();
  static $pb.PbList<ClaimDestinationCardsRequest> createRepeated() => new $pb.PbList<ClaimDestinationCardsRequest>();
  static ClaimDestinationCardsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ClaimDestinationCardsRequest _defaultInstance;
  static void $checkItem(ClaimDestinationCardsRequest v) {
    if (v is! ClaimDestinationCardsRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get destinationCardIds => $_getList(0);

  String get playerId => $_getS(1, '');
  set playerId(String v) { $_setString(1, v); }
  bool hasPlayerId() => $_has(1);
  void clearPlayerId() => clearField(2);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Empty', package: const $pb.PackageName('card'))
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

class CardServiceApi {
  $pb.RpcClient _client;
  CardServiceApi(this._client);

  $async.Future<DestinationCard> getDestinationCard($pb.ClientContext ctx, GetDestinationCardRequest request) {
    var emptyResponse = new DestinationCard();
    return _client.invoke<DestinationCard>(ctx, 'CardService', 'GetDestinationCard', request, emptyResponse);
  }
  $async.Future<PeekDestinationCardsResponse> peekDestinationCards($pb.ClientContext ctx, PeekDestinationCardsRequest request) {
    var emptyResponse = new PeekDestinationCardsResponse();
    return _client.invoke<PeekDestinationCardsResponse>(ctx, 'CardService', 'PeekDestinationCards', request, emptyResponse);
  }
  $async.Future<Empty> claimDestinationCards($pb.ClientContext ctx, ClaimDestinationCardsRequest request) {
    var emptyResponse = new Empty();
    return _client.invoke<Empty>(ctx, 'CardService', 'ClaimDestinationCards', request, emptyResponse);
  }
}

