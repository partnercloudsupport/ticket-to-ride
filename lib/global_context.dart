class GlobalContext {

  // singleton _globalContext
  static final GlobalContext _globalContext = GlobalContext._internal();

  factory GlobalContext() {
    return _globalContext;
  }

  GlobalContext._internal();

  String currentGameId;
  String currentUserId;
}
