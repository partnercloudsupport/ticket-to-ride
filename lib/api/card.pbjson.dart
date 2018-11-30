///
//  Generated code. Do not modify.
//  source: card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'game.pbjson.dart' as $0;

const TrainColor$json = const {
  '1': 'TrainColor',
  '2': const [
    const {'1': 'UNSPECIFIED', '2': 0},
    const {'1': 'ORANGE', '2': 1},
    const {'1': 'PINK', '2': 2},
    const {'1': 'GREEN', '2': 3},
    const {'1': 'BLUE', '2': 4},
    const {'1': 'BLACK', '2': 5},
    const {'1': 'GREY', '2': 6},
    const {'1': 'YELLOW', '2': 7},
    const {'1': 'RED', '2': 8},
    const {'1': 'WHITE', '2': 9},
    const {'1': 'RAINBOW', '2': 10},
  ],
};

const GetDestinationCardRequest$json = const {
  '1': 'GetDestinationCardRequest',
  '2': const [
    const {'1': 'destination_card_id', '3': 1, '4': 1, '5': 9, '10': 'destinationCardId'},
  ],
};

const DestinationCard$json = const {
  '1': 'DestinationCard',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'first_city_id', '3': 2, '4': 1, '5': 9, '10': 'firstCityId'},
    const {'1': 'second_city_id', '3': 3, '4': 1, '5': 9, '10': 'secondCityId'},
    const {'1': 'point_value', '3': 4, '4': 1, '5': 5, '10': 'pointValue'},
    const {'1': 'player_id', '3': 5, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const PeekDestinationCardsRequest$json = const {
  '1': 'PeekDestinationCardsRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const PeekDestinationCardsResponse$json = const {
  '1': 'PeekDestinationCardsResponse',
  '2': const [
    const {'1': 'destination_cards', '3': 1, '4': 3, '5': 11, '6': '.card.DestinationCard', '10': 'destinationCards'},
  ],
};

const ClaimDestinationCardsRequest$json = const {
  '1': 'ClaimDestinationCardsRequest',
  '2': const [
    const {'1': 'destination_card_ids', '3': 1, '4': 3, '5': 9, '10': 'destinationCardIds'},
    const {'1': 'player_id', '3': 2, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const ClaimDestinationCardsResponse$json = const {
  '1': 'ClaimDestinationCardsResponse',
};

const StreamDestinationCardsRequest$json = const {
  '1': 'StreamDestinationCardsRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const DeckStats$json = const {
  '1': 'DeckStats',
  '2': const [
    const {'1': 'hidden_train_card_count', '3': 1, '4': 1, '5': 5, '10': 'hiddenTrainCardCount'},
    const {'1': 'hidden_destination_card_count', '3': 3, '4': 1, '5': 5, '10': 'hiddenDestinationCardCount'},
  ],
};

const StreamDeckStatsRequest$json = const {
  '1': 'StreamDeckStatsRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const ClaimTrainCardRequest$json = const {
  '1': 'ClaimTrainCardRequest',
};

const ClaimTrainCardResponse$json = const {
  '1': 'ClaimTrainCardResponse',
};

const StreamTrainCardsRequest$json = const {
  '1': 'StreamTrainCardsRequest',
  '2': const [
    const {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const TrainCard$json = const {
  '1': 'TrainCard',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'player_id', '3': 2, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'color', '3': 3, '4': 1, '5': 14, '6': '.card.TrainColor', '10': 'color'},
    const {'1': 'state', '3': 4, '4': 1, '5': 14, '6': '.card.TrainCard.State', '10': 'state'},
  ],
  '4': const [TrainCard_State$json],
};

const TrainCard_State$json = const {
  '1': 'State',
  '2': const [
    const {'1': 'UNSPECIFIED', '2': 0},
    const {'1': 'HIDDEN', '2': 1},
    const {'1': 'VISIBLE', '2': 2},
    const {'1': 'OWNED', '2': 3},
  ],
};

const DrawTrainCardFromDeckRequest$json = const {
  '1': 'DrawTrainCardFromDeckRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const DrawFaceUpTrainCardRequest$json = const {
  '1': 'DrawFaceUpTrainCardRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'card_drawn_id', '3': 2, '4': 1, '5': 9, '10': 'cardDrawnId'},
  ],
};

const GetTrainCardsInHandRequest$json = const {
  '1': 'GetTrainCardsInHandRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const GetTrainCardsInHandResponse$json = const {
  '1': 'GetTrainCardsInHandResponse',
  '2': const [
    const {'1': 'cards', '3': 1, '4': 3, '5': 11, '6': '.card.TrainCard', '10': 'cards'},
  ],
};

const CardService$json = const {
  '1': 'CardService',
  '2': const [
    const {'1': 'GetDestinationCard', '2': '.card.GetDestinationCardRequest', '3': '.card.DestinationCard'},
    const {'1': 'PeekDestinationCards', '2': '.card.PeekDestinationCardsRequest', '3': '.card.PeekDestinationCardsResponse'},
    const {'1': 'ClaimDestinationCards', '2': '.card.ClaimDestinationCardsRequest', '3': '.card.ClaimDestinationCardsResponse'},
    const {'1': 'StreamDestinationCards', '2': '.card.StreamDestinationCardsRequest', '3': '.card.DestinationCard', '6': true},
    const {'1': 'StreamTrainCards', '2': '.card.StreamTrainCardsRequest', '3': '.card.TrainCard', '6': true},
    const {'1': 'StreamDeckStats', '2': '.card.StreamDeckStatsRequest', '3': '.card.DeckStats', '6': true},
    const {'1': 'DrawTrainCardFromDeck', '2': '.card.DrawTrainCardFromDeckRequest', '3': '.game.Empty'},
    const {'1': 'DrawFaceUpTrainCard', '2': '.card.DrawFaceUpTrainCardRequest', '3': '.game.Empty'},
    const {'1': 'getTrainCardsInHand', '2': '.card.GetTrainCardsInHandRequest', '3': '.card.GetTrainCardsInHandResponse'},
  ],
};

const CardService$messageJson = const {
  '.card.GetDestinationCardRequest': GetDestinationCardRequest$json,
  '.card.DestinationCard': DestinationCard$json,
  '.card.PeekDestinationCardsRequest': PeekDestinationCardsRequest$json,
  '.card.PeekDestinationCardsResponse': PeekDestinationCardsResponse$json,
  '.card.ClaimDestinationCardsRequest': ClaimDestinationCardsRequest$json,
  '.card.ClaimDestinationCardsResponse': ClaimDestinationCardsResponse$json,
  '.card.StreamDestinationCardsRequest': StreamDestinationCardsRequest$json,
  '.card.StreamTrainCardsRequest': StreamTrainCardsRequest$json,
  '.card.TrainCard': TrainCard$json,
  '.card.StreamDeckStatsRequest': StreamDeckStatsRequest$json,
  '.card.DeckStats': DeckStats$json,
  '.card.DrawTrainCardFromDeckRequest': DrawTrainCardFromDeckRequest$json,
  '.game.Empty': $0.Empty$json,
  '.card.DrawFaceUpTrainCardRequest': DrawFaceUpTrainCardRequest$json,
  '.card.GetTrainCardsInHandRequest': GetTrainCardsInHandRequest$json,
  '.card.GetTrainCardsInHandResponse': GetTrainCardsInHandResponse$json,
};

