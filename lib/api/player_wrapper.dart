import 'game.pb.dart';
import 'game.pbenum.dart';

class Player {
  String username;
  String playerId;
  String userId;
  String gameId;
  Player_Color color;

  // default constructor
  Player(String username, String playerId, String userId, String gameId, Player_Color color) {
    this.username = username;
    this.playerId = playerId;
    this.userId = userId;
    this.gameId = gameId;
    this.color = color;
  }

}