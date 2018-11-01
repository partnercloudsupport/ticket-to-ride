import 'package:test/test.dart';
import 'package:ticket_to_ride/poll.dart';
import "dart:async";

void main() {
  test('poller works', () async {
    var expected = DateTime.now();
    var i = 0;
    var cancel, canceled = false;
    cancel = poll(30, () async {
      expect(DateTime.now().isAfter(expected), isTrue);
      expected = DateTime.now().add(Duration(milliseconds: 50));
      expect(i, lessThan(3));

      if (i == 2) {
        // Verify we stop triggering after cancel is called.
        cancel();
        canceled = true;
      }

      await Future.delayed(Duration(milliseconds: 20));
      i++;
    });

    await Future.delayed(Duration(milliseconds: 300));

    expect(i, equals(3));
    expect(canceled, isTrue);
  });
}
