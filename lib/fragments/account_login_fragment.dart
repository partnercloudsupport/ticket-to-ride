import 'package:flutter/material.dart';
import 'package:ticket_to_ride/account_login_presenter.dart';

class AccountLoginFragment extends StatefulWidget {
  AccountLoginFragment(this.accountLoginPresenter, {Key key, this.title}) : super(key: key);

  final AccountLoginPresenter accountLoginPresenter;
  final String title;

  @override
  _AccountLoginFragmentState createState() => new _AccountLoginFragmentState();
}

class _AccountLoginFragmentState extends State<AccountLoginFragment> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    var _background = Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );

    var _username = TextFormField(
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
        widget.accountLoginPresenter.login.username = value;
      }
    );

    var _password = TextFormField(
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
        widget.accountLoginPresenter.login.password = value;
      }
    );

    var _buttons = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RaisedButton(
            onPressed: () {widget.accountLoginPresenter.accountLogin(context, _formKey.currentState);},
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
            onPressed: () {widget.accountLoginPresenter.accountRegister(context, _formKey.currentState);},
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
