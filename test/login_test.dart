import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ticket_to_ride/fragments/account_login_fragment.dart';
import 'package:ticket_to_ride/presenters/account_login_presenter.dart';

class TestAccountLogin implements AccountLoginObserver {

  var data = Login();
  var accountRegisterCalled = false;
  var accountLoginCalled = false;

  @override
  accountRegister(context, form) {
    accountRegisterCalled = true;
  }

  @override
  accountLogin(context, form) {
    accountLoginCalled = true;
  }
}

class TestAccountLoginApi implements AccountLoginApi {
  login(ctx, request) {

  }

  register(ctx, request) {

  }
}

void main() {
  testWidgets('test: AccountLogin', (WidgetTester tester) async {

    var loginTester = TestAccountLogin();
    await tester.pumpWidget(MaterialApp(home: AccountLoginFragment(title: 'Testing login')));

    // test login button
    expect(loginTester.accountLoginCalled, isFalse);
    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pump();
    expect(loginTester.accountLoginCalled, isTrue);

    // test register button
    expect(loginTester.accountRegisterCalled, isFalse);
    await tester.tap(find.byKey(Key('registerButton')));
    await tester.pump();
    expect(loginTester.accountRegisterCalled, isTrue);

  });

  // testWidgets('test: AccountLoginApi', (WidgetTester tester) async {
  //   var loginApiTester = TestAccountLoginApi();
  //   var loginFields = Login();
  //   loginFields.username = 'test1';
  //   loginFields.password = 'test1';
  //
  //   var presenter = AccountLoginPresenter.withApi(loginApiTester);
  //   presenter.login = loginFields;
  //
  //   // BuildContext context = BuildContext();
  //
  //   presenter.accountLogin(BuildContext, loginFields);
  //   // var request = new api.LoginAccountRequest();
  //   // request.username = 'test1';
  //   // request.password = 'test1';
  //   // var response = await loginApiTester.login('context', request);
  //
  //   // test login api
  //
  //
  //   // test register api
  // });
}
