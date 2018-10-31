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

abstract class GameBoardObserver {
  claimRoute() {}
}

class GameBoardFragment extends StatefulWidget {
  GameBoardFragment({Key key, this.title}) : super(key: key);

  final observers = List<GameBoardObserver>();
  final String title;

  void addObserver(GameBoardObserver o) {
    observers.add(o);
  }

  void removeObserver(GameBoardObserver o) {
    observers.remove(o);
  }

  @override
  _GameBoardFragmentState createState() => new _GameBoardFragmentState();
}

class _GameBoardFragmentState extends State<GameBoardFragment> {

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
