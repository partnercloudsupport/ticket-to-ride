import 'package:flutter/material.dart';

class FaceUpTrainCard {
  String id;
  bool canSelect;
  int color;

  FaceUpTrainCard(this.id, this.canSelect, this.color);
}

abstract class GameBankObserver {
  getFaceUpTrainCards();
  getDestCardCount();
  getTrainCardCount();

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
  int _destinationCount = 0;
  int _trainCount = 0;

  @override
  initState() {
    super.initState();

    _getCards();
    _getDestCardCount();
    _getTrainCardCount();
  }

  _getCards() async {
    // for (var o in widget.observers) {
    //   await for(var response in o.getFaceUpTrainCards()) {
    //     setState(() {
    //       _trainCards = response;
    //     });
    //   }
    // }
  }

  _getDestCardCount() async {
    // for (var o in widget.observers) {
    //   await for(var response in o.getDestCardCount()) {
    //     setState(() {
    //       _destinationCount = response;
    //     });
    //   }
    // }
  }

  _getTrainCardCount() async {
    // for (var o in widget.observers) {
    //   await for(var response in o.getTrainCardCount()) {
    //     setState(() {
    //       _trainCount = response;
    //     });
    //   }
    // }
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
        width: MediaQuery.of(context).size.width * .075 * 1.5,
        height: MediaQuery.of(context).size.width * .075,
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          // image: new DecorationImage(
          //   image: new AssetImage("images/map.png"),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Text('$_destinationCount destinations left')
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
            width: MediaQuery.of(context).size.width * .05 * 1.5,
            height: MediaQuery.of(context).size.width * .05,
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
        width: MediaQuery.of(context).size.width * .075 * 1.5,
        height: MediaQuery.of(context).size.width * .075,
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: new BoxDecoration(
          color: Colors.white,
          // image: new DecorationImage(
          //   image: new AssetImage("images/map.png"),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: Text('$_trainCount trains left')
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
