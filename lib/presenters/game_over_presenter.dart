import 'package:flutter/material.dart';
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
    return 20;//stats.points + stats.destinationCardCount + stats.trainCount;
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

    /*for (PlayerStats p in stream) {
      PlayerStatsWrapper w = PlayerStatsWrapper();
      w.player = GlobalContext().playerMap[p.playerId];
      w.stats = p;
      players.add(w);
    } */

    // dummy data
    for (int i = 0; i < 3; i++) {
      PlayerStatsWrapper w = PlayerStatsWrapper();
      Player_Color c;
      if (i == 0)
        c = Player_Color.BLUE;
      else if (i == 1)
        c = Player_Color.GREEN;
      else if (i == 2)
        c = Player_Color.ORANGE;

      w.player = pw.Player('username','playerId','userId', 'gameId', c);

      w.stats.playerId = 'playerId';
      // w.stats.points = i*20;
      w.stats.trainCount = i+1;
      w.stats.trainCardCount = i+2;
      w.stats.destinationCardCount = i;

      players.add(w);
    }

    // sorts the players list in descending points order
    // --> players[0] is the winner
    players.sort((PlayerStatsWrapper a, PlayerStatsWrapper b) => (b.getTotalPoints() - a.getTotalPoints()));

    for (int i = 0; i < players.length; i++) {
      players[i].rank = i+1;
    }

    fragment = GameOverFragment(this, players, key: gameOverFragmentKey);
  }



  getPlayerStats() {
    var ctx = ClientContext();

    // TODO stream playerStats from gameProxy
  }

  Widget build() {
    return fragment;
  }

}
