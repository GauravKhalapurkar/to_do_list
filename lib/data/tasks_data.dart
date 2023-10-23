import 'package:to_do_list/models/sub_tasks.dart';

import '../models/tasks.dart';

class TasksData {
  List<Tasks> tasksList = [
    Tasks(name: "Football App", subTasks: [
      SubTasks(name: "Contact", priority: "High"),
      SubTasks(name: "Share", priority: "High")
    ])
  ];

  //get the list of tasks
  List<Tasks> getTasks() {
    return tasksList;
  }

  //add a new task
  void addTask(String name) {
    return tasksList.add(Tasks(name: name, subTasks: []));
  }

  //add a subTask to a task
  void addSubTask(String task, String name, String priority) {
    Tasks relevantTask =
        tasksList.firstWhere((element) => element.name == task);

    relevantTask.subTasks.add(SubTasks(name: name, priority: priority));
  }
}
