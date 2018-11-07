import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';
import 'package:ticket_to_ride/api/player_wrapper.dart';

import 'package:ticket_to_ride/theme/theme.dart';

import 'package:ticket_to_ride/presenters/chat_presenter.dart';

import 'dart:async';

final chatFragmentKey = GlobalKey<ChatFragmentState>();

class ChatPresenterApi {
  sendMessage(request) async {}
  streamMessages(request) async {}
}

class ChatMessage extends StatelessWidget {
  final String messageId;
  final String content;
  final int timestamp;
  final Player player;

  // default constructor from Message and Player
  ChatMessage(Message msg, Player player) : messageId = msg.messageId,
    content = msg.content, timestamp = msg.timestamp, player = player;


  // return lowercase color text for proper color asset access
  _getColor(colorCode) {
    switch(colorCode) {
      case api.Player_Color.RED:
        return 'red';
      case api.Player_Color.BLUE:
        return 'blue';
      case api.Player_Color.GREEN:
        return 'green';
      case api.Player_Color.PURPLE:
        return 'purple';
      case api.Player_Color.ORANGE:
        return 'orange';
      case api.Player_Color.YELLOW:
        return 'yellow';
    }
  }

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
                    image: AssetImage("images/player-${_getColor(player.color)}.jpg"),
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


class ChatFragment extends StatefulWidget {
  ChatFragment(ChatPresenter presenter, {Key key, this.title, this.messages}) :
    this.presenter = presenter;

  final String title;
  final ChatPresenter presenter;
  final Stream<Message> messages;

  @override
  ChatFragmentState createState() => ChatFragmentState();
}

class ChatFragmentState extends State<ChatFragment> {

  @override
  initState() {
    super.initState();

    streamMessages(true);
  }


  CreateMessageRequest request = CreateMessageRequest();

  final TextEditingController _chatController =  TextEditingController();
  List<ChatMessage> _messages = List<ChatMessage>();

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
      this.widget.presenter.sendMessage(request);
    } catch(error) {
        print(error.code);
        print(error.message);
    }
  }

  // receive a message
  void handleReceipt(Message msg, Player player) {
    setState(() {
      _messages.insert(0, ChatMessage(msg, player));
    });
  }

  _getMessages() async {
    List<dynamic> messages;

    await for (Message msg in this.widget.presenter.getMessages()) {
      if (msg != null) {
        print('msg: ' + msg.content);
        print('pre-map player id: ' + msg.playerId);
        var player = GlobalContext().playerMap[msg.playerId];
        if (player != null) {
          print('stream finds player ' + player.playerId);
          messages.insert(0, ChatMessage(msg, player));
        } else print('player is null');
      } else print('msg is null');
    }

    setState(() {
          _messages = messages;
    });
  }

  // Create a stream that collects received messages
  void streamMessages(bool open) async {

    print('streaming messages');

    await for (Message msg in widget.messages) {
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


  Widget _chatEnvironment (){
    return IconTheme(
      data:  IconThemeData(color: Colors.blue),
          child:  Container(
        margin: const EdgeInsets.symmetric(horizontal:8.0),
        child:  Row(
          children: <Widget>[
             Flexible(
              child:  TextField(
                decoration:  InputDecoration.collapsed(hintText: "Type a message ..."),
                controller: _chatController,
                onSubmitted: handleSubmit,
              ),
            ),
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
          child: _chatEnvironment(),)
        ],
      )
    );
  }
}
