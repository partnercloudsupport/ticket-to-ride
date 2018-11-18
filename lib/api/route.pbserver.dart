///
//  Generated code. Do not modify.
//  source: route.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'route.pb.dart';
import 'route.pbjson.dart';

export 'route.pb.dart';

abstract class RouteServiceBase extends GeneratedService {
  $async.Future<ClaimRouteResponse> claimRoute(ServerContext ctx, ClaimRouteRequest request);
  $async.Future<Route> streamRoutes(ServerContext ctx, StreamRoutesRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'ClaimRoute': return new ClaimRouteRequest();
      case 'StreamRoutes': return new StreamRoutesRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'ClaimRoute': return this.claimRoute(ctx, request);
      case 'StreamRoutes': return this.streamRoutes(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => RouteService$json;
  Map<String, Map<String, dynamic>> get $messageJson => RouteService$messageJson;
}

