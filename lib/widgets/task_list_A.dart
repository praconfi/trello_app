import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trello_app/provider/task_provider_A.dart';
import 'package:trello_app/widgets/task_tile.dart';



class TasksListA extends StatelessWidget {
  final String title;
  TasksListA({required this.title});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProviderA>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            if (index == taskData.taskCount) {
              return  GestureDetector(onTap: () {

              }, child: Container(height: 50, color: Colors.white, child: Center(child: Text("+"))));
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