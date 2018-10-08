import 'package:flutter/material.dart';
import 'package:ticket_to_ride/theme/theme.dart';
import 'package:ticket_to_ride/account_login_page.dart';
import 'package:ticket_to_ride/game_selection_page.dart';
import 'package:ticket_to_ride/lobby_view_page.dart';
import 'package:ticket_to_ride/global_context_widget.dart';


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
        home: new AccountLoginPage(title: 'Ticket to Ride'),//new LobbyViewPage(title: 'Game Lobby'), //
        routes: <String, WidgetBuilder>{
         '/login_page': (BuildContext context) => new AccountLoginPage(title: 'Login'),
         '/game_selection': (BuildContext context) => new GameSelectionPage(title: 'Game Selection'),
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
          '/lobby_view': (BuildContext context) => new LobbyViewPage(title: 'Game Lobby'),
        }
      )
    );
  }
}
