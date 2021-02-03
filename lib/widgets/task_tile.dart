
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text('This is task', style: TextStyle(
      decoration: isChecked ? TextDecoration.lineThrough : null,
    ),
    ),
      trailing: TaskCheckbox(
          checkboxSate: isChecked,
          toggleCheckboxState: (bool checkboxSate) {
            setState(() {
              isChecked = checkboxSate;
            });
          }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxSate, this.toggleCheckboxState});

final bool checkboxSate;
final Function toggleCheckboxState;


  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxSate,
      onChanged: toggleCheckboxState);

      }}
