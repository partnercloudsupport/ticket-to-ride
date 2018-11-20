import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';
import 'package:ticket_to_ride/api/player_wrapper.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';
import 'fragment_library.dart';

import 'package:ticket_to_ride/theme/theme.dart';

import 'package:ticket_to_ride/presenters/history_presenter.dart';

import 'dart:async';

final historyFragmentKey = GlobalKey<HistoryFragmentState>();

class HistoryPresenterApi {
  sendMessage(request) async {}
  streamMessages(request) async {}
}

// TODO get protobuf model class for "EventMessage"

class ActionWidget extends StatelessWidget {
  final String messageId;
  final String content;
  final int timestamp;
  final Player player;

  final String playerId;

  // default constructor from Message and Player
  ActionWidget(api.GameAction action, Player player) : messageId = action.actionId,
    content = action.action, timestamp = action.timestamp, player = player, playerId = player.playerId;


  @override
  Widget build(BuildContext context) {
    print("building ActionWidget: " + content);
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Container(
            margin: const EdgeInsets.only(right: 16.0),
            child:  CircleAvatar(
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/player-${getPlayerColor(player.color)}.jpg"),
                  ),
                  shape: BoxShape.circle,
                )
              )
            ),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Text(player.username, style: Theme.of(context).textTheme.subhead),
               Container(
                margin: const EdgeInsets.only(top: 5.0),
                child:  Text(content),

              )
            ],
          )
        ],
      )
    );
  }
}


class HistoryFragment extends StatefulWidget {
  HistoryFragment(HistoryPresenter presenter, {Key key, this.title, this.actions}) :
    this.presenter = presenter;

  final String title;
  final HistoryPresenter presenter;
  final Stream<api.GameAction> actions;

  @override
  HistoryFragmentState createState() => HistoryFragmentState();
}

class HistoryFragmentState extends State<HistoryFragment> {

  @override
  initState() {
    super.initState();

    streamMessages(true);
  }


  CreateMessageRequest request = CreateMessageRequest();

  List<ActionWidget> _actions = List<ActionWidget>();

  // receive an eventmessage
  void handleReceipt(api.GameAction action, Player player) {
    setState(() {
      _actions.insert(0, ActionWidget(action, player));
    });
  }

  // Create a stream that collects received messages
  void streamMessages(bool open) async {
    await for (var action in widget.actions) {
      print(action);
      if (!open) {
        break;
      }

      var player = GlobalContext().playerMap[action.playerId];
      handleReceipt(action, player);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: Stack(
        children: <Widget>[
          FragmentLibrary().background,
          Flexible(
            child: ListView.builder(
              padding:  EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) =>_actions[index],
              itemCount: _actions.length,
            ),
          ),
          Divider(
            height: 1.0
          )
        ],
      )
    );
  }
}
