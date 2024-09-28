// lib/repositories/database_helper.dart
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    // Veritabanı dosyasının yolunu alıyoruz
    String path = join(await getDatabasesPath(), 'todo_database.db');

    // Veritabanını açıyoruz ve tabloyu oluşturuyoruz
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return _database!;
  }

  // Tabloyu oluşturma
  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE todos (
        id TEXT PRIMARY KEY,
        title TEXT NOT NULL,
        is_completed INTEGER NOT NULL
      )
    ''');
  }
}
