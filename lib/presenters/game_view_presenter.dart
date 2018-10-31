import 'package:ticket_to_ride/fragments/game_view_fragment.dart';
import 'package:ticket_to_ride/fragments/game_board_fragment.dart';
import 'package:ticket_to_ride/fragments/game_player_fragment.dart';
import 'package:ticket_to_ride/fragments/game_menu_fragment.dart';
import 'package:ticket_to_ride/fragments/game_bank_fragment.dart';
import 'package:ticket_to_ride/fragments/game_hand_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameViewPresenter {
  build() {
    var boardFragment = new GameBoardFragment();
    var playerFragment = new GamePlayerFragment();
    var menuFragment = new GameMenuFragment();
    var bankFragment = new GameBankFragment();
    var handFragment = new GameHandFragment();

    var fragment = new GameViewFragment(
      boardFragment: boardFragment,
      playerFragment: playerFragment,
      menuFragment: menuFragment,
      bankFragment: bankFragment,
      handFragment: handFragment,

      title: 'Login');

    return fragment;
  }
}
