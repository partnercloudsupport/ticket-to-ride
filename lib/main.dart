import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'account_login_page.dart';
import 'global_context_widget.dart';


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
        home: new AccountLoginPage(title: 'Ticket to Ride'),
        routes: <String, WidgetBuilder>{
         // '/login_page': (BuildContext context) => new ProjectViewPage(title: 'No Project Selected'),
        },
      )
    );
  }
}
