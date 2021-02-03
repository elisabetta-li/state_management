

import 'package:flutter/material.dart';
import 'package:state_management_examples/models/task.dart';
import 'package:state_management_examples/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks = [
    Task(name: 'a'),
    Task(name: 'b'),
    Task(name: 'c')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (checkboxSate) {
setState(() {
tasks[index].toggleDone();
}
);
},
      );
    }, itemCount: tasks.length,
    );
  }
}