///
//  Generated code. Do not modify.
//  source: api/card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'card.pbenum.dart';

export 'card.pbenum.dart';

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
    if (v is! GetDestinationCardRequest) $pb.checkItemFailed(v, _i.messageName);
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
    if (v is! DestinationCard) $pb.checkItemFailed(v, _i.messageName);
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
    if (v is! PeekDestinationCardsRequest) $pb.checkItemFailed(v, _i.messageName);
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
    if (v is! PeekDestinationCardsResponse) $pb.checkItemFailed(v, _i.messageName);
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
    if (v is! ClaimDestinationCardsRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  List<String> get destinationCardIds => $_getList(0);

  String get playerId => $_getS(1, '');
  set playerId(String v) { $_setString(1, v); }
  bool hasPlayerId() => $_has(1);
  void clearPlayerId() => clearField(2);
}

class ClaimDestinationCardsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimDestinationCardsResponse', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  ClaimDestinationCardsResponse() : super();
  ClaimDestinationCardsResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClaimDestinationCardsResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClaimDestinationCardsResponse clone() => new ClaimDestinationCardsResponse()..mergeFromMessage(this);
  ClaimDestinationCardsResponse copyWith(void Function(ClaimDestinationCardsResponse) updates) => super.copyWith((message) => updates(message as ClaimDestinationCardsResponse));
  $pb.BuilderInfo get info_ => _i;
  static ClaimDestinationCardsResponse create() => new ClaimDestinationCardsResponse();
  static $pb.PbList<ClaimDestinationCardsResponse> createRepeated() => new $pb.PbList<ClaimDestinationCardsResponse>();
  static ClaimDestinationCardsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ClaimDestinationCardsResponse _defaultInstance;
  static void $checkItem(ClaimDestinationCardsResponse v) {
    if (v is! ClaimDestinationCardsResponse) $pb.checkItemFailed(v, _i.messageName);
  }
}

class StreamDestinationCardsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StreamDestinationCardsRequest', package: const $pb.PackageName('card'))
    ..aOS(1, 'playerId')
    ..hasRequiredFields = false
  ;

  StreamDestinationCardsRequest() : super();
  StreamDestinationCardsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StreamDestinationCardsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StreamDestinationCardsRequest clone() => new StreamDestinationCardsRequest()..mergeFromMessage(this);
  StreamDestinationCardsRequest copyWith(void Function(StreamDestinationCardsRequest) updates) => super.copyWith((message) => updates(message as StreamDestinationCardsRequest));
  $pb.BuilderInfo get info_ => _i;
  static StreamDestinationCardsRequest create() => new StreamDestinationCardsRequest();
  static $pb.PbList<StreamDestinationCardsRequest> createRepeated() => new $pb.PbList<StreamDestinationCardsRequest>();
  static StreamDestinationCardsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StreamDestinationCardsRequest _defaultInstance;
  static void $checkItem(StreamDestinationCardsRequest v) {
    if (v is! StreamDestinationCardsRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get playerId => $_getS(0, '');
  set playerId(String v) { $_setString(0, v); }
  bool hasPlayerId() => $_has(0);
  void clearPlayerId() => clearField(1);
}

class TrainCard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TrainCard', package: const $pb.PackageName('card'))
    ..aOS(1, 'id')
    ..e<TrainColor>(2, 'color', $pb.PbFieldType.OE, TrainColor.UNSPECIFIED, TrainColor.valueOf, TrainColor.values)
    ..e<TrainCard_State>(4, 'state', $pb.PbFieldType.OE, TrainCard_State.UNSPECIFIED, TrainCard_State.valueOf, TrainCard_State.values)
    ..hasRequiredFields = false
  ;

  TrainCard() : super();
  TrainCard.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TrainCard.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TrainCard clone() => new TrainCard()..mergeFromMessage(this);
  TrainCard copyWith(void Function(TrainCard) updates) => super.copyWith((message) => updates(message as TrainCard));
  $pb.BuilderInfo get info_ => _i;
  static TrainCard create() => new TrainCard();
  static $pb.PbList<TrainCard> createRepeated() => new $pb.PbList<TrainCard>();
  static TrainCard getDefault() => _defaultInstance ??= create()..freeze();
  static TrainCard _defaultInstance;
  static void $checkItem(TrainCard v) {
    if (v is! TrainCard) $pb.checkItemFailed(v, _i.messageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  TrainColor get color => $_getN(1);
  set color(TrainColor v) { setField(2, v); }
  bool hasColor() => $_has(1);
  void clearColor() => clearField(2);

  TrainCard_State get state => $_getN(2);
  set state(TrainCard_State v) { setField(4, v); }
  bool hasState() => $_has(2);
  void clearState() => clearField(4);
}

class StreamTrainCardsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StreamTrainCardsRequest', package: const $pb.PackageName('card'))
    ..aOS(1, 'playerId')
    ..hasRequiredFields = false
  ;

  StreamTrainCardsRequest() : super();
  StreamTrainCardsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StreamTrainCardsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StreamTrainCardsRequest clone() => new StreamTrainCardsRequest()..mergeFromMessage(this);
  StreamTrainCardsRequest copyWith(void Function(StreamTrainCardsRequest) updates) => super.copyWith((message) => updates(message as StreamTrainCardsRequest));
  $pb.BuilderInfo get info_ => _i;
  static StreamTrainCardsRequest create() => new StreamTrainCardsRequest();
  static $pb.PbList<StreamTrainCardsRequest> createRepeated() => new $pb.PbList<StreamTrainCardsRequest>();
  static StreamTrainCardsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StreamTrainCardsRequest _defaultInstance;
  static void $checkItem(StreamTrainCardsRequest v) {
    if (v is! StreamTrainCardsRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get playerId => $_getS(0, '');
  set playerId(String v) { $_setString(0, v); }
  bool hasPlayerId() => $_has(0);
  void clearPlayerId() => clearField(1);
}

class DeckStats extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeckStats', package: const $pb.PackageName('card'))
    ..a<int>(1, 'hiddenTrainCardCount', $pb.PbFieldType.O3)
    ..a<int>(3, 'hiddenDestinationCardCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DeckStats() : super();
  DeckStats.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeckStats.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeckStats clone() => new DeckStats()..mergeFromMessage(this);
  DeckStats copyWith(void Function(DeckStats) updates) => super.copyWith((message) => updates(message as DeckStats));
  $pb.BuilderInfo get info_ => _i;
  static DeckStats create() => new DeckStats();
  static $pb.PbList<DeckStats> createRepeated() => new $pb.PbList<DeckStats>();
  static DeckStats getDefault() => _defaultInstance ??= create()..freeze();
  static DeckStats _defaultInstance;
  static void $checkItem(DeckStats v) {
    if (v is! DeckStats) $pb.checkItemFailed(v, _i.messageName);
  }

  int get hiddenTrainCardCount => $_get(0, 0);
  set hiddenTrainCardCount(int v) { $_setSignedInt32(0, v); }
  bool hasHiddenTrainCardCount() => $_has(0);
  void clearHiddenTrainCardCount() => clearField(1);

  int get hiddenDestinationCardCount => $_get(1, 0);
  set hiddenDestinationCardCount(int v) { $_setSignedInt32(1, v); }
  bool hasHiddenDestinationCardCount() => $_has(1);
  void clearHiddenDestinationCardCount() => clearField(3);
}

class StreamDeckStatsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StreamDeckStatsRequest', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  StreamDeckStatsRequest() : super();
  StreamDeckStatsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StreamDeckStatsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StreamDeckStatsRequest clone() => new StreamDeckStatsRequest()..mergeFromMessage(this);
  StreamDeckStatsRequest copyWith(void Function(StreamDeckStatsRequest) updates) => super.copyWith((message) => updates(message as StreamDeckStatsRequest));
  $pb.BuilderInfo get info_ => _i;
  static StreamDeckStatsRequest create() => new StreamDeckStatsRequest();
  static $pb.PbList<StreamDeckStatsRequest> createRepeated() => new $pb.PbList<StreamDeckStatsRequest>();
  static StreamDeckStatsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StreamDeckStatsRequest _defaultInstance;
  static void $checkItem(StreamDeckStatsRequest v) {
    if (v is! StreamDeckStatsRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class Route extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Route', package: const $pb.PackageName('card'))
    ..aOS(1, 'id')
    ..aOS(2, 'firstCityId')
    ..aOS(3, 'secondCityId')
    ..e<TrainColor>(4, 'color', $pb.PbFieldType.OE, TrainColor.UNSPECIFIED, TrainColor.valueOf, TrainColor.values)
    ..aOS(5, 'playerId')
    ..hasRequiredFields = false
  ;

  Route() : super();
  Route.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Route.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Route clone() => new Route()..mergeFromMessage(this);
  Route copyWith(void Function(Route) updates) => super.copyWith((message) => updates(message as Route));
  $pb.BuilderInfo get info_ => _i;
  static Route create() => new Route();
  static $pb.PbList<Route> createRepeated() => new $pb.PbList<Route>();
  static Route getDefault() => _defaultInstance ??= create()..freeze();
  static Route _defaultInstance;
  static void $checkItem(Route v) {
    if (v is! Route) $pb.checkItemFailed(v, _i.messageName);
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

  TrainColor get color => $_getN(3);
  set color(TrainColor v) { setField(4, v); }
  bool hasColor() => $_has(3);
  void clearColor() => clearField(4);

  String get playerId => $_getS(4, '');
  set playerId(String v) { $_setString(4, v); }
  bool hasPlayerId() => $_has(4);
  void clearPlayerId() => clearField(5);
}

class StreamRoutesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StreamRoutesRequest', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  StreamRoutesRequest() : super();
  StreamRoutesRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StreamRoutesRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StreamRoutesRequest clone() => new StreamRoutesRequest()..mergeFromMessage(this);
  StreamRoutesRequest copyWith(void Function(StreamRoutesRequest) updates) => super.copyWith((message) => updates(message as StreamRoutesRequest));
  $pb.BuilderInfo get info_ => _i;
  static StreamRoutesRequest create() => new StreamRoutesRequest();
  static $pb.PbList<StreamRoutesRequest> createRepeated() => new $pb.PbList<StreamRoutesRequest>();
  static StreamRoutesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StreamRoutesRequest _defaultInstance;
  static void $checkItem(StreamRoutesRequest v) {
    if (v is! StreamRoutesRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class ClaimTrainCardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimTrainCardRequest', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  ClaimTrainCardRequest() : super();
  ClaimTrainCardRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClaimTrainCardRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClaimTrainCardRequest clone() => new ClaimTrainCardRequest()..mergeFromMessage(this);
  ClaimTrainCardRequest copyWith(void Function(ClaimTrainCardRequest) updates) => super.copyWith((message) => updates(message as ClaimTrainCardRequest));
  $pb.BuilderInfo get info_ => _i;
  static ClaimTrainCardRequest create() => new ClaimTrainCardRequest();
  static $pb.PbList<ClaimTrainCardRequest> createRepeated() => new $pb.PbList<ClaimTrainCardRequest>();
  static ClaimTrainCardRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ClaimTrainCardRequest _defaultInstance;
  static void $checkItem(ClaimTrainCardRequest v) {
    if (v is! ClaimTrainCardRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class ClaimTrainCardResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimTrainCardResponse', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  ClaimTrainCardResponse() : super();
  ClaimTrainCardResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClaimTrainCardResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClaimTrainCardResponse clone() => new ClaimTrainCardResponse()..mergeFromMessage(this);
  ClaimTrainCardResponse copyWith(void Function(ClaimTrainCardResponse) updates) => super.copyWith((message) => updates(message as ClaimTrainCardResponse));
  $pb.BuilderInfo get info_ => _i;
  static ClaimTrainCardResponse create() => new ClaimTrainCardResponse();
  static $pb.PbList<ClaimTrainCardResponse> createRepeated() => new $pb.PbList<ClaimTrainCardResponse>();
  static ClaimTrainCardResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ClaimTrainCardResponse _defaultInstance;
  static void $checkItem(ClaimTrainCardResponse v) {
    if (v is! ClaimTrainCardResponse) $pb.checkItemFailed(v, _i.messageName);
  }
}

class ClaimRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimRouteRequest', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  ClaimRouteRequest() : super();
  ClaimRouteRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClaimRouteRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClaimRouteRequest clone() => new ClaimRouteRequest()..mergeFromMessage(this);
  ClaimRouteRequest copyWith(void Function(ClaimRouteRequest) updates) => super.copyWith((message) => updates(message as ClaimRouteRequest));
  $pb.BuilderInfo get info_ => _i;
  static ClaimRouteRequest create() => new ClaimRouteRequest();
  static $pb.PbList<ClaimRouteRequest> createRepeated() => new $pb.PbList<ClaimRouteRequest>();
  static ClaimRouteRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ClaimRouteRequest _defaultInstance;
  static void $checkItem(ClaimRouteRequest v) {
    if (v is! ClaimRouteRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class ClaimRouteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimRouteResponse', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  ClaimRouteResponse() : super();
  ClaimRouteResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ClaimRouteResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ClaimRouteResponse clone() => new ClaimRouteResponse()..mergeFromMessage(this);
  ClaimRouteResponse copyWith(void Function(ClaimRouteResponse) updates) => super.copyWith((message) => updates(message as ClaimRouteResponse));
  $pb.BuilderInfo get info_ => _i;
  static ClaimRouteResponse create() => new ClaimRouteResponse();
  static $pb.PbList<ClaimRouteResponse> createRepeated() => new $pb.PbList<ClaimRouteResponse>();
  static ClaimRouteResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ClaimRouteResponse _defaultInstance;
  static void $checkItem(ClaimRouteResponse v) {
    if (v is! ClaimRouteResponse) $pb.checkItemFailed(v, _i.messageName);
  }
}

class CardServiceApi {
  $pb.RpcClient _client;
  CardServiceApi(this._client);

  Future<DestinationCard> getDestinationCard($pb.ClientContext ctx, GetDestinationCardRequest request) {
    var emptyResponse = new DestinationCard();
    return _client.invoke<DestinationCard>(ctx, 'CardService', 'GetDestinationCard', request, emptyResponse);
  }
  Future<PeekDestinationCardsResponse> peekDestinationCards($pb.ClientContext ctx, PeekDestinationCardsRequest request) {
    var emptyResponse = new PeekDestinationCardsResponse();
    return _client.invoke<PeekDestinationCardsResponse>(ctx, 'CardService', 'PeekDestinationCards', request, emptyResponse);
  }
  Future<ClaimDestinationCardsResponse> claimDestinationCards($pb.ClientContext ctx, ClaimDestinationCardsRequest request) {
    var emptyResponse = new ClaimDestinationCardsResponse();
    return _client.invoke<ClaimDestinationCardsResponse>(ctx, 'CardService', 'ClaimDestinationCards', request, emptyResponse);
  }
  Future<DestinationCard> streamDestinationCards($pb.ClientContext ctx, StreamDestinationCardsRequest request) {
    var emptyResponse = new DestinationCard();
    return _client.invoke<DestinationCard>(ctx, 'CardService', 'StreamDestinationCards', request, emptyResponse);
  }
  Future<ClaimTrainCardResponse> claimTrainCard($pb.ClientContext ctx, ClaimTrainCardRequest request) {
    var emptyResponse = new ClaimTrainCardResponse();
    return _client.invoke<ClaimTrainCardResponse>(ctx, 'CardService', 'ClaimTrainCard', request, emptyResponse);
  }
  Future<TrainCard> streamTrainCards($pb.ClientContext ctx, StreamTrainCardsRequest request) {
    var emptyResponse = new TrainCard();
    return _client.invoke<TrainCard>(ctx, 'CardService', 'StreamTrainCards', request, emptyResponse);
  }
  Future<DeckStats> streamDeckStats($pb.ClientContext ctx, StreamDeckStatsRequest request) {
    var emptyResponse = new DeckStats();
    return _client.invoke<DeckStats>(ctx, 'CardService', 'StreamDeckStats', request, emptyResponse);
  }
  Future<ClaimRouteResponse> claimRoute($pb.ClientContext ctx, ClaimRouteRequest request) {
    var emptyResponse = new ClaimRouteResponse();
    return _client.invoke<ClaimRouteResponse>(ctx, 'CardService', 'ClaimRoute', request, emptyResponse);
  }
  Future<Route> streamRoutes($pb.ClientContext ctx, StreamRoutesRequest request) {
    var emptyResponse = new Route();
    return _client.invoke<Route>(ctx, 'CardService', 'StreamRoutes', request, emptyResponse);
  }
}

