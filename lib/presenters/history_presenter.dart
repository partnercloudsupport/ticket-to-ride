import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/history_fragment.dart';

class HistoryPresenter {

  final String title;
  HistoryFragment fragment;

  // default constructor
  HistoryPresenter({this.title}) {
    var request = api.StreamHistoryRequest();
    var ctx = ClientContext();
    request.gameId = GlobalContext().currentGameId;
    
    var stream = api.gameProxy.streamHistory(ctx, request);

    fragment = HistoryFragment(this, key: historyFragmentKey, actions: stream);
  }

  // another constructor with fragment passed in
  HistoryPresenter.fromFragment(HistoryFragment fragment, {this.title}) {
    fragment = fragment;
  }


  getEventMessages() {
    var ctx = ClientContext();

    var request = new api.StreamMessagesRequest();
    request.gameId = GlobalContext().currentGameId;

    // TODO stream EventMessages from historyProxy
    //return api.gameProxy
  }

  Widget build() {
    return fragment;
  }
}
