///
//  Generated code. Do not modify.
//  source: card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';

import 'card.pb.dart';
import 'card.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

class CardServiceProxy {
  String _url;
  CardServiceProxy(this._url);

    Future<DestinationCard> getDestinationCard(ClientContext ctx, GetDestinationCardRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'GetDestinationCard';
      req.service = 'card.CardService';
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
      return DestinationCard.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<PeekDestinationCardsResponse> peekDestinationCards(ClientContext ctx, PeekDestinationCardsRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'PeekDestinationCards';
      req.service = 'card.CardService';
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
      return PeekDestinationCardsResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<ClaimDestinationCardsResponse> claimDestinationCards(ClientContext ctx, ClaimDestinationCardsRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'ClaimDestinationCards';
      req.service = 'card.CardService';
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
      return ClaimDestinationCardsResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Stream<DestinationCard> streamDestinationCards(ClientContext ctx, StreamDestinationCardsRequest request) {
    var req = Request();
    try {
      req.method = 'StreamDestinationCards';
      req.service = 'card.CardService';
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
            sink.add(DestinationCard.fromBuffer(resp.payload));
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

  Stream<TrainCard> streamTrainCards(ClientContext ctx, StreamTrainCardsRequest request) {
    var req = Request();
    try {
      req.method = 'StreamTrainCards';
      req.service = 'card.CardService';
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
            sink.add(TrainCard.fromBuffer(resp.payload));
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

  Stream<DeckStats> streamDeckStats(ClientContext ctx, StreamDeckStatsRequest request) {
    var req = Request();
    try {
      req.method = 'StreamDeckStats';
      req.service = 'card.CardService';
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
            sink.add(DeckStats.fromBuffer(resp.payload));
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

  Future<Empty2> drawTrainCardFromDeck(ClientContext ctx, DrawTrainCardFromDeckRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'DrawTrainCardFromDeck';
      req.service = 'card.CardService';
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
      return Empty2.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<Empty2> drawFaceUpTrainCard(ClientContext ctx, DrawFaceUpTrainCardRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'DrawFaceUpTrainCard';
      req.service = 'card.CardService';
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
      return Empty2.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

  Future<GetTrainCardsInHandResponse> getTrainCardsInHand(ClientContext ctx, GetTrainCardsInHandRequest request) async {

    var req = Request();
    Response response;
    try {
      req.method = 'getTrainCardsInHand';
      req.service = 'card.CardService';
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
      return GetTrainCardsInHandResponse.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }


}

