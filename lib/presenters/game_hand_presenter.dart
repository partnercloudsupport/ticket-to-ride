import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/global_context.dart';
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/fragments/game_hand_fragment.dart';

class GameHandApi {
  streamTrainCards(ctx, request) {
    return api.cardProxy.streamTrainCards(ctx, request);
  }

  streamDestinationCards(ctx, request) {
    return api.cardProxy.streamDestinationCards(ctx, request);
  }
}

class GameHandPresenter implements GameHandObserver  {

  GameHandApi _api;
  GameHandFragment _fragment;

  GameHandPresenter() {
    this._api = new GameHandApi();
  }

  GameHandPresenter.withApi(this._api);

  @override
  getDestinationCards() {

    var ctx = ClientContext();

    var request = new api.StreamDestinationCardsRequest();
    request.playerId = GlobalContext().currentPlayerId;

    Map destCards = Map();

    return _api.streamDestinationCards(ctx, request).map((response) {

      print("here");
      print(response);

      destCards.putIfAbsent(response.id, () => response);

      // var groupedDestCards = Map();
      //
      // destCards.forEach((key, trainCard) {
      //   if(groupedDestCards.containsKey(trainCard.color)) {
      //     groupedDestCards[trainCard.color] += groupedDestCards[trainCard.color];
      //   } else {
      //     groupedDestCards[trainCard.color] = 1;
      //   }
      // });

      var finalDestCards = [];

      destCards.forEach((key, card) {
        finalDestCards.add(DestinationCard(card.firstCityId, card.secondCityId, card.pointValue));
      });

      return finalDestCards;
    });

    // return [
    //   DestinationCard('Los Angeles', 'New York', 21),
    //   DestinationCard('Duluth', 'Houston', 8)
    // ];
  }

  _getCardColor(color) {
    switch(color) {
    case api.TrainColor.ORANGE:
      return 0xFFDB9759;
    case api.TrainColor.PINK:
      return 0xFFD950C6;
    case api.TrainColor.GREEN:
      return 0xFF84B72A;
    case api.TrainColor.BLUE:
      return 0xFF5FDCDA;
    case api.TrainColor.BLACK:
      return 0xFF212121;
    case api.TrainColor.GREY:
      return 0xFFC3C3C3;
    case api.TrainColor.YELLOW:
      return 0xFFD9B755;
    case api.TrainColor.RED:
      return 0xFFD74141;
    case api.TrainColor.WHITE:
      return 0xFFECECEC;
    }
  }

  @override
  getTrainCards() {

    var ctx = ClientContext();

    var request = new api.StreamTrainCardsRequest();
    request.playerId = GlobalContext().currentPlayerId;

    Map trainCards = Map();

    return _api.streamTrainCards(ctx, request).map((response) {

      if(response.state == api.TrainCard_State.OWNED) {
        trainCards.putIfAbsent(response.id, () => response);
      } else if(trainCards.containsKey(response.id)) {
        trainCards.removeWhere((k,v) => k == response.id);
      }

      var groupedTrainCards = Map();

      trainCards.forEach((key, trainCard) {
        if(groupedTrainCards.containsKey(trainCard.color)) {
          groupedTrainCards[trainCard.color] += groupedTrainCards[trainCard.color];
        } else {
          groupedTrainCards[trainCard.color] = 1;
        }
      });

      var finalTrainCards = [];

      groupedTrainCards.forEach((key, count) {
        finalTrainCards.add(TrainCards(_getCardColor(key), count));
      });

      return finalTrainCards;
    });
  }


  build() {
    _fragment = new GameHandFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
