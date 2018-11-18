import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/global_context.dart';
import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/fragments/game_hand_fragment.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';

/// Wrapper class for the API - overridden in tests.
class GameHandApi {

  /// Accepts the client context [ctx] and the request body [request].
  /// Returns a stream of train cards.
  streamTrainCards(ctx, request) {
    return api.cardProxy.streamTrainCards(ctx, request);
  }

  /// Accepts the client context [ctx] and the request body [request].
  /// Returns a stream of destination cards.
  streamDestinationCards(ctx, request) {
    return api.cardProxy.streamDestinationCards(ctx, request);
  }
}

/// The presenter that handles data for the GameHandFragment.
class GameHandPresenter implements GameHandObserver  {

  /// The api instance that should be used to make requests.
  GameHandApi _api;
  /// The fragment that this presenter is interacting with.
  GameHandFragment _fragment;

  /// Constructor that uses the default api.
  GameHandPresenter() {
    this._api = new GameHandApi();
  }

  /// Constructor that uses an external api.
  ///
  /// The external api must be of type [GameHandApi].
  GameHandPresenter.withApi(this._api);

  /// Opens and modifies stream of destination cards.
  ///
  /// Opens and modifies a stream of destination cards using the defined [_api]. Returns a stream of a list of [DestinationCard]s. [destCards] is used to keep track of all of the sent destination cards - if the card doesn't exist in [destCards], it will be added and sent in the stream, otherwise the card does not get sent.
  @override
  getDestinationCards() {

    var ctx = ClientContext();

    var request = new api.StreamDestinationCardsRequest();
    request.playerId = GlobalContext().currentPlayerId;

    Map destCards = Map();

    return _api.streamDestinationCards(ctx, request).map((response) {

      destCards.putIfAbsent(response.id, () => response);
      var finalDestCards = [];

      destCards.forEach((key, card) {
        finalDestCards.add(DestinationCard(card.firstCityId, card.secondCityId, card.pointValue));
      });

      return finalDestCards;
    });
  }

  /// Opens and modifies a stream of train cards.
  ///
  /// Opens and modifies a stream train cards using the defined [_api]. Returns a stream of a list of [TrainCard]s.
  ///
  /// Train cards are added and removed to [trainCards] based on [api.TrainCard_State]. If the train card is owned, then it is added to [trainCards]. If the train card exists in [trainCards], but is not owned ([api.TrainCard_State.OWNED]) by the current player, then remove it. Train cards are then grouped by color and the number of cards per color are counted, a list of [TrainCard] is created and then returned.
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
        finalTrainCards.add(TrainCards(getTrainColor(key), count));
      });

      return finalTrainCards;
    });
  }

  /// Builds this presenter's [_fragment].
  build() {
    _fragment = new GameHandFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
