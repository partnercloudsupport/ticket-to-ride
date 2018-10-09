
import "dart:async";

typedef Future Callback();
typedef void Cancel();

Cancel poll(int interval, Callback callback) {
  var canceled = false;

  // run async stuff in a seperate function so the outer function
  // doesn't wait around.
  () async {
    while (!canceled) {
      await callback();
      await Future.delayed(Duration(milliseconds: interval));
    }
  }();

  return () {
    canceled = true;
  };
}
