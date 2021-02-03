

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_examples/models/task.dart';
import 'package:state_management_examples/models/task_date.dart';
import 'package:state_management_examples/widgets/task_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskDate>(
      builder:(context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxSate) {
            taskData.updateTask(task);

            },
            longPressCallback: () {
            taskData.deleteTask(task);
            },
          );
        }, itemCount: taskData.taskCount,
        );
      },
    );
  }
}