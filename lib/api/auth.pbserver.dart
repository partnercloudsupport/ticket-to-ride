///
//  Generated code. Do not modify.
//  source: api/auth.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'auth.pb.dart';
import 'auth.pbjson.dart';

export 'auth.pb.dart';

abstract class AuthServiceBase extends GeneratedService {
  $async.Future<LoginResponse> login(ServerContext ctx, LoginAccountRequest request);
  $async.Future<LoginResponse> register(ServerContext ctx, LoginAccountRequest request);
  $async.Future<GetUsernameResponse> getUsername(ServerContext ctx, GetUsernameRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'Login': return new LoginAccountRequest();
      case 'Register': return new LoginAccountRequest();
      case 'GetUsername': return new GetUsernameRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'Login': return this.login(ctx, request);
      case 'Register': return this.register(ctx, request);
      case 'GetUsername': return this.getUsername(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => AuthService$json;
  Map<String, Map<String, dynamic>> get $messageJson => AuthService$messageJson;
}

