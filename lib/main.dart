import 'package:flutter/material.dart';
import 'package:ticket_to_ride/theme/theme.dart';
import 'package:ticket_to_ride/global_context_widget.dart';

import 'package:ticket_to_ride/fragments/account_login_fragment.dart';
import 'package:ticket_to_ride/fragments/lobby_view_fragment.dart';

import 'package:ticket_to_ride/presenters/account_login_presenter.dart';
import 'package:ticket_to_ride/presenters/lobby_view_presenter.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';

void main() async {
  runApp(new TicketToRideApp());
}

class TicketToRideApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var loginPresenter = new AccountLoginPresenter();
    // var loginView = new AccountLoginFragment();

    return GlobalContextDEPR(
      child: new MaterialApp(
        title: 'Ticket to Ride',
        theme: ticketToRideTheme,
        home: new AccountLoginFragment(loginPresenter.getApi(), title: 'Login'),
        routes: <String, WidgetBuilder>{
         '/login_page': (BuildContext context) {
            var fragment = new AccountLoginFragment(loginPresenter.getApi(), title: 'Login');

            loginPresenter.setFragment(fragment);

            return fragment;
          },
         //'/game_selection': (BuildContext context) => ,
         '/lobby_view': (BuildContext context) => new LobbyViewFragment(LobbyViewPresenter(), title: 'Login'),
        },
      )
    );
  }
}
