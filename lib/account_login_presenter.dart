import 'package:flutter/material.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AccountLogin {
    void accountLogin(context, formKey) {}
    void accountRegister(context, formKey) {}
}

class Login {
  String username;
  String password;
}

class AccountLoginPresenter implements AccountLogin {

  final login = Login();

  void _showErrorToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        bgcolor: "#e74c3c",
        textcolor: '#ffffff',
        timeInSecForIos: 5,
        gravity: ToastGravity.TOP
    );
  }

  @override
  accountLogin(context, form) async {
    if (form.validate()) {
      form.save();
      var ctx = ClientContext();

      try {
        var request = new api.LoginAccountRequest();
        request.username = login.username;
        request.password = login.password;
        var response = await api.authProxy.login(ctx, request);

        GlobalContext.of(context).onUserIdChange(response.userId);
        Navigator.of(context).pushNamed('/game_selection');

      } catch(error) {
        switch(error.code) {
          case api.Code.NOT_FOUND:
            _showErrorToast('Account does not exist');
            break;
          case api.Code.ACCESS_DENIED:
            _showErrorToast('Incorrect password');
            break;
          default:
            _showErrorToast('UNKNOWN ERROR');
        }

        print(error.code);
        print(error.message);
      }
    }
  }

  @override
  accountRegister(context, form) async {
    if (form.validate()) {
      form.save();

      var ctx = ClientContext();

      try {
        var request = new api.LoginAccountRequest();
        request.username = login.username;
        request.password = login.password;
        var response = await api.authProxy.register(ctx, request);

        GlobalContext.of(context).onUserIdChange(response.userId);
        Navigator.of(context).pushNamed('/game_selection');

      } catch(error) {
        switch(error.code) {
          case api.Code.INVALID_ARGUMENT:
            _showErrorToast('Username already exists.');
            break;
          default:
            _showErrorToast('UNKNOWN ERROR');
        }

        print(error.code);
        print(error.message);
      }
    }
  }
}
