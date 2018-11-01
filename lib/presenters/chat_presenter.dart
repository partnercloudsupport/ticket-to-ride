import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';
import 'package:ticket_to_ride/api/chat.pb.wwttr.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/chat_fragment.dart';

import 'dart:async';


class ChatPresenter {

  final String title;
  ChatFragment fragment;

  // default constructor
  ChatPresenter({this.title}) {
    fragment = ChatFragment(this, key: chatFragmentKey);
  }

  // another constructor with fragment passed in
  ChatPresenter.fromFragment(ChatFragment fragment, {this.title}) {
    fragment = fragment;
  }

  sendMessage(request) async {
    try {
      if (request.content == null) {
        throw("empty message");
      }

      var ctx = ClientContext();
      print('sending message with content: ' + request.content);
      print('message is for playerId: ' + request.playerId);
      var msg = await api.chatProxy.createMessage(ctx, request);

      return msg;

    } catch(error) {
        print(error);
        print(error.code);
        print(error.message);
    }

  }

  // Create a stream that collects received messages
  Stream<Message> streamMessages(request) async* {

    var ctx = ClientContext();

    await for (Message msg in api.chatProxy.streamMessages(ctx, request)) {
      var player = GlobalContext().playerMap[msg.playerId];

      chatFragmentKey.currentState.handleReceipt(msg, player);
    }

  }

  Widget build() {
    return fragment;
  }


}