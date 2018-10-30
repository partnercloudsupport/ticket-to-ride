import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/fragments/account_login_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class AccountLoginApi {
  login(ctx, request) {
    return api.authProxy.login(ctx, request);
  }

  register(ctx, request) {
    return api.authProxy.register(ctx, request);
  }
}

class AccountLoginPresenter implements AccountLoginObserver {

  AccountLoginApi _api;
  AccountLoginFragment _fragment;
  Login data;

  AccountLoginPresenter(this._fragment) {
    this._api = new AccountLoginApi();
    data = Login();
  }

  AccountLoginPresenter.withApi(this._api);

  @override
  accountLogin(form) async {
    if (form.validate()) {
      form.save();
      var ctx = ClientContext();

      try {
        var request = new api.LoginAccountRequest();
        request.username = data.username;
        request.password = data.password;
        var response = await _api.login(ctx, request);

        GlobalContext().userId = response.userId;
        _fragment.navigatePush('/game_selection');

      } catch(error) {
        print(error);
        print(error.code);
        print(error.message);

        switch(error.code) {
          case api.Code.NOT_FOUND:
            showErrorToast('Account does not exist');
            break;
          case api.Code.ACCESS_DENIED:
            showErrorToast('Incorrect password');
            break;
          default:
            showErrorToast('UNKNOWN ERROR');
        }

      }
    }
  }

  @override
  accountRegister(form) async {
    if (form.validate()) {
      form.save();

      var ctx = ClientContext();

      try {
        var request = new api.LoginAccountRequest();
        request.username = data.username;
        request.password = data.password;
        var response = await _api.register(ctx, request);

        GlobalContext().userId = response.userId;
        _fragment.navigatePush('/game_selection');

      } catch(error) {
        print(error.code);
        print(error.message);

        switch(error.code) {
          case api.Code.INVALID_ARGUMENT:
            showErrorToast('Username already exists.');
            break;
          default:
            showErrorToast('UNKNOWN ERROR');
        }
      }
    }
  }
}
