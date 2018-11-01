import 'package:ticket_to_ride/fragments/game_menu_fragment.dart';
import 'package:ticket_to_ride/fragments/fragment_library.dart';

class GameMenuPresenter implements GameMenuObserver  {

  GameMenuFragment _fragment;

  @override
  openChat() {
    FragmentLibrary.navigatePush('/chat');
  }

  @override
  openGameHistory() {
    FragmentLibrary.navigatePush('/game_history');
  }

  build() {
    _fragment = new GameMenuFragment(title: 'Login');
    _fragment.addObserver(this);
    return _fragment;
  }
}
