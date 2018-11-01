///
//  Generated code. Do not modify.
//  source: api/chat.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Message', package: const $pb.PackageName('chat'))
    ..aOS(1, 'messageId')
    ..aOS(2, 'content')
    ..aOS(3, 'playerId')
    ..a<int>(4, 'timestamp', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Message() : super();
  Message.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Message.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Message clone() => new Message()..mergeFromMessage(this);
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message));
  $pb.BuilderInfo get info_ => _i;
  static Message create() => new Message();
  static $pb.PbList<Message> createRepeated() => new $pb.PbList<Message>();
  static Message getDefault() => _defaultInstance ??= create()..freeze();
  static Message _defaultInstance;
  static void $checkItem(Message v) {
    if (v is! Message) $pb.checkItemFailed(v, _i.messageName);
  }

  String get messageId => $_getS(0, '');
  set messageId(String v) { $_setString(0, v); }
  bool hasMessageId() => $_has(0);
  void clearMessageId() => clearField(1);

  String get content => $_getS(1, '');
  set content(String v) { $_setString(1, v); }
  bool hasContent() => $_has(1);
  void clearContent() => clearField(2);

  String get playerId => $_getS(2, '');
  set playerId(String v) { $_setString(2, v); }
  bool hasPlayerId() => $_has(2);
  void clearPlayerId() => clearField(3);

  int get timestamp => $_get(3, 0);
  set timestamp(int v) { $_setSignedInt32(3, v); }
  bool hasTimestamp() => $_has(3);
  void clearTimestamp() => clearField(4);
}

class CreateMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateMessageRequest', package: const $pb.PackageName('chat'))
    ..aOS(1, 'content')
    ..aOS(2, 'playerId')
    ..hasRequiredFields = false
  ;

  CreateMessageRequest() : super();
  CreateMessageRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateMessageRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateMessageRequest clone() => new CreateMessageRequest()..mergeFromMessage(this);
  CreateMessageRequest copyWith(void Function(CreateMessageRequest) updates) => super.copyWith((message) => updates(message as CreateMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateMessageRequest create() => new CreateMessageRequest();
  static $pb.PbList<CreateMessageRequest> createRepeated() => new $pb.PbList<CreateMessageRequest>();
  static CreateMessageRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateMessageRequest _defaultInstance;
  static void $checkItem(CreateMessageRequest v) {
    if (v is! CreateMessageRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get content => $_getS(0, '');
  set content(String v) { $_setString(0, v); }
  bool hasContent() => $_has(0);
  void clearContent() => clearField(1);

  String get playerId => $_getS(1, '');
  set playerId(String v) { $_setString(1, v); }
  bool hasPlayerId() => $_has(1);
  void clearPlayerId() => clearField(2);
}

class GetMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMessageRequest', package: const $pb.PackageName('chat'))
    ..aOS(1, 'messageId')
    ..hasRequiredFields = false
  ;

  GetMessageRequest() : super();
  GetMessageRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMessageRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMessageRequest clone() => new GetMessageRequest()..mergeFromMessage(this);
  GetMessageRequest copyWith(void Function(GetMessageRequest) updates) => super.copyWith((message) => updates(message as GetMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetMessageRequest create() => new GetMessageRequest();
  static $pb.PbList<GetMessageRequest> createRepeated() => new $pb.PbList<GetMessageRequest>();
  static GetMessageRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetMessageRequest _defaultInstance;
  static void $checkItem(GetMessageRequest v) {
    if (v is! GetMessageRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get messageId => $_getS(0, '');
  set messageId(String v) { $_setString(0, v); }
  bool hasMessageId() => $_has(0);
  void clearMessageId() => clearField(1);
}

class StreamMessagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StreamMessagesRequest', package: const $pb.PackageName('chat'))
    ..aOS(1, 'gameId')
    ..hasRequiredFields = false
  ;

  StreamMessagesRequest() : super();
  StreamMessagesRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StreamMessagesRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StreamMessagesRequest clone() => new StreamMessagesRequest()..mergeFromMessage(this);
  StreamMessagesRequest copyWith(void Function(StreamMessagesRequest) updates) => super.copyWith((message) => updates(message as StreamMessagesRequest));
  $pb.BuilderInfo get info_ => _i;
  static StreamMessagesRequest create() => new StreamMessagesRequest();
  static $pb.PbList<StreamMessagesRequest> createRepeated() => new $pb.PbList<StreamMessagesRequest>();
  static StreamMessagesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StreamMessagesRequest _defaultInstance;
  static void $checkItem(StreamMessagesRequest v) {
    if (v is! StreamMessagesRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get gameId => $_getS(0, '');
  set gameId(String v) { $_setString(0, v); }
  bool hasGameId() => $_has(0);
  void clearGameId() => clearField(1);
}

class ChatServiceApi {
  $pb.RpcClient _client;
  ChatServiceApi(this._client);

  Future<Message> createMessage($pb.ClientContext ctx, CreateMessageRequest request) {
    var emptyResponse = new Message();
    return _client.invoke<Message>(ctx, 'ChatService', 'createMessage', request, emptyResponse);
  }
  Future<Message> getMessage($pb.ClientContext ctx, GetMessageRequest request) {
    var emptyResponse = new Message();
    return _client.invoke<Message>(ctx, 'ChatService', 'getMessage', request, emptyResponse);
  }
  Future<Message> streamMessages($pb.ClientContext ctx, StreamMessagesRequest request) {
    var emptyResponse = new Message();
    return _client.invoke<Message>(ctx, 'ChatService', 'streamMessages', request, emptyResponse);
  }
}

