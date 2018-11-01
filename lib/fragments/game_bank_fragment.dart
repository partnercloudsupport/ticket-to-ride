import 'package:flutter/material.dart';

class FaceUpTrainCard {
  String id;
  bool canSelect;
  int color;

  FaceUpTrainCard(this.id, this.canSelect, this.color);
}

abstract class GameBankObserver {
  getFaceUpTrainCards();
  selectDestinationCards();
  selectTrainCard(String traincCardId);
  selectTrainCardFromDeck();
}

class GameBankFragment extends StatefulWidget {
  GameBankFragment({Key key, this.title}) : super(key: key);

  final observers = List<GameBankObserver>();
  final String title;

  void addObserver(GameBankObserver o) {
    observers.add(o);
  }

  void removeObserver(GameBankObserver o) {
    observers.remove(o);
  }

  @override
  _GameBankFragmentState createState() => new _GameBankFragmentState();
}

class _GameBankFragmentState extends State<GameBankFragment> {

  List<dynamic> _trainCards = [];

  @override
  initState() {
    super.initState();

    _getCards();
  }

  _getCards() async {

    for (var o in widget.observers) {
      await for(var response in o.getFaceUpTrainCards()) {
        setState(() {
          _trainCards = response;
        });
      }
    }
  }

  _buildDestinationDeck() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        for (var o in widget.observers) {
          o.selectDestinationCards();
        }
      },
      child: Container(
        width: 140.0,
        height: 90.0,
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          // image: new DecorationImage(
          //   image: new AssetImage("images/map.png"),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Text('Destinations')
      )
    );
  }

  _buildFaceUpTrainCards() {
    return _trainCards.map((trainCard) {
      if(trainCard.canSelect) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            for (var o in widget.observers) {
              o.selectTrainCard(trainCard.id);
            }
          },
          child: Container(
            width: 80.0,
            height: 60.0,
            margin: const EdgeInsets.symmetric(vertical: 5.0),
            decoration: new BoxDecoration(
              color: Color(trainCard.color),
            ),
          )
        );
      } else {
        return Container(
          width: 40.0,
          height: 60.0,
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          decoration: new BoxDecoration(
            color: Color(trainCard.color),
          )
        );
      }
    }).toList();
  }

  _buildTrainDeck() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        for (var o in widget.observers) {
          o.selectTrainCardFromDeck();
        }
      },
      child: Container(
        width: 140.0,
        height: 90.0,
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          // image: new DecorationImage(
          //   image: new AssetImage("images/map.png"),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Text('Trains')
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.from(
        [_buildDestinationDeck()]
        ..addAll(_buildFaceUpTrainCards())
        ..addAll([_buildTrainDeck()])
      )
    );
  }
}
