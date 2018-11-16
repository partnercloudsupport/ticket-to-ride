
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

final authProxy = AuthServiceProxy("http://master.wwttr.umkhandi.com/");
final gameProxy = GameServiceProxy("http://master.wwttr.umkhandi.com/");
final healthProxy = HealthServiceProxy("http://master.wwttr.umkhandi.com/");
final chatProxy = ChatServiceProxy("http://master.wwttr.umkhandi.com/");
final cardProxy = CardServiceProxy("http://master.wwttr.umkhandi.com/");
final routeProxy = RouteServiceProxy("http://master.wwttr.umkhandi.com/");
