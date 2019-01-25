
import 'game.pb.wwttr.dart';
import 'health.pb.wwttr.dart';
import 'auth.pb.wwttr.dart';
import 'chat.pb.wwttr.dart';
import 'card.pb.wwttr.dart';
import 'route.pb.wwttr.dart';

export 'api.pb.dart';
export 'auth.pb.dart';
export 'game.pb.dart';
export 'health.pb.dart';
export 'chat.pb.dart';
export 'card.pb.dart';
export 'route.pb.dart';
export 'api_error.dart';

// final url = "http://dev.wwttr.umkhandi.com/";
final url = "http://10.228.155.142:8080/";

final authProxy = AuthServiceProxy(url);
final gameProxy = GameServiceProxy(url);
final healthProxy = HealthServiceProxy(url);
final chatProxy = ChatServiceProxy(url);
final cardProxy = CardServiceProxy(url);
final routeProxy = RouteServiceProxy(url);
