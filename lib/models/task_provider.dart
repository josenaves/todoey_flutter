import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

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
