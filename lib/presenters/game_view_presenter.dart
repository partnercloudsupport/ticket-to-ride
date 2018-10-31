import 'package:ticket_to_ride/fragments/game_view_fragment.dart';
import 'package:ticket_to_ride/presenters/game_map_presenter.dart';
import 'package:ticket_to_ride/presenters/game_player_presenter.dart';
import 'package:ticket_to_ride/presenters/game_menu_presenter.dart';
import 'package:ticket_to_ride/presenters/game_bank_presenter.dart';
import 'package:ticket_to_ride/presenters/game_hand_presenter.dart';

class GameViewPresenter {
  build() {
    var boardFragment = new GameMapPresenter().build();
    var playerFragment = new GamePlayerPresenter().build();
    var menuFragment = new GameMenuPresenter().build();
    var bankFragment = new GameBankPresenter().build();
    var handFragment = new GameHandPresenter().build();

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
