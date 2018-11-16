///
//  Generated code. Do not modify.
//  source: card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';

import 'package:protobuf/protobuf.dart';

import 'card.pb.dart';
import 'card.pbjson.dart';

export 'card.pb.dart';

abstract class CardServiceBase extends GeneratedService {
  Future<DestinationCard> getDestinationCard(ServerContext ctx, GetDestinationCardRequest request);
  Future<PeekDestinationCardsResponse> peekDestinationCards(ServerContext ctx, PeekDestinationCardsRequest request);
  Future<ClaimDestinationCardsResponse> claimDestinationCards(ServerContext ctx, ClaimDestinationCardsRequest request);
  Future<DestinationCard> streamDestinationCards(ServerContext ctx, StreamDestinationCardsRequest request);
  Future<TrainCard> streamTrainCards(ServerContext ctx, StreamTrainCardsRequest request);
  Future<DeckStats> streamDeckStats(ServerContext ctx, StreamDeckStatsRequest request);
  Future<Empty2> drawTrainCardFromDeck(ServerContext ctx, DrawTrainCardFromDeckRequest request);
  Future<Empty2> drawFaceUpTrainCard(ServerContext ctx, DrawFaceUpTrainCardRequest request);
  Future<GetTrainCardsInHandResponse> getTrainCardsInHand(ServerContext ctx, GetTrainCardsInHandRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'GetDestinationCard': return new GetDestinationCardRequest();
      case 'PeekDestinationCards': return new PeekDestinationCardsRequest();
      case 'ClaimDestinationCards': return new ClaimDestinationCardsRequest();
      case 'StreamDestinationCards': return new StreamDestinationCardsRequest();
      case 'StreamTrainCards': return new StreamTrainCardsRequest();
      case 'StreamDeckStats': return new StreamDeckStatsRequest();
      case 'DrawTrainCardFromDeck': return new DrawTrainCardFromDeckRequest();
      case 'DrawFaceUpTrainCard': return new DrawFaceUpTrainCardRequest();
      case 'getTrainCardsInHand': return new GetTrainCardsInHandRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'GetDestinationCard': return this.getDestinationCard(ctx, request);
      case 'PeekDestinationCards': return this.peekDestinationCards(ctx, request);
      case 'ClaimDestinationCards': return this.claimDestinationCards(ctx, request);
      case 'StreamDestinationCards': return this.streamDestinationCards(ctx, request);
      case 'StreamTrainCards': return this.streamTrainCards(ctx, request);
      case 'StreamDeckStats': return this.streamDeckStats(ctx, request);
      case 'DrawTrainCardFromDeck': return this.drawTrainCardFromDeck(ctx, request);
      case 'DrawFaceUpTrainCard': return this.drawFaceUpTrainCard(ctx, request);
      case 'getTrainCardsInHand': return this.getTrainCardsInHand(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => CardService$json;
  Map<String, Map<String, dynamic>> get $messageJson => CardService$messageJson;
}

