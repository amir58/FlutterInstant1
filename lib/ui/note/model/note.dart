class Note{

  String _title;
  String _content;

  Note(this._title, this._content);

  String get content => _content;

  set content(String value) {
    _content = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}