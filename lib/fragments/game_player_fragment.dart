import 'package:flutter/material.dart';

// class Player {
//   String name;
//   String color;
//
//   Player(this.name, this.color);
// }
//
// class LobbyGame {
//   String name;
//   String hostName;
//   List players = [];
//   bool canStart = false;
// }

abstract class GamePlayerObserver {
  claimRoute() {}
}

class GamePlayerFragment extends StatefulWidget {
  GamePlayerFragment({Key key, this.title}) : super(key: key);

  final observers = List<GamePlayerObserver>();
  final String title;

  void addObserver(GamePlayerObserver o) {
    observers.add(o);
  }

  void removeObserver(GamePlayerObserver o) {
    observers.remove(o);
  }
  
  @override
  _GamePlayerFragmentState createState() => new _GamePlayerFragmentState();
}

class _GamePlayerFragmentState extends State<GamePlayerFragment> {

  _buildCities() {
    double width = MediaQuery.of(context).size.width * .75;
    double height = MediaQuery.of(context).size.height * .70;

    var cities = [[.10, .3], [.5, .5], [.75, .05]];

    return cities.map((point) {
      return Positioned(
        left: width * point[0],
        top: height * point[1],
        child: Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            color: const Color(0xff000000),
            borderRadius: new BorderRadius.circular(25.0),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .75;
    double height = MediaQuery.of(context).size.height * .70;

    return new Stack(
        children: List.from([
          Container(
            width: width,
            height: height,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/map.png"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ])..addAll(_buildCities())
    );
  }
}
