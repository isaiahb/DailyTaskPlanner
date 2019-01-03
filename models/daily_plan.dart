import 'dart:convert';

import 'package:daily_planner/models/task.dart';

class DailyPlan {
  List<Task> tasks;
  DateTime date;

  DailyPlan({this.tasks = const[], this.date}) {
    this.date = this.date != null ? this.date : DateTime.now();
  }

  String get json {
    List<String> stringTasks = [];
    for (Task task in tasks)
      stringTasks.add(task.json);

    return jsonEncode({"tasks": stringTasks, "date":date.toIso8601String()});
  }


  factory DailyPlan.fromMap(Map<String, dynamic> map) {
    return DailyPlan(tasks: map["tasks"], date: map["date"]);
  }

  factory DailyPlan.fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);

    List<Task> tasks = [];
    for (String taskJson in map["tasks"])
      tasks.add(Task.fromJson(taskJson));

    return DailyPlan(tasks: tasks, date: DateTime.parse(map["date"]));
  }

}