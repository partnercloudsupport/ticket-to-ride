///
//  Generated code. Do not modify.
//  source: api/card.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class TrainColor extends $pb.ProtobufEnum {
  static const TrainColor UNSPECIFIED = const TrainColor._(0, 'UNSPECIFIED');
  static const TrainColor ORANGE = const TrainColor._(1, 'ORANGE');
  static const TrainColor PINK = const TrainColor._(2, 'PINK');
  static const TrainColor GREEN = const TrainColor._(3, 'GREEN');
  static const TrainColor BLUE = const TrainColor._(4, 'BLUE');
  static const TrainColor BLACK = const TrainColor._(5, 'BLACK');
  static const TrainColor GREY = const TrainColor._(6, 'GREY');
  static const TrainColor YELLOW = const TrainColor._(7, 'YELLOW');
  static const TrainColor RED = const TrainColor._(8, 'RED');
  static const TrainColor WHITE = const TrainColor._(9, 'WHITE');

  static const List<TrainColor> values = const <TrainColor> [
    UNSPECIFIED,
    ORANGE,
    PINK,
    GREEN,
    BLUE,
    BLACK,
    GREY,
    YELLOW,
    RED,
    WHITE,
  ];

  static final Map<int, TrainColor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TrainColor valueOf(int value) => _byValue[value];
  static void $checkItem(TrainColor v) {
    if (v is! TrainColor) $pb.checkItemFailed(v, 'TrainColor');
  }

  const TrainColor._(int v, String n) : super(v, n);
}

class TrainCard_State extends $pb.ProtobufEnum {
  static const TrainCard_State UNSPECIFIED = const TrainCard_State._(0, 'UNSPECIFIED');
  static const TrainCard_State HIDDEN = const TrainCard_State._(1, 'HIDDEN');
  static const TrainCard_State VISIBLE = const TrainCard_State._(2, 'VISIBLE');
  static const TrainCard_State OWNED = const TrainCard_State._(3, 'OWNED');

  static const List<TrainCard_State> values = const <TrainCard_State> [
    UNSPECIFIED,
    HIDDEN,
    VISIBLE,
    OWNED,
  ];

  static final Map<int, TrainCard_State> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TrainCard_State valueOf(int value) => _byValue[value];
  static void $checkItem(TrainCard_State v) {
    if (v is! TrainCard_State) $pb.checkItemFailed(v, 'TrainCard_State');
  }

  const TrainCard_State._(int v, String n) : super(v, n);
}

