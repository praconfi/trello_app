import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trello_app/provider/task_provider_A.dart';
import 'package:trello_app/provider/task_provider_D.dart';
import 'package:trello_app/widgets/task_tile.dart';

class TasksListD extends StatelessWidget {
  final String title;
  TasksListD({required this.title});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProviderD>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            if (index == taskData.taskCount) {
              return Container(height: 50, child: Center(child: Text("+")));
            } else {
              final task = taskData.tasks[index];
              return TaskTile(
                title: title,
                taskTitle: task.name,
                leftArrowCallback: () {
                  taskData.updateTask(task);
                },
                rightArrowCallback: () {
                  // taskData.changeToD(task);
                },
              );
            }
          },
          itemCount: taskData.taskCount+1,
        );
      },
    );
  }
}

