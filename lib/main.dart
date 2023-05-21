import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import "package:provider/provider.dart";
import 'package:todoy_flutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String? x;

  @override
  Widget build(BuildContext context) {
    RegExp exp = RegExp(r'(\w+)');

    String str = 'Pares my string';
    RegExpMatch? match = exp.firstMatch(str);
    String? x;

    print(x);

    x ??= "d";
    print(x);
    x ??= "a";
    print(x);

    print(match![0]);
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
