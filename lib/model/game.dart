class Game {
  String _displayName;
  int _hostUserID;
  List<int> _playerUserIDs;
  GameStatus _gameStatus;
  int _maxPlayers;
  int _gameID;

  Game(this._displayName, this._hostUserID, this._maxPlayers);

  String get displayName => _displayName;
  int get hostUserID => _hostUserID;
  List<int> get playerUserIDs => _playerUserIDs;
  GameStatus get gameStatus => _gameStatus;
  int get maxPlayers => _maxPlayers;
  int get gameID => _gameID;

}

enum GameStatus {
  created,      // waiting for _maxPlayers to join, or for host to Start prematurely
  started
}