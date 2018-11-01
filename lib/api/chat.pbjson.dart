///
//  Generated code. Do not modify.
//  source: api/chat.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'player_id', '3': 3, '4': 1, '5': 9, '10': 'playerId'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 5, '10': 'timestamp'},
  ],
};

const CreateMessageRequest$json = const {
  '1': 'CreateMessageRequest',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'player_id', '3': 2, '4': 1, '5': 9, '10': 'playerId'},
  ],
};

const GetMessageRequest$json = const {
  '1': 'GetMessageRequest',
  '2': const [
    const {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
  ],
};

const StreamMessagesRequest$json = const {
  '1': 'StreamMessagesRequest',
  '2': const [
    const {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

const ChatService$json = const {
  '1': 'ChatService',
  '2': const [
    const {'1': 'createMessage', '2': '.chat.CreateMessageRequest', '3': '.chat.Message'},
    const {'1': 'getMessage', '2': '.chat.GetMessageRequest', '3': '.chat.Message'},
    const {'1': 'streamMessages', '2': '.chat.StreamMessagesRequest', '3': '.chat.Message', '6': true},
  ],
};

const ChatService$messageJson = const {
  '.chat.CreateMessageRequest': CreateMessageRequest$json,
  '.chat.Message': Message$json,
  '.chat.GetMessageRequest': GetMessageRequest$json,
  '.chat.StreamMessagesRequest': StreamMessagesRequest$json,
};

