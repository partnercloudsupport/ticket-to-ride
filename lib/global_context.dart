class GlobalContext {

  // singleton _globalContext
  static final GlobalContext _globalContext = GlobalContext._internal();

  factory GlobalContext() {
    return _globalContext;
  }

  GlobalContext._internal();

  set currentGameId(String gameId) {
    _globalContext.currentGameId = gameId;
  }

  get currentGameId {}

  set userId(String userId) {
    _globalContext.userId = userId;
  }

  get userId {}

}
