///
//  Generated code. Do not modify.
//  source: chat.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart';

import 'chat.pb.dart';
import 'chat.pbjson.dart';

export 'chat.pb.dart';

abstract class ChatServiceBase extends GeneratedService {
  $async.Future<Message> createMessage(ServerContext ctx, CreateMessageRequest request);
  $async.Future<Message> getMessage(ServerContext ctx, GetMessageRequest request);
  $async.Future<Message> streamMessages(ServerContext ctx, StreamMessagesRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'createMessage': return new CreateMessageRequest();
      case 'getMessage': return new GetMessageRequest();
      case 'streamMessages': return new StreamMessagesRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) {
    switch (method) {
      case 'createMessage': return this.createMessage(ctx, request);
      case 'getMessage': return this.getMessage(ctx, request);
      case 'streamMessages': return this.streamMessages(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Map<String, dynamic> get $json => ChatService$json;
  Map<String, Map<String, dynamic>> get $messageJson => ChatService$messageJson;
}

