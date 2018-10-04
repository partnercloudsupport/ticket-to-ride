import 'package:test/test.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';

void main() {
  test('successful request', () async {
    var ctx = ClientContext();
    var health;
    try {
      health = await api.healthProxy.getHealth(ctx, api.GetHealthRequest());
    }
    catch (e) {
      print(e.code);
    }
    expect(api.Health_Status.READY, health.status);
  });
}
