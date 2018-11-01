///
//  Generated code. Do not modify.
//  source: api/card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'card.pb.dart';
import 'card.pbjson.dart';

export 'card.pb.dart';

abstract class CardServiceBase extends GeneratedService {
  $async.Future<DestinationCard> getDestinationCard(ServerContext ctx, GetDestinationCardRequest request);
  $async.Future<PeekDestinationCardsResponse> peekDestinationCards(ServerContext ctx, PeekDestinationCardsRequest request);
  $async.Future<ClaimDestinationCardsResponse> claimDestinationCards(ServerContext ctx, ClaimDestinationCardsRequest request);
  $async.Future<DestinationCard> streamDestinationCards(ServerContext ctx, StreamDestinationCardsRequest request);
  $async.Future<ClaimTrainCardResponse> claimTrainCard(ServerContext ctx, ClaimTrainCardRequest request);
  $async.Future<TrainCard> streamTrainCards(ServerContext ctx, StreamTrainCardsRequest request);
  $async.Future<DeckStats> streamDeckStats(ServerContext ctx, StreamDeckStatsRequest request);
  $async.Future<ClaimRouteResponse> claimRoute(ServerContext ctx, ClaimRouteRequest request);
  $async.Future<Route> streamRoutes(ServerContext ctx, StreamRoutesRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'GetDestinationCard': return new GetDestinationCardRequest();
      case 'PeekDestinationCards': return new PeekDestinationCardsRequest();
      case 'ClaimDestinationCards': return new ClaimDestinationCardsRequest();
      case 'StreamDestinationCards': return new StreamDestinationCardsRequest();
      case 'ClaimTrainCard': return new ClaimTrainCardRequest();
      case 'StreamTrainCards': return new StreamTrainCardsRequest();
      case 'StreamDeckStats': return new StreamDeckStatsRequest();
      case 'ClaimRoute': return new ClaimRouteRequest();
      case 'StreamRoutes': return new StreamRoutesRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'GetDestinationCard': return this.getDestinationCard(ctx, request);
      case 'PeekDestinationCards': return this.peekDestinationCards(ctx, request);
      case 'ClaimDestinationCards': return this.claimDestinationCards(ctx, request);
      case 'StreamDestinationCards': return this.streamDestinationCards(ctx, request);
      case 'ClaimTrainCard': return this.claimTrainCard(ctx, request);
      case 'StreamTrainCards': return this.streamTrainCards(ctx, request);
      case 'StreamDeckStats': return this.streamDeckStats(ctx, request);
      case 'ClaimRoute': return this.claimRoute(ctx, request);
      case 'StreamRoutes': return this.streamRoutes(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => CardService$json;
  Map<String, Map<String, dynamic>> get $messageJson => CardService$messageJson;
}

