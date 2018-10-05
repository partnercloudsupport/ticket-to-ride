///
//  Generated code. Do not modify.
//  source: api/player.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';

import 'package:protobuf/protobuf.dart';

import 'player.pb.dart';
import 'player.pbjson.dart';

export 'player.pb.dart';

abstract class PlayerServiceBase extends GeneratedService {
  Future<Player> createPlayer(ServerContext ctx, CreatePlayerRequest request);
  Future<Empty> deletePlayer(ServerContext ctx, DeletePlayerRequest request);
  Future<Player> getPlayer(ServerContext ctx, GetPlayerRequest request);
  Future<ListPlayersResponse> listPlayers(ServerContext ctx, ListPlayersRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'CreatePlayer': return new CreatePlayerRequest();
      case 'DeletePlayer': return new DeletePlayerRequest();
      case 'GetPlayer': return new GetPlayerRequest();
      case 'ListPlayers': return new ListPlayersRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'CreatePlayer': return this.createPlayer(ctx, request);
      case 'DeletePlayer': return this.deletePlayer(ctx, request);
      case 'GetPlayer': return this.getPlayer(ctx, request);
      case 'ListPlayers': return this.listPlayers(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => PlayerService$json;
  Map<String, Map<String, dynamic>> get $messageJson => PlayerService$messageJson;
}

