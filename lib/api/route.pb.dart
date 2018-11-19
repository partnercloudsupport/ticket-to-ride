///
//  Generated code. Do not modify.
//  source: route.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'card.pbenum.dart' as $2;

class Route extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Route', package: const $pb.PackageName('route'))
    ..aOS(1, 'id')
    ..aOS(2, 'firstCityId')
    ..aOS(3, 'secondCityId')
    ..e<$2.TrainColor>(4, 'color', $pb.PbFieldType.OE, $2.TrainColor.UNSPECIFIED, $2.TrainColor.valueOf, $2.TrainColor.values)
    ..aOS(5, 'playerId')
    ..a<int>(6, 'length', $pb.PbFieldType.O3)
    ..aOS(7, 'gameId')
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
    if (v is! Route) $pb.checkItemFailed(v, _i.qualifiedMessageName);
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

  $2.TrainColor get color => $_getN(3);
  set color($2.TrainColor v) { setField(4, v); }
  bool hasColor() => $_has(3);
  void clearColor() => clearField(4);

  String get playerId => $_getS(4, '');
  set playerId(String v) { $_setString(4, v); }
  bool hasPlayerId() => $_has(4);
  void clearPlayerId() => clearField(5);

  int get length => $_get(5, 0);
  set length(int v) { $_setSignedInt32(5, v); }
  bool hasLength() => $_has(5);
  void clearLength() => clearField(6);

  String get gameId => $_getS(6, '');
  set gameId(String v) { $_setString(6, v); }
  bool hasGameId() => $_has(6);
  void clearGameId() => clearField(7);
}

class StreamRoutesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StreamRoutesRequest', package: const $pb.PackageName('route'))
    ..aOS(1, 'gameId')
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
    if (v is! StreamRoutesRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);
}

class ClaimRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimRouteRequest', package: const $pb.PackageName('route'))
    ..aOS(1, 'routeId')
    ..aOS(2, 'playerId')
    ..pPS(3, 'cardIds')
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
    if (v is! ClaimRouteRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get routeId => $_getS(0, '');
  set routeId(String v) { $_setString(0, v); }
  bool hasRouteId() => $_has(0);
  void clearRouteId() => clearField(1);

  String get playerId => $_getS(1, '');
  set playerId(String v) { $_setString(1, v); }
  bool hasPlayerId() => $_has(1);
  void clearPlayerId() => clearField(2);

  List<String> get cardIds => $_getList(2);
}

class ClaimRouteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ClaimRouteResponse', package: const $pb.PackageName('route'))
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
    if (v is! ClaimRouteResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class RouteServiceApi {
  $pb.RpcClient _client;
  RouteServiceApi(this._client);

  $async.Future<ClaimRouteResponse> claimRoute($pb.ClientContext ctx, ClaimRouteRequest request) {
    var emptyResponse = new ClaimRouteResponse();
    return _client.invoke<ClaimRouteResponse>(ctx, 'RouteService', 'ClaimRoute', request, emptyResponse);
  }
  $async.Future<Route> streamRoutes($pb.ClientContext ctx, StreamRoutesRequest request) {
    var emptyResponse = new Route();
    return _client.invoke<Route>(ctx, 'RouteService', 'StreamRoutes', request, emptyResponse);
  }
}

