import 'package:flutter/material.dart';
import 'dart:math';

class Route {
  double city1x;
  double city1y;
  double city2x;
  double city2y;
  int length;
  String id;
  int color;
  String playerId;

  Route(this.city1x, this.city1y, this.city2x, this.city2y, this.length, this.id, this.color, this.playerId);
}

class City {
  String name;
  String id;
  double coordinateX;
  double coordinateY;

  City(this.name, this.id, this.coordinateX, this.coordinateY);
}

abstract class GameMapObserver {
  getCities() {}
  getRoutes() {}
  claimRoute(String id) {}
}

class GameMapFragment extends StatefulWidget {
  GameMapFragment({Key key, this.title}) : super(key: key);

  final observers = List<GameMapObserver>();
  final String title;

  void addObserver(GameMapObserver o) {
    observers.add(o);
  }

  void removeObserver(GameMapObserver o) {
    observers.remove(o);
  }

  @override
  _GameMapFragmentState createState() => new _GameMapFragmentState();
}

class _GameMapFragmentState extends State<GameMapFragment> {

  List<City> _cities = [];
  List<Route> _routes = [];
  double _width;
  double _height;

  @override
  initState() {
    super.initState();

    _getRoutesAndCities();
  }

  _getRoutesAndCities() async {
    var cities = [];
    var routes = [];
    for (var o in widget.observers) {
      cities = await o.getCities();
      routes = await o.getRoutes();
    }

    setState(() {
      _cities = cities;
      _routes = routes;
    });
  }

  _buildCities() {
    return _cities.map((city) {
      return Positioned(
        left: _width * city.coordinateX,
        top: _height * city.coordinateY,
        child: Row(
          children: [
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: const Color(0xff000000),
                borderRadius: new BorderRadius.circular(25.0),
              ),
            ),
            Text(
              city.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
          ]
        ),
      );
    }).toList();
  }

  _buildRoutes() {

    return _routes.map((route) {

      var distX = (route.city1x - route.city2x) * _width;
      var distY = (route.city1y - route.city2y) * _height;
      var length = sqrt(pow(distX, 2) + pow(distY, 2));

      var rotation = atan2(-distY, -distX);

      return Positioned(
        left: _width * route.city1x,
        top: _height * route.city1y,
        child: Container(
          child: Transform(
            alignment: Alignment.topLeft,
            transform:  Matrix4.translationValues(7.5, 3.5 ,0.0) * Matrix4.rotationZ(rotation),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                for (var o in widget.observers) {
                  o.claimRoute(route.id);
                }
              },
              child: Container(
                width: length - 12,
                // color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: new List.generate(route.length, (index) =>
                    Container(
                      width: 20.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: Color(route.color),
                      ),
                    )
                  ),
                )
              )
            )
          )
        )
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width * .75;
    _height = MediaQuery.of(context).size.height * .70;

    return new Stack(
        children: List.from([
          Container(
            width: _width,
            height: _height,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("images/map.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ])..addAll(_buildCities())..addAll(_buildRoutes())
    );
  }
}
