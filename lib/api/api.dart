
import 'game.pb.wwttr.dart';
import 'health.pb.wwttr.dart';
import 'auth.pb.wwttr.dart';

export 'api.pb.dart';
export 'auth.pb.dart';
export 'game.pb.dart';
export 'health.pb.dart';
export 'api_error.dart';

final authProxy = AuthServiceProxy("http://master.wwttr.umkhandi.com/");
final gameProxy = GameServiceProxy("http://master.wwttr.umkhandi.com/");
final healthProxy = HealthServiceProxy("http://master.wwttr.umkhandi.com/");
