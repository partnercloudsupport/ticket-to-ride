import 'package:flutter/material.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/global_context_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AccountLoginPage extends StatefulWidget {
  AccountLoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AccountLoginPageState createState() => new _AccountLoginPageState();
}

class _AccountLoginPageState extends State<AccountLoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _login = Login();

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

  _accountLogin(form) async {
    if (form.validate()) {
      form.save();

      var ctx = ClientContext();

      try {
        var request = new api.LoginAccountRequest();
        request.username = _login.username;
        request.password = _login.password;
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

  _accountRegister(form) async {
    if (form.validate()) {
      form.save();

      var ctx = ClientContext();

      try {
        var request = new api.LoginAccountRequest();
        request.username = _login.username;
        request.password = _login.password;
        var response = await api.authProxy.register(ctx, request);

        GlobalContext.of(context).onUserIdChange(response.userId);
        Navigator.of(context).pushNamed('/game_selection');

      } catch(error) {
        // switch(error.code) {
        //   case api.Code.NOT_FOUND:
        //     _showErrorToast('Account does not exist');
        //     break;
        //   case api.Code.ACCESS_DENIED:
        //     _showErrorToast('Incorrect password');
        //     break;
        //   default:
        //     _showErrorToast('UNKNOWN ERROR');
        // }

        print(error.code);
        print(error.message);
      }

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListView (
          // reverse: true,
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
          )]
        )
      ]
      )
    );
  }
}

class Login {
  String username;
  String password;
}
