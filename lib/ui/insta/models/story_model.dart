class StoryModel {
  int _id;
  String _username;
  String _userImageUrl;
  String _dateTime;
  bool _shown;

  StoryModel(
    this._id,
    this._username,
    this._userImageUrl,
    this._dateTime,
    this._shown,
  );


  bool get shown => _shown;

  set shown(bool value) {
    _shown = value;
  }

  String get dateTime => _dateTime;

  set dateTime(String value) {
    _dateTime = value;
  }

  String get userImageUrl => _userImageUrl;

  set userImageUrl(String value) {
    _userImageUrl = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
