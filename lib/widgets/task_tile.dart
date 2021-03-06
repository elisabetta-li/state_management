
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text (taskTitle,
        style: TextStyle(
      decoration: isChecked ? TextDecoration.lineThrough : null,
    ),
    ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
      ),
      );
  }
}



// class TaskCheckbox extends StatelessWidget {
//   TaskCheckbox({this.checkboxSate, this.toggleCheckboxState});
//
// final bool checkboxSate;
// final Function toggleCheckboxState;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       }
// }
