import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Note {
  String _id = '';
  String _userId = '';
  String _title = '';
  String _content = '';

  Note(this._id, this._title, this._content) {
    userId = FirebaseAuth.instance.currentUser?.uid ?? '';
  }

  Note.fromMap(Map<dynamic, dynamic> data) {
    _id = data['id'];
    _userId = data['userId'];
    _title = data['title'];
    _content = data['content'];
  }

  String get userId => _userId;

  set userId(String value) {
    _userId = value;
  }

  String get content => _content;

  set content(String value) {
    _content = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'content': content,
    };
  }
}
