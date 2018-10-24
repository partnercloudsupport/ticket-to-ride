import 'package:flutter/material.dart';

import 'package:ticket_to_ride/fragments/create_game_fragment.dart';
import 'package:ticket_to_ride/fragments/game_list_fragment.dart';

/* TODO global keys for fragment states? */
final createGameKey = GlobalKey<CreateGameFragmentState>();
final createPlayerKey = GlobalKey<CreateGameFragmentState>();

/* TODO add push and pop functions to fragments, presenters call */

class Presenter {

<<<<<<< HEAD
  createGame(request) async {}
  createPlayer(request) async {}
  
}
=======
  createGame(form) async {}
  getApi() {}

}

// abstract class Api {
//   // dynamic getApi();
// }
>>>>>>> e4b38887490879ffb82e4a2a34cd3ae91bd8d53c
