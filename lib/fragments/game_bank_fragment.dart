import 'package:flutter/material.dart';

class FaceUpTrainCard {
  bool canSelect;
  int color;

  FaceUpTrainCard(this.canSelect, this.color);
}

abstract class GameBankObserver {
  getFaceUpTrainCards();
  selectDestinationCard();
  selectTrainCard();
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

  List<FaceUpTrainCard> _trainCards = [];

  @override
  initState() {
    super.initState();

    _getCards();
  }

  _getCards() async {
    List<FaceUpTrainCard> trainCards = [];

    for (var o in widget.observers) {
      trainCards = await o.getFaceUpTrainCards();
    }

    setState(() {
      _trainCards = trainCards;
    });
  }

  _buildFaceUpTrainCards() {
    return _trainCards.map((trainCard) {
      return Container(
        width: trainCard.canSelect ? 80.0 : 50.0,
        height: 60.0,
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: new BoxDecoration(
          color: Color(trainCard.color),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.from([
        Container(
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
        )]
        ..addAll(_buildFaceUpTrainCards())
        ..addAll([
          Container(
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
        ])
      )
    );
  }
}
