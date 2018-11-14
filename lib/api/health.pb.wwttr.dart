///
//  Generated code. Do not modify.
//  source: api/health.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';

import 'health.pb.dart';
import 'health.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

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

  Stream<Health> streamHealth(ClientContext ctx, GetHealthRequest request) {
    var req = Request();
    try {
      req.method = 'StreamHealth';
      req.service = 'health.HealthService';
      req.payload = request.writeToBuffer();

      var client = http.Client();
      var httpRequest = http.Request('POST', Uri.parse(_url));
      httpRequest.bodyBytes = req.writeToBuffer();

      var httpResponse = client.send(httpRequest);

      int length = 0;
      var dataBuffer = List<int>();
      var lengthBuffer = ByteData(4);
      var lengthOffset = 0;

      return httpResponse
        .asStream()
        .asyncExpand((el) => el.stream)
        .expand((el) => el)
        .transform(StreamTransformer.fromHandlers(
        handleData: (byte, sink) {
          if (length == 0) {
            lengthBuffer.setInt8(lengthOffset, byte);
            lengthOffset++;
            if (lengthOffset == 4) {
              lengthOffset = 0;
              length = ByteData.view(lengthBuffer.buffer).getUint32(0, Endian.little);
            }
            return;
          }

          dataBuffer.add(byte);

          length--;
          if (length == 0) {
            var resp = Response.fromBuffer(dataBuffer);
            if (resp.code == Code.PING) {
              return;
            }
            if (resp.code != Code.OK) {
              sink.addError(ApiError(resp.code, resp.message));
              return;
            }
            sink.add(Health.fromBuffer(resp.payload));
            dataBuffer.clear();
          }
        },
        handleError: (err, stackTrace, sink) {
          sink.addError(ApiError(Code.UNAVAILABLE, err.toString()));
        }
      ));
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }


}

