import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';
import 'api/player_wrapper.dart';



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

}
