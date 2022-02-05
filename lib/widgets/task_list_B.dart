import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trello_app/provider/task_provider_B.dart';
import 'package:trello_app/widgets/task_tile.dart';

class TasksListB extends StatelessWidget {
  final String title;
  TasksListB({required this.title});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProviderB>(
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