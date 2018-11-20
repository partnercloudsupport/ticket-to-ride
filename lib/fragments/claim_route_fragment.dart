import 'package:flutter/material.dart';

class TrainCard {
  String id;
  int color;

  TrainCard(this.id, this.color);
}

abstract class ClaimRouteObserver {
  getTrainCardHand();
  claimRoute(String id, List<String> cards);
  cancel();
}

class ClaimRouteFragment extends StatefulWidget {
  ClaimRouteFragment({Key key, this.title, this.routeId, this.routeLength}) : super(key: key);

  final observers = List<ClaimRouteObserver>();
  final String title;
  final String routeId;
  final int routeLength;

  void addObserver(ClaimRouteObserver o) {
    observers.add(o);
  }

  void removeObserver(ClaimRouteObserver o) {
    observers.remove(o);
  }

  @override
  _ClaimRouteFragmentState createState() => new _ClaimRouteFragmentState();
}

class _ClaimRouteFragmentState extends State<ClaimRouteFragment> {

  List<String> _selectedTrainCards = [];
  var _trainHand = [];

  @override
  initState() {
    super.initState();

    _getHand();
  }

  _getHand() async {
    var hand = [];

    for (var o in widget.observers) {
      hand = await o.getTrainCardHand();
    }

    setState(() {
      _trainHand = hand;
    });
  }

  _buildTrainCardHand() {
    return _trainHand.map((trainCard) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if(_selectedTrainCards.any((id) => id == trainCard.id)) {
            setState(() {
              _selectedTrainCards.remove(trainCard.id);
            });
          } else {
            setState(() {
              _selectedTrainCards.add(trainCard.id);
            });
          }
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: MediaQuery.of(context).size.width * .1 * 1.5,
          width: MediaQuery.of(context).size.width * .1,
          decoration: new BoxDecoration(
            color: Color(trainCard.color),
            border: new Border.all(
              color: _selectedTrainCards.any((id) => id == trainCard.id) ? Colors.green : Colors.black,
              width: 5.0,
              style: BorderStyle.solid
            ),
          )
        )
      );
    }).toList();
  }

  _buildCancelButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: RaisedButton(
        key: Key('cancelButton'),
        onPressed: () {
          for (var o in widget.observers) {
            // o.claimRoute(widget.routeId, _selectedTrainCards);
            o.cancel();
          }
        },
        child: Text(
          'Cancel',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }

  _buildSelectButton() {
    if(_selectedTrainCards.length < widget.routeLength) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text('')
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: RaisedButton(
          key: Key('selectButton'),
          onPressed: () {
            for (var o in widget.observers) {
              o.claimRoute(widget.routeId, _selectedTrainCards);
            }
          },
          child: Text(
            'Select Cards',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
          new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _buildTrainCardHand(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildCancelButton(),
                  _buildSelectButton()
                ]
              ),
            ]
          ),
        ]
      ),
    );
  }
}
