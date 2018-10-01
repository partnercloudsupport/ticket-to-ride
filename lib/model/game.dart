class Game {
  String _displayName;
  int _hostUserID;
  List<int> _playerUserIDs;
  // TODO add status
  int _maxPlayers;
  int _gameID;

  Game(this._displayName, this._hostUserID, this._maxPlayers);

  String get displayName => _displayName;
  int get hostUserID => _hostUserID;
  List<int> get playerUserIDs => _playerUserIDs;
  int get maxPlayers => _maxPlayers;
  int get gameID => _gameID;

}