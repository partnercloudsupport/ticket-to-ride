import 'package:flutter/material.dart';
import 'package:ticket_to_ride/theme/theme.dart';
import 'package:ticket_to_ride/game_selection_presenter.dart';
import 'package:ticket_to_ride/global_context_widget.dart';

import 'package:ticket_to_ride/fragments/account_login_fragment.dart';
import 'package:ticket_to_ride/fragments/lobby_view_fragment.dart';

import 'package:ticket_to_ride/account_login_presenter.dart';
import 'package:ticket_to_ride/lobby_view_presenter.dart';

void main() async {
  runApp(new TicketToRideApp());
}

class TicketToRideApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalContext(
      child: new MaterialApp(
        title: 'Ticket to Ride',
        theme: ticketToRideTheme,
        home: new AccountLoginFragment(AccountLoginPresenter(), title: 'Login'),
        routes: <String, WidgetBuilder>{
         '/login_page': (BuildContext context) => new AccountLoginFragment(AccountLoginPresenter(), title: 'Login'),
         '/game_selection': (BuildContext context) => new GameSelectionPresenter(title: 'Game Selection'),
         '/lobby_view': (BuildContext context) => new LobbyViewFragment(LobbyViewPresenter(), title: 'Login'),
        },
      )
    );
  }
}

