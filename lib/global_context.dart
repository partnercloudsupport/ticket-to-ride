import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/api/game.pb.dart';
import 'package:protobuf/protobuf.dart';

class GlobalContext {

  // singleton _globalContext
  static final GlobalContext _globalContext = GlobalContext._internal();

  factory GlobalContext() {
    return _globalContext;
  }

  GlobalContext._internal();

  String currentGameId;
  String currentUserId;

  // maps playerId to Player object
  Map<String, Player> playerMap;

  addPlayerToMap(Player player) {
    playerMap.putIfAbsent(player.id, () => player);
  }

}
