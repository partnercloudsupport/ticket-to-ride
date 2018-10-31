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


}

