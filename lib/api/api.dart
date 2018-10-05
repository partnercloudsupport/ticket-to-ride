
import 'api.pb.dart';
import 'game.pb.dart';
import 'health.pb.dart';
import 'auth.pb.dart';
import 'package:protobuf/protobuf.dart';
import 'dart:async';

import 'package:http/http.dart' as http;

export 'api.pb.dart';
export 'auth.pb.dart';
export 'game.pb.dart';
export 'health.pb.dart';

final authProxy = AuthServiceApi(ClientProxy("auth", "http://35.188.56.148/"));
final gameProxy = GameServiceApi(ClientProxy("game", "http://35.188.56.148/"));
final healthProxy = HealthServiceApi(ClientProxy("health", "http://35.188.56.148/"));

class ClientProxy extends RpcClient {

  String package;
  String url;

  ClientProxy(this.package, this.url);

  @override
  Future<T> invoke<T extends GeneratedMessage>(ClientContext ctx, String serviceName, String methodName, GeneratedMessage req, T emptyResponse) async {
    var request = Request();
    request.method = methodName;
    request.service = package + "." + serviceName;
    request.payload = req.writeToBuffer();
    print(request.service);
    var httpResponse = await http.post(url, body: request.writeToBuffer());
    var response = Response.fromBuffer(httpResponse.bodyBytes);
    if (response.code != Response_Code.OK) {
      throw ApiError(response.code, response.message);
    }

    emptyResponse.mergeFromBuffer(response.payload);
    return emptyResponse;
  }
}

class ApiError extends Error {
  Response_Code code;
  String message;

  ApiError(this.code, this.message);
}
