///
//  Generated code. Do not modify.
//  source: game.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class Game_Status extends $pb.ProtobufEnum {
  static const Game_Status UNKNOWN = const Game_Status._(0, 'UNKNOWN');
  static const Game_Status PRE = const Game_Status._(1, 'PRE');
  static const Game_Status STARTED = const Game_Status._(2, 'STARTED');
  static const Game_Status FINISHED = const Game_Status._(3, 'FINISHED');

  static const List<Game_Status> values = const <Game_Status> [
    UNKNOWN,
    PRE,
    STARTED,
    FINISHED,
  ];

  static final Map<int, Game_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Game_Status valueOf(int value) => _byValue[value];
  static void $checkItem(Game_Status v) {
    if (v is! Game_Status) $pb.checkItemFailed(v, 'Game_Status');
  }

  const Game_Status._(int v, String n) : super(v, n);
}

class Player_Color extends $pb.ProtobufEnum {
  static const Player_Color UNKNOWN = const Player_Color._(0, 'UNKNOWN');
  static const Player_Color RED = const Player_Color._(1, 'RED');
  static const Player_Color BLUE = const Player_Color._(2, 'BLUE');
  static const Player_Color GREEN = const Player_Color._(3, 'GREEN');
  static const Player_Color YELLOW = const Player_Color._(4, 'YELLOW');
  static const Player_Color PURPLE = const Player_Color._(5, 'PURPLE');
  static const Player_Color ORANGE = const Player_Color._(6, 'ORANGE');

  static const List<Player_Color> values = const <Player_Color> [
    UNKNOWN,
    RED,
    BLUE,
    GREEN,
    YELLOW,
    PURPLE,
    ORANGE,
  ];

  static final Map<int, Player_Color> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Player_Color valueOf(int value) => _byValue[value];
  static void $checkItem(Player_Color v) {
    if (v is! Player_Color) $pb.checkItemFailed(v, 'Player_Color');
  }

  const Player_Color._(int v, String n) : super(v, n);
}

