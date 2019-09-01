import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskProvider.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (value) => taskProvider.updateTask(task),
            longPressCallback: () => taskProvider.deleteTask(task.name),
          );
        },
        itemCount: taskProvider.taskCount,
      );
    });
  }
}
