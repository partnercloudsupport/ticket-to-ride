import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'dart:async';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/account_login_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class AccountLoginApi {
  Future<api.LoginResponse> login(ctx, request) {
    return api.authProxy.login(ctx, request);
  }

  Future<api.LoginResponse> register(ctx, request) {
    return api.authProxy.register(ctx, request);
  }
}

class AccountLoginPresenter implements AccountLoginObserver  {

  AccountLoginApi _api;
  AccountLoginFragment _fragment;
  Login data;

  AccountLoginPresenter() {
    this._api = new AccountLoginApi();
    data = Login();
  }

  AccountLoginPresenter.withApi(this._api) {
    data = Login();
  }

  @override
  accountLogin() async {

    var ctx = ClientContext();

    try {
      var request = new api.LoginAccountRequest();
      request.username = data.username;
      request.password = data.password;
      var response = await _api.login(ctx, request);

      GlobalContext().currentUserId = response.userId;
      FragmentLibrary.navigatePush('/game_selection');

    } catch(error) {
      print(error);
      print(error.code);
      print(error.message);

      switch(error.code) {
        case api.Code.NOT_FOUND:
          FragmentLibrary.showErrorToast('Account does not exist');
          break;
        case api.Code.ACCESS_DENIED:
          FragmentLibrary.showErrorToast('Incorrect password');
          break;
        default:
          FragmentLibrary.showErrorToast('UNKNOWN ERROR');
      }
    }
  }

  @override
  accountRegister() async {

    var ctx = ClientContext();

    try {
      var request = new api.LoginAccountRequest();
      request.username = data.username;
      request.password = data.password;
      var response = await _api.register(ctx, request);

      GlobalContext().currentUserId = response.userId;
      FragmentLibrary.navigatePush('/game_selection');

    } catch(error) {
      print(error.code);
      print(error.message);

      switch(error.code) {
        case api.Code.INVALID_ARGUMENT:
          FragmentLibrary.showErrorToast('Username already exists.');
          break;
        default:
          FragmentLibrary.showErrorToast('UNKNOWN ERROR');
      }
    }
  }

  build() {
    _fragment = new AccountLoginFragment(title: 'Login');
    return _fragment;
  }
}
