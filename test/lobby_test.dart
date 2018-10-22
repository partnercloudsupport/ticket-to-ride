import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ticket_to_ride/fragments/lobby_view_fragment.dart';
import 'package:ticket_to_ride/lobby_view_presenter.dart';

class TestLobbyView implements LobbyView {

  @override
  getGame(context) {


  }

  @override
  exitGame(context) {
  }

  @override
  startGame(context) {
  }

}

class LobbyViewTestApi implements LobbyViewApi {
  getGame(ctx, request) {
    var game = LobbyGame();
    game.name = 'Test Game Name 1';
    return game;

    // return api.gameProxy.getGame(ctx, request);
  }

  getPlayer(ctx, request) {
    // return api.gameProxy.getPlayer(ctx, request);
  }

  getUsername(ctx, request) {
    // return api.authProxy.getUsername(ctx, request);
  }
}

void main() {
  testWidgets('test: LobbyView', (WidgetTester tester) async {

    var lobbyTester = TestLobbyView();
    var lobbyApiTester = LobbyViewTestApi();
    var presenter = LobbyViewPresenter.withApi(lobbyApiTester);
    await tester.pumpWidget(MaterialApp(home: LobbyViewFragment(lobbyTester, title: 'Testing lobby')));


    // test game display
    // await tester.tap(find.byKey(Key('loginButton')));
    // await tester.pump();

    expect(find.byKey(Key('gameName')), 'Test Game Name 1');




    // // test login button
    // expect(loginTester.accountLoginCalled, isFalse);
    // await tester.tap(find.byKey(Key('loginButton')));
    // await tester.pump();
    // expect(loginTester.accountLoginCalled, isTrue);
    //
    // // test register button
    // expect(loginTester.accountRegisterCalled, isFalse);
    // await tester.tap(find.byKey(Key('registerButton')));
    // await tester.pump();
    // expect(loginTester.accountRegisterCalled, isTrue);

  });

}
