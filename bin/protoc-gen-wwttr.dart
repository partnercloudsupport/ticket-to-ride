
import "dart:io";
import "package:ticket_to_ride/api/plugin.pb.dart";
import "package:path/path.dart" as p;
// import "pacakge:ticket_to_ride/api/descriptor.pb.dart";

void main() async {
  var data = await stdin.expand((batch) => batch).toList();
  var input = CodeGeneratorRequest.fromBuffer(data);
  var response = CodeGeneratorResponse();

  for (var descriptor in input.protoFile) {

    var dir = p.dirname(descriptor.name);
    var baseName = p.basenameWithoutExtension(descriptor.name);

    var file = CodeGeneratorResponse_File();

    file.name = p.join(input.parameter, dir, baseName + ".pb.wwttr.dart");
    file.content = """
///
//  Generated code. Do not modify.
//  source: ${descriptor.name}
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME

import 'dart:async';
import 'package:protobuf/protobuf.dart';

import '$baseName.pb.dart';
import '$baseName.pbjson.dart';
import 'api_error.dart';
import 'api.pb.dart';

import 'package:http/http.dart' as http;
import 'dart:typed_data';

""";

  for (var d in input.protoFile) {
    if (d == descriptor) {
      continue;
    }
    var baseName = p.basenameWithoutExtension(d.name);
    file.content += "import './$baseName.pb.dart';\n";
  }

  file.content += "\n";

    for (var service in descriptor.service) {
      var methods = "";
      for (var method in service.method) {
        var inputType = method.inputType.substring(method.inputType.lastIndexOf(".")+1);
        var methodName = method.name.substring(0, 1).toLowerCase() + method.name.substring(1);

        var returnType = method.outputType.substring(method.outputType.lastIndexOf(".")+1);

        if (method.serverStreaming) {
          methods += """
  Stream<$returnType> $methodName(ClientContext ctx, $inputType request) {
    var req = Request();
    try {
      req.method = '${method.name}';
      req.service = '${descriptor.package}.${service.name}';
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
            sink.add($returnType.fromBuffer(resp.payload));
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

""";
        }
        else {
          methods += """
  Future<$returnType> $methodName(ClientContext ctx, $inputType request) async {

    var req = Request();
    Response response;
    try {
      req.method = '${method.name}';
      req.service = '${descriptor.package}.${service.name}';
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
      return $returnType.fromBuffer(response.payload);
    }
    catch (err) {
      throw ApiError(Code.UNAVAILABLE, err.toString());
    }
  }

""";
        }
      }
      file.content += """
class ${service.name}Proxy {
  String _url;
  ${service.name}Proxy(this._url);

  $methods
}

""";
    }
    response.file.add(file);
  }
  stdout.add(response.writeToBuffer());
}

// String messageClassName(String descriptorName, {String parent = ''}) {
//   var name = descriptorName;
//   if (parent != '') {
//     name = '${parent}_${descriptorName}';
//   }
//   return name;
// }
