import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:ticket_to_ride/fragments/create_game_fragment.dart';

class Activity extends StatefulWidget {
  Activity({Key key, this.title}) : super(key: key); 

  final String title;

  @override
  ActivityState createState() => new ActivityState();
}

class ActivityState extends State<Activity> {

  void onCurrentGameIdChange(String newValue) {
    GlobalContext.of(context).onCurrentGameIdChange(newValue);
  }

  void onUserIdChange(String newValue) {
    GlobalContext.of(context).onUserIdChange(newValue);
  }

  void pushNavigator(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  

  @override
  Widget build(BuildContext context) {
    return null;
  }

}