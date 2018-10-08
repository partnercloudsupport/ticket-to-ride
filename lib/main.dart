import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'account_login_page.dart';
import 'game_selection_page.dart';
import 'lobby_view_page.dart';
import 'global_context_widget.dart';


void main() async {
  runApp(new TicketToRideApp());
  //runApp(DerpyTestDriver());
}

class TicketToRideApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalContext(
      child: new MaterialApp(
        title: 'Ticket to Ride',
        theme: ticketToRideTheme,
        home: new LobbyViewPage(title: 'Game Lobby'), //new AccountLoginPage(title: 'Ticket to Ride'),//
        routes: <String, WidgetBuilder>{
         '/login_page': (BuildContext context) => new AccountLoginPage(title: 'Login'),
         '/game_selection': (BuildContext context) => new GameSelectionPage(title: 'Current Games'),
         '/lobby_view': (BuildContext context) => new LobbyViewPage(title: 'Game Lobby'),
        },
      )
    );
  }
}

class DerpyTestDriver extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GlobalContext(
      child: MaterialApp(
        title: 'Ticket to Ride Derpy Test Driver',
        theme: ticketToRideTheme,
        home: GameSelectionPage(title: 'Ticket to Ride Derpy Test Driver'),
        routes: <String, WidgetBuilder> {
        }
      )
    );
  }
}
