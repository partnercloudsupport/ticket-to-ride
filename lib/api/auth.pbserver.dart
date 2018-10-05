///
//  Generated code. Do not modify.
//  source: api/auth.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';

import 'package:protobuf/protobuf.dart';

import 'auth.pb.dart';
import 'auth.pbjson.dart';

export 'auth.pb.dart';

abstract class AuthServiceBase extends GeneratedService {
  Future<LoginResponse> login(ServerContext ctx, LoginAccountRequest request);
  Future<LoginResponse> register(ServerContext ctx, LoginAccountRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'Login': return new LoginAccountRequest();
      case 'Register': return new LoginAccountRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'Login': return this.login(ctx, request);
      case 'Register': return this.register(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => AuthService$json;
  Map<String, Map<String, dynamic>> get $messageJson => AuthService$messageJson;
}

