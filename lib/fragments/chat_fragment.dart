import 'package:flutter/material.dart';

import 'package:ticket_to_ride/presenters/chat_presenter.dart';
import 'fragment.dart';

import 'dart:io';

class ChatFragment extends Fragment {
  ChatFragment(ChatPresenter presenter, {Key key, this.title}) : 
    this.presenter = presenter, super(presenter, key: key); 

  final String title;
  final ChatPresenter presenter;

  @override
  ChatFragmentState createState() => new ChatFragmentState();
}

class ChatFragmentState extends FragmentState {

  final TextEditingController _textEditingController =
      new TextEditingController();
  bool _isComposingMessage = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Chat"),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Divider(height: 1.0),
              new Container(
                decoration:
                    new BoxDecoration(color: Theme.of(context).cardColor),
                child: _buildTextComposer(),
              ),
              new Builder(builder: (BuildContext context) {
                return new Container(width: 0.0, height: 0.0);
              })
            ],
          ),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? new BoxDecoration(
                  border: new Border(
                      top: new BorderSide(
                  color: Colors.grey[200],
                )))
              : null,
        ));
  }


  IconButton getDefaultSendButton() {
    return new IconButton(
      icon: new Icon(Icons.send),
      onPressed: _isComposingMessage
          ? () => _textMessageSubmitted(_textEditingController.text)
          : null,
    );
  }

  Widget _buildTextComposer() {
    return new IconTheme(
        data: new IconThemeData(
          color: _isComposingMessage
              ? Theme.of(context).accentColor
              : Theme.of(context).disabledColor,
        ),
        child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Container(
                margin: new EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                    icon: new Icon(
                      Icons.photo_camera,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () async {
                      int timestamp = new DateTime.now().millisecondsSinceEpoch;
                      _sendMessage(null);
                    }
                )
              ),
              new Flexible(
                child: new TextField(
                  controller: _textEditingController,
                  onChanged: (String content) {
                    setState(() {
                      _isComposingMessage = content.length > 0;
                    });
                  },
                  onSubmitted: _textMessageSubmitted,
                  decoration:
                      new InputDecoration.collapsed(hintText: "Send a message"),
                ),
              ),
            ],
          ),
        ));
  }

  Future<Null> _textMessageSubmitted(String text) async {
    _textEditingController.clear();

    setState(() {
      _isComposingMessage = false;
    });

    _sendMessage(text);
  }

  void _sendMessage(String content) {
  }
}