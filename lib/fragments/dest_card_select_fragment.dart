import 'package:flutter/material.dart';

class DestinationCard {
  String id;
  String name;
  int points;

  DestinationCard(this.id, this.name, this.points);
}

abstract class DestCardSelectObserver {
  getDestinationCards();
  selectDestinationCards(List<String> cardIds);
}

class DestCardSelectFragment extends StatefulWidget {
  DestCardSelectFragment({Key key, this.title, this.minCard = 1}) : super(key: key);

  final observers = List<DestCardSelectObserver>();
  final String title;
  final int minCard;

  void addObserver(DestCardSelectObserver o) {
    observers.add(o);
  }

  void removeObserver(DestCardSelectObserver o) {
    observers.remove(o);
  }

  @override
  _DestCardSelectFragmentState createState() => new _DestCardSelectFragmentState();
}

class _DestCardSelectFragmentState extends State<DestCardSelectFragment> {

  List<String> _selectedDestinationCards = [];
  var _destinationCards = [];

  @override
  initState() {
    super.initState();

    _getCards();
  }

  _getCards() async {
    var destinationCards = [];

    for (var o in widget.observers) {
      destinationCards = await o.getDestinationCards();
    }

    setState(() {
      _destinationCards = destinationCards;
    });
  }

  _buildDestinationCards() {
    return _destinationCards.map((destinationCard) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if(_selectedDestinationCards.any((id) => id == destinationCard.id)) {
            setState(() {
              _selectedDestinationCards.remove(destinationCard.id);
            });
          } else {
            setState(() {
              _selectedDestinationCards.add(destinationCard.id);
            });
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width * .3,
          height: MediaQuery.of(context).size.width * .3 * .7,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/background2.jpg"),
              fit: BoxFit.cover,
            ),
            border: new Border.all(
              color: _selectedDestinationCards.any((id) => id == destinationCard.id) ? Colors.green : Colors.black,
              width: 5.0,
              style: BorderStyle.solid
            ),
          ),
          child: Text(
            "${destinationCard.name} \n ${destinationCard.points}",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            )
          )
        )
      );
    }).toList();
  }

  _buildSelectButton() {
    if(_selectedDestinationCards.length < widget.minCard) {
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
              o.selectDestinationCards(_selectedDestinationCards);
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
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _buildDestinationCards()
                ),
                _buildSelectButton()
              ]
            ),
          ]
        ),
      )
    );
  }
}
