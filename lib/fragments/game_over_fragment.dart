import 'package:flutter/material.dart';

import 'package:ticket_to_ride/theme/theme.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class PlayerStat {
  int rank;
  String color;
  String username;
  int routePoints;
  int destinationCardPoints;
  int longestRoutePoints;
  int totalPoints;

  PlayerStat(this.rank, this.color, this.username, this.routePoints, this.destinationCardPoints, this.longestRoutePoints, this.totalPoints);
}

abstract class GameOverObserver {
  getPlayerStats();
}

class GameOverFragment extends StatefulWidget {

  GameOverFragment({Key key});

  final observers = List<GameOverObserver>();

  void addObserver(GameOverObserver o) {
    observers.add(o);
  }

  void removeObserver(GameOverObserver o) {
    observers.remove(o);
  }

  @override
  GameOverFragmentState createState() => GameOverFragmentState();

}

class GameOverFragmentState extends State<GameOverFragment> {

  var _playerStats = [];

  @override
  initState() {
    super.initState();

    _getPlayerStats();
  }

  _getPlayerStats() async {
    for (var o in widget.observers) {
      await for(var response in o.getPlayerStats()) {
        setState(() {
          _playerStats = response;
        });
      }
    }
  }

  _buildLongestRoutePoints(playerStats) {
    if(playerStats.longestRoutePoints > 0){
      return Text(
        "Longest Route Points: ${playerStats.longestRoutePoints}"
      );
    } else {
      return null;
    }
  }

  Widget _buildPlayerStatTile(index) {

    if(index >= _playerStats.length) {
      return null;
    }

    var playerStat = _playerStats[index];

    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;

    var tileHeight;
    var tileWidth;
    var titleFontSize;
    var topMargin = 25.0;
    switch(playerStat.rank) {
      case 1: // Large
        tileHeight = screenH * .5;
        tileWidth = screenW * .2;
        titleFontSize = 50.0;
        topMargin = 10.0;
        break;
      case 2: // Medium
      case 3:
        tileHeight = screenH * .3;
        tileWidth = screenW * .15;
        titleFontSize = 40.0;
        break;
      default: // Small
        tileHeight = screenH * .2;
        tileWidth = screenW * .1;
        titleFontSize = 15.0;
    }

    return Container(
      margin: EdgeInsets.fromLTRB(20.0, topMargin, 20.0, 20.0),
      height: tileHeight,
      child: Column(
        children: <Widget>[
          Text(
            "${playerStat.rank}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize,
            )
          ),
          Container(
            child:  CircleAvatar(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/player-${playerStat.color}.jpg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
                height: tileWidth * .7,
                width: tileWidth * .7,
              )
            ),
          ),
          Text(
            "${playerStat.username}",
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            "Route Points: ${playerStat.routePoints}"
          ),
          Text(
            "Destination Card Points: ${playerStat.destinationCardPoints}"
          ),
          _buildLongestRoutePoints(playerStat),
          Container(
            height: 1.0,
            width: tileWidth,
            color: ticketToRideTheme.primaryColor,
            margin: EdgeInsets.only(top: 6.0, bottom: 5.0)
          ),
          Text(
            "Total points: ${playerStat.totalPoints}",
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
        ].where((child) => child != null).toList(),
      )
    );
  }

  _buildStats() {
    if (_playerStats.length > 3) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildPlayerStatTile(1),
                _buildPlayerStatTile(0),
                _buildPlayerStatTile(2)
              ].where((child) => child != null).toList()
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildPlayerStatTile(4),
                _buildPlayerStatTile(5),
              ].where((child) => child != null).toList()
            )
          ],
        )
      );
    } else {
      return Container(
        child: Row (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildPlayerStatTile(1),
            _buildPlayerStatTile(0),
            _buildPlayerStatTile(2)
          ].where((child) => child != null).toList()
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Over', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Stack(
        children: <Widget> [
          FragmentLibrary().background,
          _buildStats()
        ]
      ),
    );
  }
}
