///
//  Generated code. Do not modify.
//  source: api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'api.pbenum.dart';

export 'api.pbenum.dart';

class Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Request', package: const $pb.PackageName('api'))
    ..aOS(1, 'service')
    ..aOS(2, 'method')
    ..a<List<int>>(3, 'payload', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Request() : super();
  Request.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Request.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Request clone() => new Request()..mergeFromMessage(this);
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request));
  $pb.BuilderInfo get info_ => _i;
  static Request create() => new Request();
  static $pb.PbList<Request> createRepeated() => new $pb.PbList<Request>();
  static Request getDefault() => _defaultInstance ??= create()..freeze();
  static Request _defaultInstance;
  static void $checkItem(Request v) {
    if (v is! Request) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get service => $_getS(0, '');
  set service(String v) { $_setString(0, v); }
  bool hasService() => $_has(0);
  void clearService() => clearField(1);

  String get method => $_getS(1, '');
  set method(String v) { $_setString(1, v); }
  bool hasMethod() => $_has(1);
  void clearMethod() => clearField(2);

  List<int> get payload => $_getN(2);
  set payload(List<int> v) { $_setBytes(2, v); }
  bool hasPayload() => $_has(2);
  void clearPayload() => clearField(3);
}

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Response', package: const $pb.PackageName('api'))
    ..e<Code>(1, 'code', $pb.PbFieldType.OE, Code.UNSPECIFIED, Code.valueOf, Code.values)
    ..a<List<int>>(2, 'payload', $pb.PbFieldType.OY)
    ..aOS(3, 'message')
    ..aOS(4, 'id')
    ..hasRequiredFields = false
  ;

  Response() : super();
  Response.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Response.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Response clone() => new Response()..mergeFromMessage(this);
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response));
  $pb.BuilderInfo get info_ => _i;
  static Response create() => new Response();
  static $pb.PbList<Response> createRepeated() => new $pb.PbList<Response>();
  static Response getDefault() => _defaultInstance ??= create()..freeze();
  static Response _defaultInstance;
  static void $checkItem(Response v) {
    if (v is! Response) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Code get code => $_getN(0);
  set code(Code v) { setField(1, v); }
  bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  List<int> get payload => $_getN(1);
  set payload(List<int> v) { $_setBytes(1, v); }
  bool hasPayload() => $_has(1);
  void clearPayload() => clearField(2);

  String get message => $_getS(2, '');
  set message(String v) { $_setString(2, v); }
  bool hasMessage() => $_has(2);
  void clearMessage() => clearField(3);

  String get id => $_getS(3, '');
  set id(String v) { $_setString(3, v); }
  bool hasId() => $_has(3);
  void clearId() => clearField(4);
}

