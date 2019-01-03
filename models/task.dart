import 'dart:convert';

class Task {
  String name;
  bool complete;
  Task(this.name, {this.complete = false});

  Map<String, dynamic> get map {
    return {"name":name, "complete":complete};
  }
  String get json {
    return jsonEncode(map);
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(map["name"], complete: map["complete"]);
  }

  factory Task.fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    return Task.fromMap(map);
  }

}