import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/chat_fragment.dart';


class ChatPresenter {

  final String title;
  ChatFragment fragment;

  // default constructor
  ChatPresenter({this.title}) {
    fragment = ChatFragment(this);
  }

  // another constructor with fragment passed in
  ChatPresenter.fromFragment(ChatFragment fragment, {this.title}) {
    fragment = fragment;
  }

  /*

  Stream<Message> _onMessageReceived;
  var _channel;

  sendMessage(String content) {

  }

  // Create a stream that collects received messages
  Stream<Message> get onMessageReceived {
    if (_onMessageReceived == null) {
      print("Creating message receiver");
      _onMessageReceived = _channel.receiveBroadcastStream().map((dynamic event) {
        Message msg = new Message.fromJson(event);
        msg.kind = MessageKind.Received;
        return msg;
      });
    }
    return _onMessageReceived;
  }

  */

}