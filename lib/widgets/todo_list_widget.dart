// lib/widgets/todo_list.dart
import 'package:flutter/material.dart';
import 'package:solid_app/models/todo_model.dart';
import 'package:solid_app/services/todo_services.dart';


class ToDoList extends StatefulWidget {
  final ToDoService service;

  const ToDoList({super.key, required this.service});

  @override
  _ToDoListState createState() {
    return _ToDoListState();
  }
}

class _ToDoListState extends State<ToDoList> {
  List<ToDo> _toDos = [];

  @override
  void initState() {
    super.initState();
    _loadToDos();
  }

  Future<void> _loadToDos() async {
    final toDos = await widget.service.getToDos();
    setState(() {
      _toDos = toDos;
    });
  }

  Future<void> _addToDo() async {
    final newToDoTitle = 'Yeni ToDo ${_toDos.length + 1}';
    await widget.service.createToDo(newToDoTitle);
    _loadToDos();
  }

  Future<void> _toggleCompletion(ToDo todo) async {
    await widget.service.toggleCompletion(todo);
    _loadToDos();
  }

  Future<void> _deleteToDo(String id) async {
    await widget.service.removeToDo(id);
    _loadToDos();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _addToDo,
          child: const Text('ToDo Ekle'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _toDos.length,
            itemBuilder: (context, index) {
              final todo = _toDos[index];
              return ListTile(
                title: Text(
                  todo.title,
                  style: TextStyle(
                    decoration: todo.isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                leading: Checkbox(
                  value: todo.isCompleted,
                  onChanged: (value) => _toggleCompletion(todo),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () => _deleteToDo(todo.id),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
