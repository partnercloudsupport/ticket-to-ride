///
//  Generated code. Do not modify.
//  source: api/health.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Health_Status extends $pb.ProtobufEnum {
  static const Health_Status UNSPECIFIED = const Health_Status._(0, 'UNSPECIFIED');
  static const Health_Status READY = const Health_Status._(1, 'READY');
  static const Health_Status NOT_READY = const Health_Status._(2, 'NOT_READY');

  static const List<Health_Status> values = const <Health_Status> [
    UNSPECIFIED,
    READY,
    NOT_READY,
  ];

  static final Map<int, Health_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Health_Status valueOf(int value) => _byValue[value];
  static void $checkItem(Health_Status v) {
    if (v is! Health_Status) $pb.checkItemFailed(v, 'Health_Status');
  }

  const Health_Status._(int v, String n) : super(v, n);
}

