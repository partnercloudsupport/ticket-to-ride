import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ticket_to_ride/global_context.dart';

import 'package:ticket_to_ride/presenters/presenter.dart';

class Fragment extends StatefulWidget {

  Fragment(Presenter presenter, {Key key, this.title}) :
    this.presenter = presenter, super(key: key);

  final String title;
  final Presenter presenter;
  final fragmentKey = GlobalKey<FragmentState>();

  void showErrorToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        bgcolor: "#e74c3c",
        textcolor: '#ffffff',
        timeInSecForIos: 5,
        gravity: ToastGravity.TOP
      );
  }

  void onCurrentGameIdChange(String gameId) {
    GlobalContext().setCurrentGameId(gameId);
  }

  void onCurrentUserIdChange(String userId) {
    GlobalContext().setCurrentUserId(userId);
  }

  @override
  State<Fragment> createState() => new FragmentState();
}

class FragmentState extends State<Fragment> {

  void pushNavigator(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
