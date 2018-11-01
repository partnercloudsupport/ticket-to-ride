///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';

import 'game.pb.dart';
import 'game.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

class GameServiceProxy {
  String _url;
  GameServiceProxy(this._url);

    Future<CreateResponse> createGame(ClientContext ctx, CreateGameRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'CreateGame';
      req.service = 'game.GameService';
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
      return CreateResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<Empty> leaveGame(ClientContext ctx, LeaveGameRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'LeaveGame';
      req.service = 'game.GameService';
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

  Future<Empty> deleteGame(ClientContext ctx, DeleteGameRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'DeleteGame';
      req.service = 'game.GameService';
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

  Future<Game> getGame(ClientContext ctx, GetGameRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'GetGame';
      req.service = 'game.GameService';
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
      return Game.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<Game> startGame(ClientContext ctx, StartGameRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'StartGame';
      req.service = 'game.GameService';
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
      return Game.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<ListGamesResponse> listGames(ClientContext ctx, ListGamesRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'ListGames';
      req.service = 'game.GameService';
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
      return ListGamesResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<CreatePlayerResponse> createPlayer(ClientContext ctx, CreatePlayerRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'CreatePlayer';
      req.service = 'game.GameService';
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
      return CreatePlayerResponse.fromBuffer(response.payload);
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
      req.service = 'game.GameService';
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

  Future<PlayerStats> streamPlayerStats(ClientContext ctx, StreamPlayerStatsRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'StreamPlayerStats';
      req.service = 'game.GameService';
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
      return PlayerStats.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<Empty> togglePlayerStats(ClientContext ctx, Empty request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'TogglePlayerStats';
      req.service = 'game.GameService';
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


}

