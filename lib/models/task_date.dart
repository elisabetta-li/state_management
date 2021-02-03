import 'package:flutter/foundation.dart';
import 'package:state_management_examples/models/task.dart';

class TaskDate extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'a'),
    Task(name: 'b'),
    Task(name: 'c')
  ];

  int get taskCount {
    return tasks.length;
  }
}