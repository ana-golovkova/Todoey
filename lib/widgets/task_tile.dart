import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({
    this.taskTitle,
    this.isChecked,
    this.checkboxCallback,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
