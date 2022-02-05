import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late final String title;
  late final String taskTitle;
  late final VoidCallback leftArrowCallback;
  late final VoidCallback rightArrowCallback;

  TaskTile(
      {
        required this.title,
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
              Visibility(
                  child: Text('<',),
                  visible: title == 'A' ? false : true,
              ),
              Text(
                taskTitle,
              ),
              Visibility(
                child: Text('>',),
                visible: title == 'D' ? false : true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}