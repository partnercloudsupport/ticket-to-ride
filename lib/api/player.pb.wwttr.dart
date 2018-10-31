///
//  Generated code. Do not modify.
//  source: api/player.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';

import 'player.pb.dart';
import 'player.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

class PlayerServiceProxy {
  String _url;
  PlayerServiceProxy(this._url);

    Future<Player> createPlayer(ClientContext ctx, CreatePlayerRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'CreatePlayer';
      req.service = 'auth.PlayerService';
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
      return Player.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<Empty> deletePlayer(ClientContext ctx, DeletePlayerRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'DeletePlayer';
      req.service = 'auth.PlayerService';
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
      return Empty.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<Player> getPlayer(ClientContext ctx, GetPlayerRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'GetPlayer';
      req.service = 'auth.PlayerService';
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
      return Player.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<ListPlayersResponse> listPlayers(ClientContext ctx, ListPlayersRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'ListPlayers';
      req.service = 'auth.PlayerService';
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
      return ListPlayersResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }


}

