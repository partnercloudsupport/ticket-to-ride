import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/presenters/presenter-data.dart';
import 'fragment_library.dart';

import 'package:ticket_to_ride/presenters/history_presenter.dart';

import 'dart:async';

final historyFragmentKey = GlobalKey<HistoryFragmentState>();

class HistoryPresenterApi {
  sendMessage(request) async {}
  streamMessages(request) async {}
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

  List<dynamic> _actions = [];

  // Create a stream that collects received messages
  void streamMessages(bool open) async {
    await for (var action in widget.actions) {
      setState(() {
        _actions.add(action);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    print(_actions);
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
      body: Stack(
        children: <Widget>[
          FragmentLibrary().background,
          Column(
            children: <Widget>[
              Flexible(
                child: ListView.builder(
                  padding:  EdgeInsets.all(8.0),
                  // reverse: true,
                  itemBuilder: (_, int index) {
                    print(_);
                    print("building ActionWidget: $index");
                    // return  Container();
                    var action = _actions[index];
                    var player = GlobalContext().playerMap[action.playerId];
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                               Container(
                                margin: const EdgeInsets.only(top: 5.0),
                                child:  Text(action.action),

                              )
                            ],
                          )
                        ],
                      )
                    );
                  },
                  itemCount: _actions.length,
                ),
              ),
            ]
          ),
          Divider(
            height: 1.0
          )
        ],
      )
    );
  }
}
