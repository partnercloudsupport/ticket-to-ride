import 'package:flutter/material.dart';
// import 'package:playback/api/api.dart';

class GlobalContextDEPR extends StatefulWidget {
  final Widget child;

  GlobalContextDEPR({this.child});

  @override
  GlobalContextDEPRState createState() => new GlobalContextDEPRState();

  static GlobalContextDEPRState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_GlobalContextDEPR) as _GlobalContextDEPR).data;
  }
}

class GlobalContextDEPRState extends State<GlobalContextDEPR> {
  String _currentGameId;
  String _userId;

  // only expose a getter to prevent bad usage
  String get currentGameId => _currentGameId;
  String get userId => _userId;

  void onCurrentGameIdChange(String newValue) {
    setState(() {
      _currentGameId = newValue;
    });
  }

  void onUserIdChange(String newValue) {
    setState(() {
      _userId = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new _GlobalContextDEPR(
      data: this,
      child: widget.child,
    );
  }
}

/// Only has GlobalContextDEPRState as field.
class _GlobalContextDEPR extends InheritedWidget {
  final GlobalContextDEPRState data;

  _GlobalContextDEPR({Key key, this.data, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_GlobalContextDEPR old) {
    return true;
  }
}
