///
//  Generated code. Do not modify.
//  source: api/card.proto
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
  Future<Empty1> claimDestinationCards(ServerContext ctx, ClaimDestinationCardsRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'GetDestinationCard': return new GetDestinationCardRequest();
      case 'PeekDestinationCards': return new PeekDestinationCardsRequest();
      case 'ClaimDestinationCards': return new ClaimDestinationCardsRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'GetDestinationCard': return this.getDestinationCard(ctx, request);
      case 'PeekDestinationCards': return this.peekDestinationCards(ctx, request);
      case 'ClaimDestinationCards': return this.claimDestinationCards(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => CardService$json;
  Map<String, Map<String, dynamic>> get $messageJson => CardService$messageJson;
}

