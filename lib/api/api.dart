
import 'game.pb.wwttr.dart';
import 'health.pb.wwttr.dart';
import 'auth.pb.wwttr.dart';

export 'api.pb.dart';
export 'auth.pb.dart';
export 'game.pb.dart';
export 'health.pb.dart';
export 'api_error.dart';

final authProxy = AuthServiceProxy("http://104.198.214.161/");//"http://172.20.10.12/"));//
final gameProxy = GameServiceProxy("http://104.198.214.161/");//"http://172.20.10.12/"));//
final healthProxy = HealthServiceProxy("http://104.198.214.161/");//"http://172.20.10.12/"));//
