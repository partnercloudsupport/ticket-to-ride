import 'package:flutter/material.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/chat.pb.dart';

import 'package:ticket_to_ride/presenters/chat_presenter.dart';

import 'dart:io';

class ChatPresenterApi {
  sendMessage(request) async {}
  streamMessages(request) async {}
}

class ChatMessage extends StatelessWidget {
  final String text;

// constructor to get text from textfield
  ChatMessage({
    this.text
  });

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
              child: null,  // TODO add icon 
              ),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               null, //Text(_name, style: Theme.of(context).textTheme.subhead)  // TODO add name
               Container(
                margin: const EdgeInsets.only(top: 5.0),
                child:  Text(text),

              )
            ],
          )
        ],
      )
    );
  }
}


class ChatFragment extends StatefulWidget {
  ChatFragment(ChatPresenter presenter, {Key key, this.title}) : 
    this.presenter = presenter;

  final String title;
  final ChatPresenter presenter;

  @override
  ChatFragmentState createState() => new ChatFragmentState();
}

class ChatFragmentState extends State<ChatFragment> {

  var request = api.CreateGameRequest();

  final TextEditingController _chatController =  TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmit(String text) {
    _chatController.clear();
      ChatMessage message =  ChatMessage(
        text: text
    );      
    setState(() {
       _messages.insert(0, message);
    });

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
                onSubmitted: _handleSubmit,
              ),
            ),
             Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child:  IconButton(
                icon:  Icon(Icons.send),
                
                onPressed: ()=> _handleSubmit(_chatController.text),
                 
              ),
            )
          ],
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget>[
           Flexible(
            child: ListView.builder(
              padding:  EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
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
      );
  }
}