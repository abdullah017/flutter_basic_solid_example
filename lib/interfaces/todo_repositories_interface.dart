// lib/interfaces/todo_repository_interface.dart
import 'package:solid_app/models/todo_model.dart';


abstract class ToDoRepositoryInterface {
  Future<List<ToDo>> fetchToDos();
  Future<void> addToDo(ToDo todo);
  Future<void> updateToDo(ToDo todo);
  Future<void> deleteToDo(String id);
}


/**
 * 

// lib/interfaces/todo_repository_interface.dart

// ToDo modelini içe aktarır. Bu model, To-Do öğelerinin veri yapısını temsil eder.
import 'package:solid_app/models/todo_model.dart';

/// ToDoRepositoryInterface
/// 
/// Bu soyut sınıf, To-Do verileriyle ilgili temel CRUD (Create, Read, Update, Delete)
/// operasyonlarını tanımlar. Uygulamanın diğer bölümleri bu arayüzü kullanarak
/// veri erişim yöntemlerinden bağımsız çalışabilirler.
///
/// SOLID prensiplerinden Dependency Inversion Principle (DIP) ve Interface Segregation
/// Principle (ISP) gereği, bu arayüz uygulamanın veri erişim katmanını soyutlar.
abstract class ToDoRepositoryInterface {
  
  /// fetchToDos
  /// 
  /// Tüm To-Do öğelerini veri kaynağından çeker.
  /// 
  /// Returns:
  /// - Future<List<ToDo>>: Asenkron olarak To-Do öğelerinin bir listesini döner.
  Future<List<ToDo>> fetchToDos();
  
  /// addToDo
  /// 
  /// Yeni bir To-Do öğesini veri kaynağına ekler.
  /// 
  /// Parameters:
  /// - ToDo todo: Eklenmek istenen To-Do öğesi.
  /// 
  /// Returns:
  /// - Future<void>: İşlem tamamlandığında bir değer döndürmez.
  Future<void> addToDo(ToDo todo);
  
  /// updateToDo
  /// 
  /// Varolan bir To-Do öğesini günceller.
  /// 
  /// Parameters:
  /// - ToDo todo: Güncellenmesi gereken To-Do öğesi.
  /// 
  /// Returns:
  /// - Future<void>: İşlem tamamlandığında bir değer döndürmez.
  Future<void> updateToDo(ToDo todo);
  
  /// deleteToDo
  /// 
  /// Belirli bir To-Do öğesini veri kaynağından siler.
  /// 
  /// Parameters:
  /// - String id: Silinecek To-Do öğesinin benzersiz kimliği (ID'si).
  /// 
  /// Returns:
  /// - Future<void>: İşlem tamamlandığında bir değer döndürmez.
  Future<void> deleteToDo(String id);
}

 * 
 * 
 * 
 * 
 */