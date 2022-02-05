import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trello_app/provider/tasks_provider.dart';
import 'package:trello_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            if (index == taskData.taskCount) {
              return Container(height: 50, color: Colors.purple);
            } else {
              return TaskTile(
                taskTitle: task.name,
                leftArrowCallback: () {

                },
                rightArrowCallback: () {

                },
              );
            }

          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}