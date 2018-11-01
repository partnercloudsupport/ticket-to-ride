///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'game.pb.dart';
import 'game.pbjson.dart';

export 'game.pb.dart';

abstract class GameServiceBase extends GeneratedService {
  $async.Future<CreateResponse> createGame(ServerContext ctx, CreateGameRequest request);
  $async.Future<Empty> leaveGame(ServerContext ctx, LeaveGameRequest request);
  $async.Future<Empty> deleteGame(ServerContext ctx, DeleteGameRequest request);
  $async.Future<Game> getGame(ServerContext ctx, GetGameRequest request);
  $async.Future<Game> startGame(ServerContext ctx, StartGameRequest request);
  $async.Future<ListGamesResponse> listGames(ServerContext ctx, ListGamesRequest request);
  $async.Future<CreatePlayerResponse> createPlayer(ServerContext ctx, CreatePlayerRequest request);
  $async.Future<Player> getPlayer(ServerContext ctx, GetPlayerRequest request);
  $async.Future<PlayerStats> streamPlayerStats(ServerContext ctx, StreamPlayerStatsRequest request);
  $async.Future<Empty> togglePlayerStats(ServerContext ctx, Empty request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'CreateGame': return new CreateGameRequest();
      case 'LeaveGame': return new LeaveGameRequest();
      case 'DeleteGame': return new DeleteGameRequest();
      case 'GetGame': return new GetGameRequest();
      case 'StartGame': return new StartGameRequest();
      case 'ListGames': return new ListGamesRequest();
      case 'CreatePlayer': return new CreatePlayerRequest();
      case 'GetPlayer': return new GetPlayerRequest();
      case 'StreamPlayerStats': return new StreamPlayerStatsRequest();
      case 'TogglePlayerStats': return new Empty();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'CreateGame': return this.createGame(ctx, request);
      case 'LeaveGame': return this.leaveGame(ctx, request);
      case 'DeleteGame': return this.deleteGame(ctx, request);
      case 'GetGame': return this.getGame(ctx, request);
      case 'StartGame': return this.startGame(ctx, request);
      case 'ListGames': return this.listGames(ctx, request);
      case 'CreatePlayer': return this.createPlayer(ctx, request);
      case 'GetPlayer': return this.getPlayer(ctx, request);
      case 'StreamPlayerStats': return this.streamPlayerStats(ctx, request);
      case 'TogglePlayerStats': return this.togglePlayerStats(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => GameService$json;
  Map<String, Map<String, dynamic>> get $messageJson => GameService$messageJson;
}

