

import 'package:flutter/foundation.dart';

import 'Task.dart';


class TaskData extends ChangeNotifier {

List<Task>MyTask=[
  Task(NameTask: "khale"),
  Task(NameTask: "playfootball"),
  Task(NameTask: "stady")
];

void AddTask(String name)
{

  MyTask.add(Task(NameTask: name));
  notifyListeners();
}
void DeletTask(Task task)
{
  MyTask.remove(task);
  notifyListeners();
}

void UpDateTask(Task task)
{
  notifyListeners();
task.changevalueCheckbox();
notifyListeners();
}


}