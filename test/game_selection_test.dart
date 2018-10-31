import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ticket_to_ride/main.dart';
import 'package:ticket_to_ride/fragments/game_list_fragment.dart';
import 'package:ticket_to_ride/presenters/game_selection_presenter.dart';
import 'package:ticket_to_ride/fragments/create_game_fragment.dart';

class GameSelectionTest {

}

void main() {

   testWidgets('test: GameSelection', (WidgetTester tester) async {

    await tester.pumpWidget(
      StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return null;
        }
    ));


    // test createButton
    //expect(tester.createCalled, isFalse);
    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pump();
    //expect(loginTester.accountLoginCalled, isTrue);

    expect(find.byKey(Key('gameName')), 'Test Game Name 1');
   });
}
