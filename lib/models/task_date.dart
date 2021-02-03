import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:state_management_examples/models/task.dart';

class TaskDate extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'a'),
    Task(name: 'b'),
    Task(name: 'c')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask (Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask (Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}