import 'package:solid_app/interfaces/todo_repositories_interface.dart';
import 'package:solid_app/models/todo_model.dart';

class ToDoService {
  final ToDoRepositoryInterface _repository;

  ToDoService(this._repository);

  Future<List<ToDo>> getToDos() {
    return _repository.fetchToDos();
  }

  Future<void> createToDo(String title) {
    final todo = ToDo(
      title: title,
    );
    return _repository.addToDo(todo);
  }

  Future<void> toggleCompletion(ToDo todo) {
    todo.isCompleted = !todo.isCompleted;
    return _repository.updateToDo(todo);
  }

  Future<void> removeToDo(String id) {
    return _repository.deleteToDo(id);
  }
}


/**
 // lib/services/todo_service.dart

// ToDoRepositoryInterface arayüzünü içe aktarır.
// Bu arayüz, ToDo verileriyle ilgili temel CRUD (Create, Read, Update, Delete) operasyonlarını tanımlar.
import 'package:solid_app/interfaces/todo_repository_interface.dart';

// ToDo modelini içe aktarır.
// Bu model, ToDo öğelerinin veri yapısını temsil eder ve veritabanı işlemleri için kullanılır.
import 'package:solid_app/models/todo_model.dart';

/// ToDoService
///
/// Bu sınıf, iş mantığını yönetir ve ToDoRepositoryInterface aracılığıyla veri erişimini gerçekleştirir.
/// SOLID prensiplerinden Dependency Inversion Principle (DIP) ve Single Responsibility Principle (SRP)
/// gereği, bu sınıf sadece iş mantığına odaklanır ve veri erişim detaylarından bağımsızdır.
class ToDoService {
  // ToDoRepositoryInterface türünde bir repository nesnesi.
  // Bu nesne, veri erişim işlemlerini gerçekleştirmek için kullanılır.
  // DIP gereği, somut bir repository sınıfına bağımlı değildir.
  final ToDoRepositoryInterface _repository;

  /// Constructor
  ///
  /// ToDoService sınıfının yapıcı metodu.
  /// Bu metod, dependency injection ile ToDoRepositoryInterface türünde bir repository nesnesi alır.
  ToDoService(this._repository);

  /// getToDos
  ///
  /// Tüm ToDo öğelerini getirir.
  /// Bu metod, repository aracılığıyla veritabanından ToDo öğelerini çeker.
  ///
  /// Returns:
  /// - Future<List<ToDo>>: Asenkron olarak ToDo öğelerinin bir listesini döner.
  Future<List<ToDo>> getToDos() {
    return _repository.fetchToDos();
  }

  /// createToDo
  ///
  /// Yeni bir ToDo öğesi oluşturur ve veritabanına ekler.
  /// Kullanıcının girdiği başlığı alır, yeni bir ToDo nesnesi oluşturur ve repository aracılığıyla ekler.
  ///
  /// Parameters:
  /// - String title: Eklenmek istenen ToDo öğesinin başlığı.
  ///
  /// Returns:
  /// - Future<void>: Asenkron olarak işlem tamamlandığında bir değer döndürmez.
  Future<void> createToDo(String title) {
    // Yeni bir ToDo nesnesi oluşturur.
    // ID otomatik olarak ToDo modelinin yapıcısı tarafından atanır.
    final todo = ToDo(
      title: title,
    );
    // Repository aracılığıyla yeni ToDo öğesini ekler.
    return _repository.addToDo(todo);
  }

  /// toggleCompletion
  ///
  /// Belirli bir ToDo öğesinin tamamlanma durumunu değiştirir.
  /// Örneğin, tamamlanmış bir ToDo öğesini tamamlanmamış hale getirir veya tam tersi.
  ///
  /// Parameters:
  /// - ToDo todo: Tamamlanma durumu değiştirilecek ToDo öğesi.
  ///
  /// Returns:
  /// - Future<void>: Asenkron olarak işlem tamamlandığında bir değer döndürmez.
  Future<void> toggleCompletion(ToDo todo) {
    // ToDo öğesinin tamamlanma durumunu tersine çevirir.
    todo.isCompleted = !todo.isCompleted;
    // Repository aracılığıyla güncellenmiş ToDo öğesini veritabanına yansıtır.
    return _repository.updateToDo(todo);
  }

  /// removeToDo
  ///
  /// Belirli bir ToDo öğesini veritabanından siler.
  ///
  /// Parameters:
  /// - String id: Silinecek ToDo öğesinin benzersiz kimliği (ID'si).
  ///
  /// Returns:
  /// - Future<void>: Asenkron olarak işlem tamamlandığında bir değer döndürmez.
  Future<void> removeToDo(String id) {
    // Repository aracılığıyla belirtilen ID'ye sahip ToDo öğesini siler.
    return _repository.deleteToDo(id);
  }
}

 */