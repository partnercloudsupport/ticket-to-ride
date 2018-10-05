import 'package:flutter/material.dart';

class AccountLoginPage extends StatefulWidget {
  AccountLoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AccountLoginPageState createState() => new _AccountLoginPageState();
}

class _AccountLoginPageState extends State<AccountLoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _login = Login();

  _accountLogin(form) async {
    if (form.validate()) {
      form.save();

      // save data here

      Navigator.of(context).pushNamed('/game_selection');
    }
  }

  _accountRegister(form) async {
    if (form.validate()) {
      form.save();

      // save data here

      Navigator.of(context).pushNamed('/game_selection');
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: new EdgeInsets.all(30.0),
        child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/ticket.png"),
              fit: BoxFit.contain,
            ),
          ),
          padding: new EdgeInsets.only(top: 350.0, right: 220.0, bottom: 20.0, left: 210.0,),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
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
                    _login.username = value;
                  }
                ),
                TextFormField(
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
                    _login.password = value;
                  }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RaisedButton(
                        onPressed: () {_accountLogin(_formKey.currentState);},
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
                        onPressed: () {_accountRegister(_formKey.currentState);},
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Login {
  String username;
  String password;
}
