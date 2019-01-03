import 'package:daily_planner/models/task.dart';

class DailyPlan {
  List<Task> tasks;
  DateTime date;

  DailyPlan({this.tasks = const[], this.date}) {
    this.date = this.date != null ? this.date : DateTime.now();
  }


}