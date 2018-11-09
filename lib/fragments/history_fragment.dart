import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';
import 'package:ticket_to_ride/api/player_wrapper.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';

import 'package:ticket_to_ride/theme/theme.dart';

import 'package:ticket_to_ride/presenters/history_presenter.dart';

import 'dart:async';

final chatFragmentKey = GlobalKey<ChatFragmentState>();

class HistoryPresenterApi {
  sendMessage(request) async {}
  streamMessages(request) async {}
}

// TODO get protobuf model class for "EventMessage"

class EventMessage extends StatelessWidget {
  final String messageId;
  final String content;
  final int timestamp;
  final Player player;

  final String playerId;

  // default constructor from Message and Player
  EventMessage(EventMessage msg, Player player) : messageId = msg.messageId,
    content = msg.content, timestamp = msg.timestamp, player = player, playerId = player.playerId;


  @override
  Widget build(BuildContext context) {
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
                  )
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
  HistoryFragment(HistoryPresenter presenter, {Key key, this.title, this.messages}) :
    this.presenter = presenter;

  final String title;
  final HistoryPresenter presenter;
  final Stream<EventMessage> messages;

  @override
  ChatFragmentState createState() => ChatFragmentState();
}

class ChatFragmentState extends State<HistoryFragment> {

  @override
  initState() {
    super.initState();

    streamMessages(true);
  }


  CreateMessageRequest request = CreateMessageRequest();

  final TextEditingController _chatController =  TextEditingController();
  List<EventMessage> _messages = List<EventMessage>();

  var _background = Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage("images/background2.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  );

  // send a message
  void handleSubmit(String content) {
    _chatController.clear();
    request.playerId = GlobalContext().currentPlayerId;
    request.content = content;

    try {
      this.widget.presenter.sendEventMessage(request);
    } catch(error) {
        print(error.code);
        print(error.message);
    }
  }

  // receive an eventmessage
  void handleReceipt(EventMessage msg, Player player) {
    setState(() {
      _messages.insert(0, EventMessage(msg, player));
    });
  }

  // Create a stream that collects received messages
  void streamMessages(bool open) async {

    print('streaming messages');

    await for (EventMessage msg in widget.messages) {
      if (!open) {
        break;
      }
      if (msg != null) {
        print('msg: ' + msg.content);
        print('pre-map player id: ' + msg.playerId);
        var player = GlobalContext().playerMap[msg.playerId];
        if (player != null) {
          print('stream finds player ' + player.playerId);
          handleReceipt(msg, player);
        } else print('player is null');
      } else print('msg is null');
    }

  }


  Widget _historyEnvironment (){
    return IconTheme(
      data:  IconThemeData(color: Colors.blue),
          child:  Container(
        margin: const EdgeInsets.symmetric(horizontal:8.0),
        child:  Row(
          children: <Widget>[
             Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child:  IconButton(
                icon:  Icon(Icons.send),
                color: ticketToRideTheme.buttonColor,
                onPressed: ()=> handleSubmit(_chatController.text),
              ),
            )
          ],
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Column(
        children: <Widget>[
          _background,
           Flexible(
            child: ListView.builder(
              padding:  EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) =>_messages[index],
              itemCount: _messages.length,
            ),
          ),
           Divider(
            height: 1.0,
          ),
           Container(decoration:  BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _historyEnvironment(),)
        ],
      )
    );
  }
}
