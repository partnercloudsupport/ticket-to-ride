import 'api/player_wrapper.dart';
import 'api/game.pb.dart' as player;
import 'api/game.pbenum.dart';

class GlobalContext {

  // singleton _globalContext
  static final GlobalContext _globalContext = GlobalContext._internal();

  factory GlobalContext() {
    return _globalContext;
  }

  GlobalContext._internal();

  String currentGameId;
  String currentUserId;
  String currentPlayerId;

  // maps playerId to Player object
  Map<String, Player> playerMap = Map<String,Player>();

  addPlayerToMap(Player player) {
    playerMap.putIfAbsent(player.playerId, () => player);
  }

  Map<String, Player> dummyPlayerMap = {
    "player1": Player("test1", "player1", "test1", "game1", Player_Color.GREEN),
    "player2": Player("test2", "player2", "test2", "game1", Player_Color.BLUE),
    "player3": Player("test3", "player3", "test3", "game1", Player_Color.YELLOW)
  };

}
