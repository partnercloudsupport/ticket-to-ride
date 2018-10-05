///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';

import 'package:protobuf/protobuf.dart';

import 'game.pb.dart';
import 'game.pbjson.dart';

export 'game.pb.dart';

abstract class GameServiceBase extends GeneratedService {
  Future<CreateResponse> createGame(ServerContext ctx, CreateGameRequest request);
  Future<JoinGameResponse> joinGame(ServerContext ctx, JoinGameRequest request);
  Future<Empty> leaveGame(ServerContext ctx, LeaveGameRequest request);
  Future<Empty> deleteGame(ServerContext ctx, DeleteGameRequest request);
  Future<Game> getGame(ServerContext ctx, GetGameRequest request);
  Future<ListGamesResponse> listGames(ServerContext ctx, ListGamesRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'CreateGame': return new CreateGameRequest();
      case 'JoinGame': return new JoinGameRequest();
      case 'LeaveGame': return new LeaveGameRequest();
      case 'DeleteGame': return new DeleteGameRequest();
      case 'GetGame': return new GetGameRequest();
      case 'ListGames': return new ListGamesRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'CreateGame': return this.createGame(ctx, request);
      case 'JoinGame': return this.joinGame(ctx, request);
      case 'LeaveGame': return this.leaveGame(ctx, request);
      case 'DeleteGame': return this.deleteGame(ctx, request);
      case 'GetGame': return this.getGame(ctx, request);
      case 'ListGames': return this.listGames(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => GameService$json;
  Map<String, Map<String, dynamic>> get $messageJson => GameService$messageJson;
}

