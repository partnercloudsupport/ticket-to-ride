import 'package:test/test.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';

void main() {
  test('unary request', () async {
    var ctx = ClientContext();
    var req = api.GetHealthRequest();
    var health = await api.healthProxy.getHealth(ctx, req);
    expect(api.Health_Status.READY, equals(health.status));
  });

  test('server streaming request', () async {
    var ctx = ClientContext();
    var req = api.GetHealthRequest();
    await for (var health in api.healthProxy.streamHealth(ctx, req).take(3)) {
      expect(api.Health_Status.READY, equals(health.status));
    }
  });

  test('stream messages', () async {
    var ctx = ClientContext();

    try {

      var gameReq = api.CreateGameRequest();
      gameReq.displayName = "testgame";
      gameReq.userId = "testuser";
      var game = await api.gameProxy.createGame(ctx, gameReq);

      // var playerReq = api.CreatePlayerRequest();
      // playerReq.userId = "testuser";
      // playerReq.gameId = game.gameId;
      // var player = await api.gameProxy.createPlayer(ctx, playerReq);

      var req = api.CreateMessageRequest();
      req.playerId = game.playerId;
      req.content = "this is a test";
      var expected = [
        await api.chatProxy.createMessage(ctx, req),
        await api.chatProxy.createMessage(ctx, req),
        await api.chatProxy.createMessage(ctx, req),
      ];

      var msgReq = api.StreamMessagesRequest();
      msgReq.gameId = game.gameId;

      var i = 0;
      await for (var msg in api.chatProxy.streamMessages(ctx, msgReq).take(3)) {
        expect(msg.messageId, equals(expected[i].messageId));
        expect(msg.content, equals(expected[i].content));
        expect(msg.playerId, equals(expected[i].playerId));
        expect(msg.timestamp, equals(expected[i].timestamp));
        i++;
      }
    }
    catch (e) {
      if (e is api.ApiError) {
        print(e.code);
        print(e.message);
      }
      else {
        print(e);
      }
      throw e;
    }
  });
}
