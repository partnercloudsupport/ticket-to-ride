import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticket_to_ride/api/api.dart' as api;

import 'package:ticket_to_ride/fragments/account_login_fragment.dart';
import 'package:ticket_to_ride/presenters/account_login_presenter.dart';

class TestAccountLoginObserver implements AccountLoginObserver {

  var data = Login();
  var accountRegisterCalled = false;
  var accountLoginCalled = false;

  @override
  accountRegister() {
    accountRegisterCalled = true;
  }

  @override
  accountLogin() {
    accountLoginCalled = true;
  }
}

class TestAccountLoginApi implements AccountLoginApi {

  var loginValid = false;

  login(ctx, request) async {
    // if(request.username == 'test1' && request.password == 'test1') {
    //   // return 'valid';
    //
    // }
    loginValid = true;

    return api.LoginResponse();
  }

  register(ctx, request) async {
    return api.LoginResponse();
  }
}

void main() {
  testWidgets('test: AccountLogin', (WidgetTester tester) async {

    final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
    var loginTester = TestAccountLoginObserver();

    var fragment = new AccountLoginFragment(navigatorKey, title: 'Login');
    fragment.addObserver(loginTester);

    await tester.pumpWidget(MaterialApp(home: fragment));
    await tester.enterText(find.byKey(Key('username')), 'user1');
    await tester.enterText(find.byKey(Key('password')), 'user1');

    print('test login button');
    expect(loginTester.accountLoginCalled, isFalse);
    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pump();
    expect(loginTester.accountLoginCalled, isTrue);

    print('test register button');
    expect(loginTester.accountRegisterCalled, isFalse);
    await tester.tap(find.byKey(Key('registerButton')));
    await tester.pump();
    expect(loginTester.accountRegisterCalled, isTrue);

  });

  testWidgets('test: AccountLoginApi', (WidgetTester tester) async {

    var loginApiTester = TestAccountLoginApi();

    final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

    var fragment = new AccountLoginFragment(navigatorKey, title: 'Login');
    var presenter = AccountLoginPresenter.withApi(fragment, loginApiTester);

    await tester.pumpWidget(MaterialApp(
      home: fragment,
      navigatorKey: navigatorKey,
      routes: <String, WidgetBuilder>{
        '/game_selection': (BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
              title: const Text('Welcome to Flutter'),
            ),
          );
        }},
    ));

    expect(loginApiTester.loginValid, isFalse);
    presenter.data.username = 'test1';
    presenter.data.password = 'test1';
    presenter.accountLogin();
    expect(loginApiTester.loginValid, isTrue);

  });
}
