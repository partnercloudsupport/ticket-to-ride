///
//  Generated code. Do not modify.
//  source: auth.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';

import 'auth.pb.dart';
import 'auth.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

import './api.pb.dart';
import './game.pb.dart';
import './card.pb.dart';
import './chat.pb.dart';
import './descriptor.pb.dart';
import './health.pb.dart';
import './plugin.pb.dart';
import './route.pb.dart';

class AuthServiceProxy {
  String _url;
  AuthServiceProxy(this._url);

    Future<LoginResponse> login(ClientContext ctx, LoginAccountRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'Login';
      req.service = 'auth.AuthService';
      req.payload = request.writeToBuffer();
      var httpResponse = await http.post(_url, body: req.writeToBuffer());
      response = Response.fromBuffer(httpResponse.bodyBytes);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }

    if (response.code != Code.OK) {
      throw ApiError(response.code, response.message);
    }

    try {
      return LoginResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<LoginResponse> register(ClientContext ctx, LoginAccountRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'Register';
      req.service = 'auth.AuthService';
      req.payload = request.writeToBuffer();
      var httpResponse = await http.post(_url, body: req.writeToBuffer());
      response = Response.fromBuffer(httpResponse.bodyBytes);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }

    if (response.code != Code.OK) {
      throw ApiError(response.code, response.message);
    }

    try {
      return LoginResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<GetUsernameResponse> getUsername(ClientContext ctx, GetUsernameRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'GetUsername';
      req.service = 'auth.AuthService';
      req.payload = request.writeToBuffer();
      var httpResponse = await http.post(_url, body: req.writeToBuffer());
      response = Response.fromBuffer(httpResponse.bodyBytes);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }

    if (response.code != Code.OK) {
      throw ApiError(response.code, response.message);
    }

    try {
      return GetUsernameResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }


}

