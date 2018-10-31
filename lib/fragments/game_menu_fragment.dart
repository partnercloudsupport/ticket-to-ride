import 'package:flutter/material.dart';

abstract class GameMenuObserver {
  openChat() {}
  openGameHistory() {}
}

class GameMenuFragment extends StatefulWidget {
  GameMenuFragment({Key key, this.title}) : super(key: key);

  final observers = List<GameMenuObserver>();
  final String title;

  void addObserver(GameMenuObserver o) {
    observers.add(o);
  }

  void removeObserver(GameMenuObserver o) {
    observers.remove(o);
  }

  @override
  _GameMenuFragmentState createState() => new _GameMenuFragmentState();
}

class _GameMenuFragmentState extends State<GameMenuFragment> {

  @override
  Widget build(BuildContext context) {

    _buildChatButton() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: RaisedButton(
          key: Key('chatButton'),
          onPressed: () {
            for (var o in widget.observers) {
              o.openChat();
            }
          },
          child: Text(
            'Chat',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0
            ),
          ),
        ),
      );
    }

    _buildHistoryButton() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: RaisedButton(
          key: Key('historyButton'),
          onPressed: () {
            for (var o in widget.observers) {
              o.openGameHistory();
            }
          },
          child: Text(
            'History',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0
            ),
          ),
        ),
      );
    }

    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.from([
        _buildChatButton(),
        _buildHistoryButton(),
      ])
    );
  }
}
