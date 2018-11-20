import 'package:flutter/material.dart';
import 'dart:math';

class ClientRoute {
  double city1x;
  double city1y;
  double city2x;
  double city2y;
  int length;
  String id;
  int color;
  int playerColor;

  ClientRoute(this.city1x, this.city1y, this.city2x, this.city2y, this.length, this.id, this.color, this.playerColor);
}

class City {
  String name;
  double coordinateX;
  double coordinateY;

  City(this.name, this.coordinateX, this.coordinateY);
}

abstract class GameMapObserver {
  getCities() {}
  getRoutes() {}
  claimRoute(String id, int length) {}
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
  List<dynamic> _routes = [];
  double _width;
  double _height;

  @override
  initState() {
    super.initState();

    _getRoutesAndCities();
  }

  _getRoutesAndCities() async {
    var cities = [];

    for (var o in widget.observers) {
      cities = await o.getCities();
      // var response = await o.getRoutes();

      // print(response);

      await for(var response in o.getRoutes()) {
        setState(() {
          _cities = cities;
          _routes = response;
        });
      }
    }
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

  _buildRoute(route, length) {
    if(route.playerColor == -1) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          for (var o in widget.observers) {
            o.claimRoute(route.id, route.length);
          }
        },
        child: Container(
          width: length - 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: new List.generate(route.length, (index) =>
              _buildRouteSection(route)
            ),
          )
        )
      );
    } else {
      return Container(
        width: length - 12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: new List.generate(route.length, (index) =>
            _buildRouteSection(route)
          ),
        )
      );
    }
  }

  _buildRouteSection(route) {
    if(route.playerColor == -1) {
      return Container(
        width: MediaQuery.of(context).size.width * .008 * 1.5,
        height: MediaQuery.of(context).size.width * .008,
        decoration: BoxDecoration(
          color: Color(route.color),
        ),
      );
    } else {
      return Container(
        width: MediaQuery.of(context).size.width * .008 * 1.5,
        height: MediaQuery.of(context).size.width * .008,
        decoration: BoxDecoration(
          color: Color(route.playerColor),
          borderRadius: new BorderRadius.circular(25.0),
        ),
      );
    }
  }

  _buildRoutes() {

    return _routes.map((route) {

      var secondaryTranslation = Matrix4.translationValues(0.0, 0.0, 0.0);
      if(_isDoubleRoute(route, 1)) {
        secondaryTranslation = Matrix4.translationValues(0.0, -8.0, 0.0);
      } else if(_isDoubleRoute(route ,2)) {
        secondaryTranslation =  Matrix4.translationValues(0.0, 8.0, 0.0);
      }

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
            transform:  Matrix4.translationValues(7.5, 3.5 ,0.0) * Matrix4.rotationZ(rotation) * secondaryTranslation,
            child: _buildRoute(route, length)
          )
        )
      );
    }).toList();
  }

  _isDoubleRoute(checkRoute, checkInstance) {
    var count = 0;
    var isInstance = false;
    _routes.forEach((route) {
      if((
        checkRoute.city1x == route.city1x &&
        checkRoute.city1y == route.city1y &&
        checkRoute.city2x == route.city2x &&
        checkRoute.city2y == route.city2y
      ) || (
        checkRoute.city1x == route.city2x &&
        checkRoute.city1y == route.city2y &&
        checkRoute.city2x == route.city1x &&
        checkRoute.city2y == route.city1y
      )) {
        count += 1;

        if(count == checkInstance && checkRoute.id == route.id) {
          isInstance = true;
        }
      }
    });

    return count > 1 && isInstance;
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
