///
//  Generated code. Do not modify.
//  source: api/api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Response_Code extends $pb.ProtobufEnum {
  static const Response_Code UNSPECIFIED = const Response_Code._(0, 'UNSPECIFIED');
  static const Response_Code OK = const Response_Code._(1, 'OK');
  static const Response_Code INVALID_ARGUMENT = const Response_Code._(2, 'INVALID_ARGUMENT');
  static const Response_Code INTERNAL = const Response_Code._(3, 'INTERNAL');
  static const Response_Code UNAVAILABLE = const Response_Code._(4, 'UNAVAILABLE');
  static const Response_Code NOT_FOUND = const Response_Code._(5, 'NOT_FOUND');

  static const List<Response_Code> values = const <Response_Code> [
    UNSPECIFIED,
    OK,
    INVALID_ARGUMENT,
    INTERNAL,
    UNAVAILABLE,
    NOT_FOUND,
  ];

  static final Map<int, Response_Code> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Response_Code valueOf(int value) => _byValue[value];
  static void $checkItem(Response_Code v) {
    if (v is! Response_Code) $pb.checkItemFailed(v, 'Response_Code');
  }

  const Response_Code._(int v, String n) : super(v, n);
}

