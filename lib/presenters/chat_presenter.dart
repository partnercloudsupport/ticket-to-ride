import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/chat_fragment.dart';

class ChatPresenter {

  final String title;
  ChatFragment fragment;

  // default constructor
  ChatPresenter({this.title}) {
    var request = StreamMessagesRequest();
    var ctx = ClientContext();
    request.gameId = GlobalContext().currentGameId;
    var stream = api.chatProxy.streamMessages(ctx, request);

    fragment = ChatFragment(this, key: chatFragmentKey, messages: stream);
  }

  // another constructor with fragment passed in
  ChatPresenter.fromFragment(ChatFragment fragment, {this.title}) {
    fragment = fragment;
  }


  getMessages() {
    var ctx = ClientContext();

    var request = new api.StreamMessagesRequest();
    request.gameId = GlobalContext().currentGameId;

    return api.chatProxy.streamMessages(ctx, request);
  }

  sendMessage(request) async {
    try {
      if (request.content == null) {
        throw("empty message");
      }

      var ctx = ClientContext();

      try{
        var msg = await api.chatProxy.createMessage(ctx, request);
        return msg;

      } catch(error) {
        print(error.code);
        print(error.message);
      }

    } catch(error) {
        print(error.toString());
    }

  }

  Widget build() {
    return fragment;
  }
}
