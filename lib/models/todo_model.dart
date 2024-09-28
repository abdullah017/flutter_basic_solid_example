// lib/models/todo.dart
import 'package:uuid/uuid.dart';

class ToDo {
  final String id;
  final String title;
  bool isCompleted;

  ToDo({
    String? id,
    required this.title,
    this.isCompleted = false,
  }) : id = id ?? const Uuid().v4();

  // Veritabanından gelen veriyi model objesine dönüştürür
  factory ToDo.fromMap(Map<String, dynamic> map) {
    return ToDo(
      id: map['id'],
      title: map['title'],
      isCompleted: map['is_completed'] == 1,
    );
  }

  // Model objesini veritabanına kaydedilebilecek bir haritaya dönüştürür
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'is_completed': isCompleted ? 1 : 0,
    };
  }
}
