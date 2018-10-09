import 'package:flutter/material.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context_widget.dart';

abstract class AccountLogin {
  Login login;

  accountLogin(context, formKey) async {}
  accountRegister(context, formKey) async {}
}

class AccountLoginApi {
  login(ctx, request) {
    return api.authProxy.login(ctx, request);
  }

  register(ctx, request) {
    return api.authProxy.register(ctx, request);
  }
}

class Login {
  String username;
  String password;
}

class AccountLoginPresenter implements AccountLogin {

  AccountLoginApi _api;
  var login = Login();

  AccountLoginPresenter() {
    this._api = new AccountLoginApi();
  }

  AccountLoginPresenter.withApi(this._api);

  @override
  accountLogin(context, form) async {
    if (form.validate()) {
      form.save();
      var ctx = ClientContext();

      try {
        var request = new api.LoginAccountRequest();
        request.username = login.username;
        request.password = login.password;
        var response = await _api.login(ctx, request);

        GlobalContext.of(context).onUserIdChange(response.userId);
        Navigator.of(context).pushNamed('/game_selection');

      } catch(error) {
        String errorMessage;
        switch(error.code) {
          case api.Code.NOT_FOUND:
            errorMessage = 'Account does not exist';
            break;
          case api.Code.ACCESS_DENIED:
            errorMessage = 'Incorrect password';
            break;
          default:
            errorMessage = 'UNKNOWN ERROR';
        }

        print(error.code);
        print(error.message);
        throw errorMessage;
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
        var response = await _api.register(ctx, request);

        GlobalContext.of(context).onUserIdChange(response.userId);
        Navigator.of(context).pushNamed('/game_selection');

      } catch(error) {
        String errorMessage;
        switch(error.code) {
          case api.Code.INVALID_ARGUMENT:
            errorMessage = 'Username already exists.';
            break;
          default:
            errorMessage = 'UNKNOWN ERROR';
        }

        print(error.code);
        print(error.message);
        throw errorMessage;
      }
    }
  }
}
