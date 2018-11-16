import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/game_history_fragment.dart';

class GameHistoryPresenter {

  final String title;
  GameHistoryFragment fragment;

  // default constructor
  GameHistoryPresenter({this.title}) {
    var request = StreamMessagesRequest();
    var ctx = ClientContext();
    request.gameId = GlobalContext().currentGameId;
    
    var stream; // TODO stream from historyProxy

    fragment = GameHistoryFragment(this, key: historyFragmentKey, messages: stream);
  }

  // another constructor with fragment passed in
  GameHistoryPresenter.fromFragment(GameHistoryFragment fragment, {this.title}) {
    fragment = fragment;
  }


  getEventMessages() {
    var ctx = ClientContext();

    var request = new api.StreamMessagesRequest();
    request.gameId = GlobalContext().currentGameId;

    // TODO stream EventMessages from historyProxy
    //return api.gameProxy
  }

  sendEventMessage(request) async {
    try {
      if (request.content == null) {
        throw("empty message");
      }

      var ctx = ClientContext();

      try{
        var msg;  // TODO await historyProxy createEventMessage

        return msg;

      } catch(error) {
        print(error.code);
        print(error.message);
      }



      

    } catch(error) {
        print(error);
        print(error.code);
        print(error.message);
    }

  }

  Widget build() {
    return fragment;
  }
}
