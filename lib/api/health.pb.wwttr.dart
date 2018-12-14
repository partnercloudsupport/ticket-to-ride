///
//  Generated code. Do not modify.
//  source: health.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';
import 'dart:collection';

import 'health.pb.dart';
import 'health.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

import './api.pb.dart';
import './auth.pb.dart';
import './game.pb.dart';
import './card.pb.dart';
import './chat.pb.dart';
import './descriptor.pb.dart';
import './plugin.pb.dart';
import './route.pb.dart';

class HealthServiceProxy {
  String _url;
  HealthServiceProxy(this._url);

    Future<Health> getHealth(ClientContext ctx, GetHealthRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'GetHealth';
      req.service = 'health.HealthService';
      req.payload = request.writeToBuffer();
      var httpResponse = await http.post(_url, body: req.writeToBuffer());
      response = Response.fromBuffer(httpResponse.bodyBytes);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }

    if (response.code != Code.OK) {
      throw ApiError(response.code, response.message);
    }

    try {
      return Health.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Stream<Health> streamHealth(ClientContext ctx, GetHealthRequest request) async* {
    print("STREAMING REQ");
    while (true) {
      try {
        var req = Request();
        req.method = 'StreamHealth';
        req.service = 'health.HealthService';
        req.payload = request.writeToBuffer();

        var client = http.Client();
        var httpRequest = http.Request('POST', Uri.parse(_url));
        httpRequest.bodyBytes = req.writeToBuffer();
        var httpResponse = await client.send(httpRequest);
        int length = 0;
        var dataBuffer = List<int>();
        var lengthBuffer = ByteData(4);
        var lengthOffset = 0;
        var recieved = HashSet<String>();

        await for (var byte in httpResponse.stream.expand((el) => el)) {
          if (length == 0) {
            lengthBuffer.setInt8(lengthOffset, byte);
            lengthOffset++;
            if (lengthOffset == 4) {
              lengthOffset = 0;
              length = ByteData.view(lengthBuffer.buffer).getUint32(0, Endian.little);
            }
            continue;
          }

          dataBuffer.add(byte);

          length--;
          if (length == 0) {
            var resp = Response.fromBuffer(dataBuffer);
            print("GOT PAYLOAD");
            print(resp.id);
            print(resp.code);
            if (resp.code == Code.PING) {
              continue;
            }
            if (!recieved.add(resp.id)) {
              continue;
            }
            if (resp.code != Code.OK) {
              throw ApiError(resp.code, resp.message);
            }
            yield Health.fromBuffer(resp.payload);
            dataBuffer.clear();
          }
        }
      }
      catch (err) {
        print("ERROR FROM STREAM: RETRYING in 5 seconds");
        print(err);
        await Future.delayed(Duration(seconds: 5));
      }
    }
  }


}

