import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static final AppDatabase _instance = AppDatabase._internal();
  factory AppDatabase() => _instance;
  AppDatabase._internal();

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _open();
    return _db!;
  }

  Future<Database> _open() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'lara_ai.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE conversations(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          createdAt INTEGER
        )
      ''');

        await db.execute('''
        CREATE TABLE messages(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          conversationId INTEGER,
          text TEXT,
          isUser INTEGER,
          createdAt INTEGER,
          FOREIGN KEY(conversationId) REFERENCES conversations(id) ON DELETE CASCADE
        )
      ''');
      },
    );
  }

  Future<void> close() async {
    await _db?.close();
    _db = null;
  }
}
