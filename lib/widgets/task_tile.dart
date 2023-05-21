import "package:flutter/material.dart";

class TaskTile extends StatelessWidget {

  bool checker = false;
  late final String taskTitle ;
  final Function checkboxCallback;
TaskTile(this.checker , this.taskTitle  , this.checkboxCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "$taskTitle",
        style: TextStyle(
            decoration:
                checker ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: checker,
        activeColor: Colors.lightBlueAccent,
        onChanged: (v) {
          checkboxCallback(v);
        },
      )
    );
  }
}


