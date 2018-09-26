import 'package:flutter/material.dart';
// import 'package:playback/api/api.dart';

class GlobalContext extends StatefulWidget {
  final Widget child;

  GlobalContext({this.child});

  @override
  GlobalContextState createState() => new GlobalContextState();

  static GlobalContextState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_GlobalContext) as _GlobalContext).data;
  }
}

class GlobalContextState extends State<GlobalContext> {
  // Project _currentProject;
  // only expose a getter to prevent bad usage
  // Project get currentProject => _currentProject;
  //
  // void onCurrentProjectChange(Project newValue) {
  //   setState(() {
  //     _currentProject = newValue;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return new _GlobalContext(
      data: this,
      child: widget.child,
    );
  }
}

/// Only has GlobalContextState as field.
class _GlobalContext extends InheritedWidget {
  final GlobalContextState data;

  _GlobalContext({Key key, this.data, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_GlobalContext old) {
    return true;
  }
}
