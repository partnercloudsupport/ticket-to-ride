import 'package:flutter/material.dart';
import 'package:ticket_to_ride/theme/theme.dart';

import 'package:ticket_to_ride/fragments/account_login_fragment.dart';
import 'package:ticket_to_ride/fragments/lobby_view_fragment.dart';

import 'package:ticket_to_ride/presenters/account_login_presenter.dart';
import 'package:ticket_to_ride/presenters/lobby_view_presenter.dart';
// import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';

void main() async {
  runApp(new TicketToRideApp());
}

class TicketToRideApp extends StatelessWidget {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket to Ride',
      theme: ticketToRideTheme,
      initialRoute: '/',
      navigatorKey: navigatorKey,
      routes: <String, WidgetBuilder>{
       '/': (BuildContext context) {
          var fragment = new AccountLoginFragment(navigatorKey, title: 'Login');
          fragment.addObserver(AccountLoginPresenter(fragment));
          return fragment;
        },
       //'/game_selection': (BuildContext context) => ,
       '/lobby_view': (BuildContext context) {
          var fragment = new LobbyViewFragment(navigatorKey, title: 'Login');
          fragment.addObserver(LobbyViewPresenter(fragment));
          return fragment;
        },
      },
    );
  }
}
