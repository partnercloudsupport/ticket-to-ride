import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FragmentLibrary {

  static GlobalKey<NavigatorState> _navKey;

  static void setNavKey(navKey) {
    _navKey = navKey;
  }

  static void showErrorToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      bgcolor: "#e74c3c",
      textcolor: '#ffffff',
      timeInSecForIos: 5,
      gravity: ToastGravity.TOP
    );
  }

  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      textcolor: '#ffffff',
      timeInSecForIos: 5,
      gravity: ToastGravity.TOP
    );
  }

  static void navigatePush(String routeName) {
    _navKey.currentState.pushNamed(routeName);
  }

  static void navigatePop() {
    _navKey.currentState.pop();
  }


}
