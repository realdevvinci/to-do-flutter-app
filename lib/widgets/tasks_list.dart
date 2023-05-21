import "package:flutter/material.dart";
import './task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoy_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onDoubleTap: (){
                taskData.deleteTask( taskData.tasks[index]);
              },
              child: TaskTile(
                  taskData.tasks[index].isDone, taskData.tasks[index].name,
                  (checkboxState) {
                taskData.updataTask(taskData.tasks[index]);
              }),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
