import 'package:instant1/ui/note/model/note.dart';
import 'package:sqflite/sqflite.dart';

class NoteDatabase {
  static Database? database;

  static Future<void> init() async {
    // open the database
    await openDatabase(
      'notes.db',
      version: 1,
      onCreate: (Database db, int version) async {
        print('Database created');
        // When creating the db, create the table
        await db.execute(
            'CREATE TABLE Notes (id TEXT, userId TEXT, title TEXT, content TEXT)');
        print('Table created');
      },
      onOpen: (db) {
        database = db;
        print('Database opened');
      },
    );
  }

  static Future<List<Note>> getNotes() async {
    List<Map> list = await database!.rawQuery('SELECT * FROM Notes');
    return list.map((e) => Note.fromMap(e)).toList();
  }

  static void insertNote(Note note) async {
    // Insert some records in a transaction
    await database!.transaction((txn) async {
      int id = await txn.rawInsert(
          'INSERT INTO Notes(id, userId, title, content) VALUES("${note.id}", "${note.userId}", "${note.title}", "${note.content}")');
      print('inserted: $id');
    });
  }

  static void deleteNote(String id) async {
    await database!.rawDelete('DELETE FROM Notes WHERE id = ?', ['$id']);
  }

  static void updateNote(Note note) {
    database!.rawUpdate('UPDATE Notes SET title = ?, content = ?',
        ['${note.title}', '${note.content}']);
  }
}
