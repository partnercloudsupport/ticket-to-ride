///
//  Generated code. Do not modify.
//  source: api/game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Game_status extends $pb.ProtobufEnum {
  static const Game_status UNKNOWN = const Game_status._(0, 'UNKNOWN');
  static const Game_status PRE = const Game_status._(1, 'PRE');
  static const Game_status STARTED = const Game_status._(2, 'STARTED');
  static const Game_status FINISHED = const Game_status._(3, 'FINISHED');

  static const List<Game_status> values = const <Game_status> [
    UNKNOWN,
    PRE,
    STARTED,
    FINISHED,
  ];

  static final Map<int, Game_status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Game_status valueOf(int value) => _byValue[value];
  static void $checkItem(Game_status v) {
    if (v is! Game_status) $pb.checkItemFailed(v, 'Game_status');
  }

  const Game_status._(int v, String n) : super(v, n);
}

