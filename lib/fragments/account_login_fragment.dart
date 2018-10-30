import 'package:flutter/material.dart';

class Login {
  String username;
  String password;
}

// abstract class for presenter to implement
abstract class AccountLoginObserver {
  Login data;

  accountLogin() async {}
  accountRegister() async {}
}

class AccountLoginFragment extends StatefulWidget {
  AccountLoginFragment(this.navKey, {Key key, this.title}) : super(key: key);

  final GlobalKey<NavigatorState> navKey;
  final observers = List<AccountLoginObserver>();
  final String title;

  void addObserver(AccountLoginObserver o) {
    observers.add(o);
  }

  void removeObserver(AccountLoginObserver o) {
    observers.remove(o);
  }

  void navigatePush(String routeName) {
    navKey.currentState.pushNamed(routeName);
  }

  void navigatePop() {
    navKey.currentState.pop();
  }

  @override
  _AccountLoginFragmentState createState() => new _AccountLoginFragmentState();
}

class _AccountLoginFragmentState extends State<AccountLoginFragment> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    _login() async {
      if (_formKey.currentState.validate()) {
        _formKey.currentState.save();

        for (var o in widget.observers) {
          await o.accountLogin();
        }
      }
    }

    _register() async {
      if (_formKey.currentState.validate()) {
        _formKey.currentState.save();

        for (var o in widget.observers) {
          await o.accountRegister();
        }
      }
    }

    var _background = Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );

    var _username = TextFormField(
      key: Key('username'),
      autofocus: true,
      decoration: InputDecoration(
        labelText: 'Username',
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please your username.';
        }
      },
      onSaved: (String value) {
        for (var o in widget.observers) {
          o.data.username = value;
        }
      }
    );

    var _password = TextFormField(
      key: Key('password'),
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password'
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your password.';
        }
      },
      onSaved: (String value) {
        for (var o in widget.observers) {
          o.data.password = value;
        }
      }
    );

    var _buttons = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RaisedButton(
            key: Key('loginButton'),
            onPressed: _login,
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RaisedButton(
            key: Key('registerButton'),
            onPressed: _register,
            child: Text(
              'Register',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]
    );

    return Scaffold(
      body: new Stack(
        children: <Widget>[
          _background,
          ListView (
            padding: new EdgeInsets.all(50.0),
            children: [
              Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("images/ticket.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                padding: new EdgeInsets.only(top: 240.0, right: 220.0, bottom: 50.0, left: 210.0,),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _username,
                      _password,
                      _buttons
                    ],
                  ),
                ),
              )
            ]
          )
        ]
      )
    );
  }
}
