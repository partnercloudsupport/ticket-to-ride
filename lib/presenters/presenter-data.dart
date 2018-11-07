import 'package:ticket_to_ride/api/api.dart' as api;

getTrainColor(color) {
  switch(color) {
  case api.TrainColor.ORANGE:
    return 0xFFDB9759;
  case api.TrainColor.PINK:
    return 0xFFD950C6;
  case api.TrainColor.GREEN:
    return 0xFF84B72A;
  case api.TrainColor.BLUE:
    return 0xFF5FDCDA;
  case api.TrainColor.BLACK:
    return 0xFF212121;
  case api.TrainColor.GREY:
    return 0xFFC3C3C3;
  case api.TrainColor.YELLOW:
    return 0xFFD9B755;
  case api.TrainColor.RED:
    return 0xFFD74141;
  case api.TrainColor.WHITE:
    return 0xFFECECEC;
  }
}

getPlayerColor(colorCode) {
  switch(colorCode) {
    case api.Player_Color.RED:
      return 'red';
    case api.Player_Color.BLUE:
      return 'blue';
    case api.Player_Color.GREEN:
      return 'green';
    case api.Player_Color.PURPLE:
      return 'purple';
    case api.Player_Color.ORANGE:
      return 'orange';
    case api.Player_Color.YELLOW:
      return 'yellow';
  }
}

getPlayerColorInt(colorCode) {
  switch(colorCode) {
    case api.Player_Color.RED:
      return 0XFF731616;
    case api.Player_Color.BLUE:
      return 0XFF00587C;
    case api.Player_Color.GREEN:
      return 0XFF527C00;
    case api.Player_Color.PURPLE:
      return 0XFF4D345A;
    case api.Player_Color.ORANGE:
      return 0XFF7C4000;
    case api.Player_Color.YELLOW:
      return 0XFFB59A00;
  }
}
