///
//  Generated code. Do not modify.
//  source: api/player.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Player_color extends $pb.ProtobufEnum {
  static const Player_color UNKNOWN = const Player_color._(0, 'UNKNOWN');
  static const Player_color RED = const Player_color._(1, 'RED');
  static const Player_color BLUE = const Player_color._(2, 'BLUE');
  static const Player_color GREEN = const Player_color._(3, 'GREEN');
  static const Player_color YELLOW = const Player_color._(4, 'YELLOW');
  static const Player_color PURPLE = const Player_color._(5, 'PURPLE');
  static const Player_color ORANGE = const Player_color._(6, 'ORANGE');

  static const List<Player_color> values = const <Player_color> [
    UNKNOWN,
    RED,
    BLUE,
    GREEN,
    YELLOW,
    PURPLE,
    ORANGE,
  ];

  static final Map<int, Player_color> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Player_color valueOf(int value) => _byValue[value];
  static void $checkItem(Player_color v) {
    if (v is! Player_color) $pb.checkItemFailed(v, 'Player_color');
  }

  const Player_color._(int v, String n) : super(v, n);
}

