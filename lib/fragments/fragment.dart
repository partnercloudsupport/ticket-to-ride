import 'package:fluttertoast/fluttertoast.dart';

class Fragment {
  void _showErrorToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        bgcolor: "#e74c3c",
        textcolor: '#ffffff',
        timeInSecForIos: 5,
        gravity: ToastGravity.TOP
      );
  }
}