import 'package:flutter/material.dart';
import 'package:ticket_to_ride/theme/theme.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

import 'package:ticket_to_ride/presenters/account_login_presenter.dart';
import 'package:ticket_to_ride/presenters/lobby_view_presenter.dart';
import 'package:ticket_to_ride/presenters/game_view_presenter.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';
import 'package:ticket_to_ride/presenters/dest_card_select_presenter.dart';
import 'package:ticket_to_ride/presenters/chat_presenter.dart';
// import game history

void main() async {
  runApp(new TicketToRideApp());
}

class TicketToRideApp extends StatelessWidget {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    FragmentLibrary.setNavKey(navigatorKey);

    return MaterialApp(
      title: 'Ticket to Ride',
      theme: ticketToRideTheme,
      initialRoute: '/game_view',
      navigatorKey: navigatorKey,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => AccountLoginPresenter().build(),
        '/game_selection': (BuildContext context) => GameSelectionPresenter().build(),
        '/lobby_view': (BuildContext context) => LobbyViewPresenter().build(),
        '/game_view': (BuildContext context) => GameViewPresenter().build(),
        // '/chat' : (BuildContext context) => ChatPresenter().build(),
        // '/game_history' : (BuildContext context) => ChatPresenter().build(),
        '/dest_card_select' : (BuildContext context) => DestCardSelectPresenter().build(),
      },
    );
  }
}
