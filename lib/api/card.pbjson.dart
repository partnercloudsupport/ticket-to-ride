///
//  Generated code. Do not modify.
//  source: api/card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

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
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
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

const Empty$json = const {
  '1': 'Empty',
};

const CardService$json = const {
  '1': 'CardService',
  '2': const [
    const {'1': 'GetDestinationCard', '2': '.card.GetDestinationCardRequest', '3': '.card.DestinationCard'},
    const {'1': 'PeekDestinationCards', '2': '.card.PeekDestinationCardsRequest', '3': '.card.PeekDestinationCardsResponse'},
    const {'1': 'ClaimDestinationCards', '2': '.card.ClaimDestinationCardsRequest', '3': '.card.Empty'},
  ],
};

const CardService$messageJson = const {
  '.card.GetDestinationCardRequest': GetDestinationCardRequest$json,
  '.card.DestinationCard': DestinationCard$json,
  '.card.PeekDestinationCardsRequest': PeekDestinationCardsRequest$json,
  '.card.PeekDestinationCardsResponse': PeekDestinationCardsResponse$json,
  '.card.ClaimDestinationCardsRequest': ClaimDestinationCardsRequest$json,
  '.card.Empty': Empty$json,
};

