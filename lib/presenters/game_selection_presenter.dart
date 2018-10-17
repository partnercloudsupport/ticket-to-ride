import 'package:flutter/material.dart';
import 'package:ticket_to_ride/global_context_widget.dart';

import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/game_list_fragment.dart';
import 'package:ticket_to_ride/fragments/create_game_fragment.dart';
import 'package:ticket_to_ride/activities/activity.dart';
//import 'poll.dart';

//import 'dart:async';


class GameSelectionPresenter {

  final String title;
  var createGameRequest = api.CreateGameRequest();
  var createPlayerRequest = api.CreatePlayerRequest();

  bool gamesLoaded = false;
  
  List<api.Game> games = List<api.Game>();

  ActivityState activityState = Activity().createState();

  GameSelectionPresenter({this.title});

  getGameList() async {
    var ctx = ClientContext();
    try {
      var request = api.ListGamesRequest();
      var response = await api.gameProxy.listGames(ctx, request);

      games = response.games;

      gamesLoaded = true;
            
    } catch(error) {
      print(error.code);
      print(error.message);
    }
  } 

  createGame(form) async {
    if (form.validate()) {
      form.save();

      var ctx = ClientContext();

      print(createGameRequest.displayName);

      try {
        var response = await api.gameProxy.createGame(ctx,createGameRequest);

        activityState.onCurrentGameIdChange(response.gameId);
        print('just created game ' + response.gameId);
        activityState.pushNavigator('/lobby_view');

      } catch(error) {
        print(error.code);
        print(error.message);
      }

    }
  }

}

/*
class GameSelectionPresenter extends StatefulWidget {
  GameSelectionPresenter({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;


  @override
  GameSelectionPresenterState createState() => new GameSelectionPresenterState();
}

class GameSelectionPresenterState extends State<GameSelectionPresenter> {

  var createGameRequest = api.CreateGameRequest();
  var createPlayerRequest = api.CreatePlayerRequest();

  bool gamesLoaded = false;
  
  List<api.Game> games = List<api.Game>();

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


  getGameList() async {
    var ctx = ClientContext();
    try {
      var request = api.ListGamesRequest();
      var response = await api.gameProxy.listGames(ctx, request);

      games = response.games;

      gamesLoaded = true;
            
    } catch(error) {
      print(error.code);
      print(error.message);
    }
  } 

  createGame(form) async {
    if (form.validate()) {
      form.save();

      var ctx = ClientContext();

      print(createGameRequest.displayName);

      try {
        var response = await api.gameProxy.createGame(ctx,createGameRequest);

        GlobalContext.of(context).onCurrentGameIdChange(response.gameId);
        print('just created game ' + response.gameId);
        Navigator.of(context).pushNamed('/lobby_view');

      } catch(error) {
        print(error.code);
        print(error.message);
      }

    }
  }

  createPlayer(form) async {
      var ctx = ClientContext();

      try {
        print('querying game ' + createPlayerRequest.gameId);
        var response = await api.gameProxy.createPlayer(ctx, createPlayerRequest);

        try {
          GetPlayerRequest getPlayerRequest = GetPlayerRequest();
          getPlayerRequest.playerId = response.playerId;
          print(getPlayerRequest.playerId);
          var playerResponse = await api.gameProxy.getPlayer(ctx, getPlayerRequest);

          print(playerResponse.gameId);

          GlobalContext.of(context).onCurrentGameIdChange(playerResponse.gameId);
          Navigator.of(context).pushNamed('/lobby_view');
        } catch(error) {
            print(error.code);
            print(error.message);
        }

      } catch(error) {
          switch(error.code) {
            case api.Code.INVALID_ARGUMENT:
              _showErrorToast('This game is full');
              break;
            case api.Code.NOT_FOUND:
              _showErrorToast('This game no longer exists');
              break;
            default:
              _showErrorToast('UNKNOWN ERROR');
          }
    }
  }


  @override
  Widget build(BuildContext context) {

    var _background = Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("images/background2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );


    getGameList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Game Selection', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: <Widget> [
            _background,
            Row(
              children: [
                 Flexible(
                   child: CreateGameFragment(this),
                 ),
                 Flexible(
                   child: GameListFragment(this),
                 )
               ]
            ) 
          ]
        ),
      resizeToAvoidBottomPadding: false,
    );
  }
}

*/
