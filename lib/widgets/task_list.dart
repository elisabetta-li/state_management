

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
          return TaskTile(taskTitle: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (checkboxSate) {
// setState(() {
// widget.tasks[index].toggleDone();
// }
// );
            },
          );
        }, itemCount: taskData.taskCount,
        );
      },
    );
  }
}