import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  late final String taskTitle;
  late final VoidCallback leftArrowCallback;
  late final VoidCallback rightArrowCallback;

  TaskTile(
      {
        required this.taskTitle,
        required this.leftArrowCallback,
        required this.rightArrowCallback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 40,
      child: ListTile(
        tileColor: Colors.white,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                '<',
              ),
              Text(
                taskTitle,
              ),
              Text(
                '>',
              )
            ],
          ),
        ),
      ),
    );
  }
}