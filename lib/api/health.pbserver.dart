///
//  Generated code. Do not modify.
//  source: api/health.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'health.pb.dart';
import 'health.pbjson.dart';

export 'health.pb.dart';

abstract class HealthServiceBase extends GeneratedService {
  $async.Future<Health> getHealth(ServerContext ctx, GetHealthRequest request);
  $async.Future<Health> streamHealth(ServerContext ctx, GetHealthRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'GetHealth': return new GetHealthRequest();
      case 'StreamHealth': return new GetHealthRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'GetHealth': return this.getHealth(ctx, request);
      case 'StreamHealth': return this.streamHealth(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => HealthService$json;
  Map<String, Map<String, dynamic>> get $messageJson => HealthService$messageJson;
}

