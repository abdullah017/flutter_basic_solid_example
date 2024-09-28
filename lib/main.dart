// lib/main.dart
import 'package:flutter/material.dart';
import 'package:solid_app/repositories/todo_repositories.dart';
import 'package:solid_app/services/todo_services.dart';
import 'package:solid_app/widgets/todo_list_widget.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  final ToDoService _service = ToDoService(ToDoRepository());

  ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOLID ToDo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SOLID ToDo Uygulaması'),
        ),
        body: ToDoList(service: _service),
      ),
    );
  }
}
