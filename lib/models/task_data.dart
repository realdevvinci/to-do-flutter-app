import 'package:flutter/cupertino.dart';
import "./task.dart";
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task("buy milk"),
    Task("buy eggs"),
    Task("buy bread"),
    Task("buy bread"),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void addTask(String x) {
    _tasks.add(Task(x));

    notifyListeners();
  }

  void updataTask(Task task) {
    task.toggleDone();

    notifyListeners();
  }

  void deleteTask(Task x) {
    _tasks.remove(x);

    notifyListeners();

  }
}
