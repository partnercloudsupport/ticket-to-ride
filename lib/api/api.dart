
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

final authProxy = AuthServiceApi(ClientProxy("auth", "http://104.198.214.161/"));
final gameProxy = GameServiceApi(ClientProxy("game", "http://104.198.214.161/"));
final healthProxy = HealthServiceApi(ClientProxy("health", "http://104.198.214.161/"));

class ClientProxy extends RpcClient {

  String package;
  String url;

  ClientProxy(this.package, this.url);

  @override
  Future<T> invoke<T extends GeneratedMessage>(ClientContext ctx, String serviceName, String methodName, GeneratedMessage req, T emptyResponse) async {
    var request = Request();
    Response response;
    try {
      request.method = methodName;
      request.service = package + "." + serviceName;
      request.payload = req.writeToBuffer();
      var httpResponse = await http.post(url, body: request.writeToBuffer());
      response = Response.fromBuffer(httpResponse.bodyBytes);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }

    print(response);

    if (response.code != Code.OK) {
      throw ApiError(response.code, response.message);
    }

    try {
      print("HERE");
      emptyResponse.mergeFromBuffer(response.payload);
      return emptyResponse;
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }
}

class ApiError extends Error {
  Code code;
  String message;

  ApiError(this.code, this.message);
}