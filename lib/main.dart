import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models//task.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      builder: (context) => TaskProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy egges'),
    Task(name: 'Buy breads'),
  ];

  void addTask(String name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void toggleValue(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
