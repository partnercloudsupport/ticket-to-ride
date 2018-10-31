
import 'api.pb.dart';

class ApiError extends Error {
  Code code;
  String message;

  ApiError(this.code, this.message);
}
