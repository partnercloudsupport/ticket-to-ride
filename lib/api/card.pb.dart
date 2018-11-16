///
//  Generated code. Do not modify.
//  source: card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'card.pbenum.dart';

export 'card.pbenum.dart';

class Empty2 extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Empty2', package: const $pb.PackageName('card'))
    ..hasRequiredFields = false
  ;

  Empty2() : super();
  Empty2.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Empty2.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Empty2 clone() => new Empty2()..mergeFromMessage(this);
  Empty2 copyWith(void Function(Empty2) updates) => super.copyWith((message) => updates(message as Empty2));
  $pb.BuilderInfo get info_ => _i;
  static Empty2 create() => new Empty2();
  static $pb.PbList<Empty2> createRepeated() => new $pb.PbList<Empty2>();
  static Empty2 getDefault() => _defaultInstance ??= create()..freeze();
  static Empty2 _defaultInstance;
  static void $checkItem(Empty2 v) {
    if (v is! Empty2) $pb.checkItemFailed(v, _i.messageName);
  }
}

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
    ..aOS(1, 'gameId')
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

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);
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

class TrainCard extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TrainCard', package: const $pb.PackageName('card'))
    ..aOS(1, 'id')
    ..aOS(2, 'playerId')
    ..e<TrainColor>(3, 'color', $pb.PbFieldType.OE, TrainColor.UNSPECIFIED, TrainColor.valueOf, TrainColor.values)
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

  String get playerId => $_getS(1, '');
  set playerId(String v) { $_setString(1, v); }
  bool hasPlayerId() => $_has(1);
  void clearPlayerId() => clearField(2);

  TrainColor get color => $_getN(2);
  set color(TrainColor v) { setField(3, v); }
  bool hasColor() => $_has(2);
  void clearColor() => clearField(3);

  TrainCard_State get state => $_getN(3);
  set state(TrainCard_State v) { setField(4, v); }
  bool hasState() => $_has(3);
  void clearState() => clearField(4);
}

class DrawTrainCardFromDeckRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DrawTrainCardFromDeckRequest', package: const $pb.PackageName('card'))
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  DrawTrainCardFromDeckRequest() : super();
  DrawTrainCardFromDeckRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DrawTrainCardFromDeckRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DrawTrainCardFromDeckRequest clone() => new DrawTrainCardFromDeckRequest()..mergeFromMessage(this);
  DrawTrainCardFromDeckRequest copyWith(void Function(DrawTrainCardFromDeckRequest) updates) => super.copyWith((message) => updates(message as DrawTrainCardFromDeckRequest));
  $pb.BuilderInfo get info_ => _i;
  static DrawTrainCardFromDeckRequest create() => new DrawTrainCardFromDeckRequest();
  static $pb.PbList<DrawTrainCardFromDeckRequest> createRepeated() => new $pb.PbList<DrawTrainCardFromDeckRequest>();
  static DrawTrainCardFromDeckRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DrawTrainCardFromDeckRequest _defaultInstance;
  static void $checkItem(DrawTrainCardFromDeckRequest v) {
    if (v is! DrawTrainCardFromDeckRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class DrawFaceUpTrainCardRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DrawFaceUpTrainCardRequest', package: const $pb.PackageName('card'))
    ..aOS(1, 'id')
    ..aOS(2, 'cardDrawnId')
    ..hasRequiredFields = false
  ;

  DrawFaceUpTrainCardRequest() : super();
  DrawFaceUpTrainCardRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DrawFaceUpTrainCardRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DrawFaceUpTrainCardRequest clone() => new DrawFaceUpTrainCardRequest()..mergeFromMessage(this);
  DrawFaceUpTrainCardRequest copyWith(void Function(DrawFaceUpTrainCardRequest) updates) => super.copyWith((message) => updates(message as DrawFaceUpTrainCardRequest));
  $pb.BuilderInfo get info_ => _i;
  static DrawFaceUpTrainCardRequest create() => new DrawFaceUpTrainCardRequest();
  static $pb.PbList<DrawFaceUpTrainCardRequest> createRepeated() => new $pb.PbList<DrawFaceUpTrainCardRequest>();
  static DrawFaceUpTrainCardRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DrawFaceUpTrainCardRequest _defaultInstance;
  static void $checkItem(DrawFaceUpTrainCardRequest v) {
    if (v is! DrawFaceUpTrainCardRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get cardDrawnId => $_getS(1, '');
  set cardDrawnId(String v) { $_setString(1, v); }
  bool hasCardDrawnId() => $_has(1);
  void clearCardDrawnId() => clearField(2);
}

class GetTrainCardsInHandRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetTrainCardsInHandRequest', package: const $pb.PackageName('card'))
    ..aOS(1, 'id')
    ..hasRequiredFields = false
  ;

  GetTrainCardsInHandRequest() : super();
  GetTrainCardsInHandRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetTrainCardsInHandRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetTrainCardsInHandRequest clone() => new GetTrainCardsInHandRequest()..mergeFromMessage(this);
  GetTrainCardsInHandRequest copyWith(void Function(GetTrainCardsInHandRequest) updates) => super.copyWith((message) => updates(message as GetTrainCardsInHandRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetTrainCardsInHandRequest create() => new GetTrainCardsInHandRequest();
  static $pb.PbList<GetTrainCardsInHandRequest> createRepeated() => new $pb.PbList<GetTrainCardsInHandRequest>();
  static GetTrainCardsInHandRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetTrainCardsInHandRequest _defaultInstance;
  static void $checkItem(GetTrainCardsInHandRequest v) {
    if (v is! GetTrainCardsInHandRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class GetTrainCardsInHandResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetTrainCardsInHandResponse', package: const $pb.PackageName('card'))
    ..pp<TrainCard>(1, 'cards', $pb.PbFieldType.PM, TrainCard.$checkItem, TrainCard.create)
    ..hasRequiredFields = false
  ;

  GetTrainCardsInHandResponse() : super();
  GetTrainCardsInHandResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetTrainCardsInHandResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetTrainCardsInHandResponse clone() => new GetTrainCardsInHandResponse()..mergeFromMessage(this);
  GetTrainCardsInHandResponse copyWith(void Function(GetTrainCardsInHandResponse) updates) => super.copyWith((message) => updates(message as GetTrainCardsInHandResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetTrainCardsInHandResponse create() => new GetTrainCardsInHandResponse();
  static $pb.PbList<GetTrainCardsInHandResponse> createRepeated() => new $pb.PbList<GetTrainCardsInHandResponse>();
  static GetTrainCardsInHandResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetTrainCardsInHandResponse _defaultInstance;
  static void $checkItem(GetTrainCardsInHandResponse v) {
    if (v is! GetTrainCardsInHandResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  List<TrainCard> get cards => $_getList(0);
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
  Future<TrainCard> streamTrainCards($pb.ClientContext ctx, StreamTrainCardsRequest request) {
    var emptyResponse = new TrainCard();
    return _client.invoke<TrainCard>(ctx, 'CardService', 'StreamTrainCards', request, emptyResponse);
  }
  Future<DeckStats> streamDeckStats($pb.ClientContext ctx, StreamDeckStatsRequest request) {
    var emptyResponse = new DeckStats();
    return _client.invoke<DeckStats>(ctx, 'CardService', 'StreamDeckStats', request, emptyResponse);
  }
  Future<Empty2> drawTrainCardFromDeck($pb.ClientContext ctx, DrawTrainCardFromDeckRequest request) {
    var emptyResponse = new Empty2();
    return _client.invoke<Empty2>(ctx, 'CardService', 'DrawTrainCardFromDeck', request, emptyResponse);
  }
  Future<Empty2> drawFaceUpTrainCard($pb.ClientContext ctx, DrawFaceUpTrainCardRequest request) {
    var emptyResponse = new Empty2();
    return _client.invoke<Empty2>(ctx, 'CardService', 'DrawFaceUpTrainCard', request, emptyResponse);
  }
  Future<GetTrainCardsInHandResponse> getTrainCardsInHand($pb.ClientContext ctx, GetTrainCardsInHandRequest request) {
    var emptyResponse = new GetTrainCardsInHandResponse();
    return _client.invoke<GetTrainCardsInHandResponse>(ctx, 'CardService', 'getTrainCardsInHand', request, emptyResponse);
  }
}

