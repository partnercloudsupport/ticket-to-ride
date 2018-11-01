///
//  Generated code. Do not modify.
//  source: api/health.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'health.pbenum.dart';

export 'health.pbenum.dart';

class Health extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Health', package: const $pb.PackageName('health'))
    ..e<Health_Status>(1, 'status', $pb.PbFieldType.OE, Health_Status.UNSPECIFIED, Health_Status.valueOf, Health_Status.values)
    ..hasRequiredFields = false
  ;

  Health() : super();
  Health.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Health.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Health clone() => new Health()..mergeFromMessage(this);
  Health copyWith(void Function(Health) updates) => super.copyWith((message) => updates(message as Health));
  $pb.BuilderInfo get info_ => _i;
  static Health create() => new Health();
  static $pb.PbList<Health> createRepeated() => new $pb.PbList<Health>();
  static Health getDefault() => _defaultInstance ??= create()..freeze();
  static Health _defaultInstance;
  static void $checkItem(Health v) {
    if (v is! Health) $pb.checkItemFailed(v, _i.messageName);
  }

  Health_Status get status => $_getN(0);
  set status(Health_Status v) { setField(1, v); }
  bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);
}

class GetHealthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetHealthRequest', package: const $pb.PackageName('health'))
    ..hasRequiredFields = false
  ;

  GetHealthRequest() : super();
  GetHealthRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetHealthRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetHealthRequest clone() => new GetHealthRequest()..mergeFromMessage(this);
  GetHealthRequest copyWith(void Function(GetHealthRequest) updates) => super.copyWith((message) => updates(message as GetHealthRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetHealthRequest create() => new GetHealthRequest();
  static $pb.PbList<GetHealthRequest> createRepeated() => new $pb.PbList<GetHealthRequest>();
  static GetHealthRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetHealthRequest _defaultInstance;
  static void $checkItem(GetHealthRequest v) {
    if (v is! GetHealthRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class HealthServiceApi {
  $pb.RpcClient _client;
  HealthServiceApi(this._client);

  Future<Health> getHealth($pb.ClientContext ctx, GetHealthRequest request) {
    var emptyResponse = new Health();
    return _client.invoke<Health>(ctx, 'HealthService', 'GetHealth', request, emptyResponse);
  }
  Future<Health> streamHealth($pb.ClientContext ctx, GetHealthRequest request) {
    var emptyResponse = new Health();
    return _client.invoke<Health>(ctx, 'HealthService', 'StreamHealth', request, emptyResponse);
  }
}

