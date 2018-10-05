import 'package:flutter/material.dart';
import 'colors.dart';

final ThemeData ticketToRideTheme = _buildTicketToRideTheme();

ThemeData _buildTicketToRideTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: ttrGold,
    primaryColor: ttrGold,
    buttonColor: ttrGold,
    scaffoldBackgroundColor: playbackBackgroundWhite,
    cardColor: playbackBackgroundWhite,
    textSelectionColor: ttrGold,
    errorColor: playbackErrorRed,
    //TODO: Add the text themes (103)
    //TODO: Add the icon themes (103)
    //TODO: Decorate the inputs (103)
  );
}
