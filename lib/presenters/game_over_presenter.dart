import 'package:ticket_to_ride/fragments/game_over_fragment.dart';

import 'package:ticket_to_ride/global_context.dart';

import 'package:protobuf/protobuf.dart';
import 'package:ticket_to_ride/api/player_wrapper.dart' as pw;
import 'package:ticket_to_ride/api/game.pb.dart';


class PlayerStatsWrapper {
  pw.Player player;
  PlayerStats stats;
  int rank;

  int getTotalPoints() {
    // TODO dummy points
    return stats.destinationCardCount + stats.trainCount;
  }
}

class GameOverPresenter {

  final String title;
  GameOverFragment fragment;

  List<PlayerStatsWrapper> players;

  // default constructor
  GameOverPresenter({this.title}) {
    var request = StreamPlayerStatsRequest();
    var ctx = ClientContext();
    // TODO fill request
    
    var stream; // TODO stream playerstats from gameProxy

    for (PlayerStats p in stream) { 
      PlayerStatsWrapper w = PlayerStatsWrapper();
      w.player = GlobalContext().playerMap[p.playerId];
      w.stats = p;
      players.add(w);
    }

    players.sort((PlayerStatsWrapper a, PlayerStatsWrapper b) => (a.getTotalPoints() - b.getTotalPoints()));

    fragment = GameOverFragment(this, players, key: gameOverFragmentKey);
  }



  getPlayerStats() {
    var ctx = ClientContext();

    // TODO stream playerStats from gameProxy
  }
  
}