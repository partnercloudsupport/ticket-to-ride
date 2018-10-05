import 'package:test/test.dart';
import 'package:ticket_to_ride/api/api.dart' as api;
import 'package:protobuf/protobuf.dart';

void main() {
  test('successful request', () async {
    var ctx = ClientContext();
    var req = api.GetHealthRequest();
    var health = await api.healthProxy.getHealth(ctx, req);
    expect(api.Health_Status.READY, health.status);
  });
}
