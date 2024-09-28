// lib/repositories/todo_repository.dart
import 'package:solid_app/interfaces/todo_repositories_interface.dart';
import 'package:solid_app/models/todo_model.dart';
import 'package:sqflite/sqflite.dart';
import 'database_helper.dart';

class ToDoRepository implements ToDoRepositoryInterface {
  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  Future<List<ToDo>> fetchToDos() async {
    final Database db = await _dbHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('todos');

    return List.generate(maps.length, (i) {
      return ToDo.fromMap(maps[i]);
    });
  }

  @override
  Future<void> addToDo(ToDo todo) async {
    final Database db = await _dbHelper.database;
    await db.insert(
      'todos',
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> updateToDo(ToDo todo) async {
    final Database db = await _dbHelper.database;
    await db.update(
      'todos',
      todo.toMap(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );
  }

  @override
  Future<void> deleteToDo(String id) async {
    final Database db = await _dbHelper.database;
    await db.delete(
      'todos',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}


/**
 // lib/repositories/todo_repository.dart

// ToDoRepositoryInterface arayüzünü içe aktarır.
// Bu arayüz, ToDo verileriyle ilgili temel CRUD (Create, Read, Update, Delete) operasyonlarını tanımlar.
import 'package:solid_app/interfaces/todo_repository_interface.dart';

// ToDo modelini içe aktarır.
// Bu model, ToDo öğelerinin veri yapısını temsil eder ve veritabanı işlemleri için kullanılır.
import 'package:solid_app/models/todo_model.dart';

// sqflite paketini içe aktarır.
// Bu paket, Flutter uygulamalarında SQLite veritabanı işlemlerini gerçekleştirmek için kullanılır.
import 'package:sqflite/sqflite.dart';

// DatabaseHelper sınıfını içe aktarır.
// Bu sınıf, veritabanı bağlantısını yönetir ve tablo oluşturma işlemlerini gerçekleştirir.
import 'database_helper.dart';

/// ToDoRepository
///
/// ToDoRepositoryInterface arayüzünü implement eder.
/// Bu sınıf, sqflite kullanarak yerel veritabanında ToDo verileriyle ilgili işlemleri gerçekleştirir.
class ToDoRepository implements ToDoRepositoryInterface {
  // DatabaseHelper sınıfının bir örneğini oluşturur.
  // Singleton tasarım deseni kullanılarak, uygulama boyunca tek bir veritabanı bağlantısı kullanılır.
  final DatabaseHelper _dbHelper = DatabaseHelper();

  /// fetchToDos
  ///
  /// Tüm ToDo öğelerini veritabanından çeker.
  /// 
  /// Returns:
  /// - Future<List<ToDo>>: Asenkron olarak ToDo öğelerinin bir listesini döner.
  @override
  Future<List<ToDo>> fetchToDos() async {
    // Veritabanı bağlantısını alır.
    final Database db = await _dbHelper.database;
    
    // 'todos' tablosundaki tüm kayıtları sorgular.
    final List<Map<String, dynamic>> maps = await db.query('todos');

    // Her bir kayıt için ToDo modelini oluşturur ve listeye ekler.
    return List.generate(maps.length, (i) {
      return ToDo.fromMap(maps[i]);
    });
  }

  /// addToDo
  ///
  /// Yeni bir ToDo öğesini veritabanına ekler.
  /// 
  /// Parameters:
  /// - ToDo todo: Eklenmek istenen ToDo öğesi.
  /// 
  /// Returns:
  /// - Future<void>: Asenkron olarak işlem tamamlandığında bir değer döndürmez.
  @override
  Future<void> addToDo(ToDo todo) async {
    // Veritabanı bağlantısını alır.
    final Database db = await _dbHelper.database;
    
    // 'todos' tablosuna yeni bir kayıt ekler.
    // Eğer aynı 'id' ile bir kayıt zaten varsa, mevcut kayıt üzerine yazar.
    await db.insert(
      'todos',
      todo.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  /// updateToDo
  ///
  /// Varolan bir ToDo öğesini günceller.
  /// 
  /// Parameters:
  /// - ToDo todo: Güncellenmesi gereken ToDo öğesi.
  /// 
  /// Returns:
  /// - Future<void>: Asenkron olarak işlem tamamlandığında bir değer döndürmez.
  @override
  Future<void> updateToDo(ToDo todo) async {
    // Veritabanı bağlantısını alır.
    final Database db = await _dbHelper.database;
    
    // 'todos' tablosundaki belirli bir kaydı günceller.
    // 'id' alanına göre eşleşen kaydı bulur ve günceller.
    await db.update(
      'todos',
      todo.toMap(),
      where: 'id = ?', // Güncellenmek istenen kaydı belirlemek için 'id' kullanılır.
      whereArgs: [todo.id], // 'where' ifadesindeki '?' yerine 'todo.id' değeri gelir.
    );
  }

  /// deleteToDo
  ///
  /// Belirli bir ToDo öğesini veritabanından siler.
  /// 
  /// Parameters:
  /// - String id: Silinecek ToDo öğesinin benzersiz kimliği (ID'si).
  /// 
  /// Returns:
  /// - Future<void>: Asenkron olarak işlem tamamlandığında bir değer döndürmez.
  @override
  Future<void> deleteToDo(String id) async {
    // Veritabanı bağlantısını alır.
    final Database db = await _dbHelper.database;
    
    // 'todos' tablosundan belirli bir kaydı siler.
    // 'id' alanına göre eşleşen kaydı bulur ve siler.
    await db.delete(
      'todos',
      where: 'id = ?', // Silinecek kaydı belirlemek için 'id' kullanılır.
      whereArgs: [id], // 'where' ifadesindeki '?' yerine 'id' değeri gelir.
    );
  }
}

 */