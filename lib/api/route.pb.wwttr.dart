///
//  Generated code. Do not modify.
//  source: route.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';
import 'dart:collection';

import 'route.pb.dart';
import 'route.pbjson.dart';
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
import './health.pb.dart';
import './plugin.pb.dart';

class RouteServiceProxy {
  String _url;
  RouteServiceProxy(this._url);

    Future<ClaimRouteResponse> claimRoute(ClientContext ctx, ClaimRouteRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'ClaimRoute';
      req.service = 'route.RouteService';
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
      return ClaimRouteResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Stream<Route> streamRoutes(ClientContext ctx, StreamRoutesRequest request) async* {

    while (true) {
      try {
        var req = Request();
        req.method = 'StreamRoutes';
        req.service = 'route.RouteService';
        req.payload = request.writeToBuffer();

        var client = http.Client();
        var httpRequest = http.Request('POST', Uri.parse(_url));
        httpRequest.bodyBytes = req.writeToBuffer();
        print("opening stream");
        var httpResponse = await client.send(httpRequest);
        print("stream open");
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
            if (resp.code == Code.PING) {
              continue;
            }
            if (!recieved.add(resp.id)) {
              continue;
            }
            if (resp.code != Code.OK) {
              throw ApiError(resp.code, resp.message);
            }
            yield Route.fromBuffer(resp.payload);
            dataBuffer.clear();
          }
        }
      }
      catch (err) {
        await Future.delayed(Duration(seconds: 5));
      }
    }
  }


}

