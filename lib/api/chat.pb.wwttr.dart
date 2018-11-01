///
//  Generated code. Do not modify.
//  source: api/chat.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';

import 'chat.pb.dart';
import 'chat.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

class ChatServiceProxy {
  String _url;
  ChatServiceProxy(this._url);

    Future<Message> createMessage(ClientContext ctx, CreateMessageRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'createMessage';
      req.service = 'chat.ChatService';
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
      return Message.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<Message> getMessage(ClientContext ctx, GetMessageRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'getMessage';
      req.service = 'chat.ChatService';
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
      return Message.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Stream<Message> streamMessages(ClientContext ctx, StreamMessagesRequest request) {
    var req = Request();
    try {
      req.method = 'streamMessages';
      req.service = 'chat.ChatService';
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
            print("Got length");
            print(byte);
            lengthBuffer.setInt8(lengthOffset, byte);
            lengthOffset++;
            if (lengthOffset == 4) {
              lengthOffset = 0;
              length = ByteData.view(lengthBuffer.buffer).getUint32(0, Endian.little);
            }
            return;
          }

          dataBuffer.add(byte);
          print("Got payload");
          print(byte);
          print(new String.fromCharCode(byte));

          length--;
          if (length == 0) {
            var resp = Response.fromBuffer(dataBuffer);
            if (resp.code != Code.OK) {
              sink.addError(ApiError(resp.code, resp.message));
              return;
            }
            
            sink.add(Message.fromBuffer(dataBuffer));
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

