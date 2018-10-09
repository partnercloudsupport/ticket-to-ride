import 'package:test/test.dart';
import 'package:ticket_to_ride/poll.dart';
import "dart:async";

void main() {
  test('poller works', () async {
    var expected = DateTime.now();
    var i = 0;
    var cancel, cancelled;
    cancel = poll(30, () async {
      expect(DateTime.now().isAfter(expected), isTrue);
      expected = DateTime.now().add(Duration(milliseconds: 50));

      if (i == 2) {
        // Verify we stop triggering after cancel is called.
        expect(cancelled, isFalse);
        cancel();
        cancelled = true;
      }

      await Future.delayed(Duration(milliseconds: 20));
      i++;
    });
  });
}
