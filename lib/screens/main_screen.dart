import 'package:flutter/material.dart';
import 'package:trello_app/widgets/items_column.dart';
import 'package:trello_app/widgets/task_list.dart';

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
          ItemsColumn(title: 'A', items: TasksList()),
          SizedBox(width: 40),
          ItemsColumn(title: 'B', items: TasksList()),
          SizedBox(width: 40),
          ItemsColumn(title: 'C', items: TasksList()),
          SizedBox(width: 40),
          ItemsColumn(title: 'D', items: TasksList()),
        ],
      ),
    );
  }
}
