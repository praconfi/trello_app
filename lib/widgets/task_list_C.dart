import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trello_app/provider/task_provider_C.dart';
import 'package:trello_app/widgets/task_tile.dart';

class TasksListC extends StatelessWidget {
  final String title;
  TasksListC({required this.title});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProviderC>(
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