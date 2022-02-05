import 'package:flutter/material.dart';
import 'package:trello_app/widgets/items_column.dart';
import 'package:trello_app/widgets/task_list_A.dart';
import 'package:trello_app/widgets/task_list_B.dart';
import 'package:trello_app/widgets/task_list_C.dart';
import 'package:trello_app/widgets/task_list_D.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ItemsColumn(title: 'A', items: TasksListA(title: 'A')),
          SizedBox(width: 40),
          ItemsColumn(title: 'B', items: TasksListB(title: 'B')),
          SizedBox(width: 40),
          ItemsColumn(title: 'C', items: TasksListC(title: 'C')),
          SizedBox(width: 40),
          ItemsColumn(title: 'D', items: TasksListD(title: 'D')),
        ],
      ),
    );
  }
}
