import 'package:flutter/material.dart';
import 'package:protobuf/protobuf.dart';

import 'package:ticket_to_ride/fragments/game_over_fragment.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:ticket_to_ride/global_context.dart';
import 'package:ticket_to_ride/presenters/presenter-data.dart';

// import 'package:ticket_to_ride/api/player_wrapper.dart' as pw;
// import 'package:ticket_to_ride/fragments/fragment_library.dart';
// import 'package:ticket_to_ride/api/game.pb.dart';

class GameOverApi {
  streamPlayerStats(ctx, request) {
    return api.gameProxy.streamPlayerStats(ctx, request);
  }
}

class GameOverPresenter implements GameOverObserver {

  GameOverApi _api;
  GameOverFragment _fragment;

  GameOverPresenter() {
    this._api = new GameOverApi();
  }

  GameOverPresenter.withApi(this._api);

  getPlayerStats() {
    var ctx = ClientContext();
    var request = new api.StreamPlayerStatsRequest();
    request.gameId = GlobalContext().currentGameId;

    var playerStats = Map<String, api.PlayerStats>();

    return _api.streamPlayerStats(ctx, request).map((api.PlayerStats response) {

      // update old player data
      playerStats[response.playerId] = response;

      var finalPlayerStats = [];

      playerStats.forEach((playerId, stats) {
        finalPlayerStats.add(PlayerStat(
          0,
          getPlayerColor(GlobalContext().playerMap[playerId].color),
          GlobalContext().playerMap[playerId].username,
          stats.trainCardPoints,
          stats.destinationCardPoints,
          stats.longestRoutePoints,
          stats.trainCardPoints + stats.destinationCardPoints + stats.longestRoutePoints
        ));
      });

      finalPlayerStats.sort((playerA, playerB) => (playerB.totalPoints - playerA.totalPoints));

      for (int i = 0; i < finalPlayerStats.length; i++) {
        finalPlayerStats[i].rank = i+1;
      }

      return finalPlayerStats;
    });
  }

  Widget build() {
    _fragment = new GameOverFragment();
    _fragment.addObserver(this);
    return _fragment;
  }

}
