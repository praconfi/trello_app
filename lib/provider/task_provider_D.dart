import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'package:trello_app/models/task.dart';

class TaskProviderD extends ChangeNotifier {
  // private한 _task로 만들어 외부에서의 직접추가를 막는다
  List<Task> _tasks = [
    Task(name: 'D Item 1'),
    Task(name: 'D Item 2'),
    Task(name: 'D Item 3'),
    Task(name: 'D Item 4'),
  ];


  // private한 _task를 조회하는 메소드를 만들고, 수정불가능한 List에 담아서 조회한다
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // _task 개수 getter
  int get taskCount {
    return _tasks.length;
  }

  // _task 를 추가한후, 상태를 참조하고 있는 곳에 notify 한다
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    // _tasks.add(task);
    notifyListeners();
  }

  // task자체의 상태는 task모델 내부 메소드로 구현한다
  void updateTask(Task task) {

    notifyListeners();
  }

  // _task 를 삭제한후, 상태를 참조하고 있는 곳에 notify 한다
  void deleteTask(Task task) {
    // _tasks.remove(task);
    notifyListeners();
  }
}