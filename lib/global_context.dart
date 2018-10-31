class GlobalContext {
  String currentGameId;
  String userId;

  // singleton _globalContext
  static final GlobalContext _globalContext = GlobalContext._internal();

  factory GlobalContext() {
    return _globalContext;
  }

  GlobalContext._internal();


  setCurrentGameId(String gameId) {
    _globalContext.currentGameId = gameId;
  }

  setCurrentUserId(String userId) {
    _globalContext.userId = userId;
  }

}
