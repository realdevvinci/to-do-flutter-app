import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todoy_flutter/models/task_data.dart';
class AddTaskScreen extends StatelessWidget {

  
  late String newTaskTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        height: 400,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value){
                newTaskTitle=value;
              },
            ),
            TextButton(
              onPressed: () {
                

                Provider.of<TaskData>(context , listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },

              child: Text("Add", style: TextStyle(color: Colors.white)),
              style:
                  TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent)
            )
          ],
        ),
      ),
    );
  }
}
