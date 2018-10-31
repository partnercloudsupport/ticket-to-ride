import 'package:test/test.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';

void main() {
  // test('unary request', () async {
  //   var ctx = ClientContext();
  //   var req = api.GetHealthRequest();
  //   var health = await api.healthProxy.getHealth(ctx, req);
  //   expect(api.Health_Status.READY, equals(health.status));
  // });

  test('server streaming request', () async {
    var ctx = ClientContext();
    var req = api.GetHealthRequest();
    await for (var health in api.healthProxy.streamHealth(ctx, req).take(3)) {
      expect(api.Health_Status.READY, equals(health.status));
    }
  });
}
