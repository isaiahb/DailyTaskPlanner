import 'package:daily_planner/models/daily_plan.dart';
import 'package:daily_planner/models/task.dart';
import 'package:flutter/material.dart';

void main() => runApp(DailyPlannerApp());

class DailyPlannerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Tasks',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Daily Tasks Planner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DailyPlan today;
  DailyPlan visiblePlan;
  List<DailyPlan> allDailyPlans;

  void _addTask(){}

  @override
  void initState() {
    super.initState();
    DailyPlan dailyPlan = DailyPlan(tasks: [Task("clean room")]);
    DailyPlan test = DailyPlan.fromJson(dailyPlan.json);
    print(test.json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("le text", style: Theme.of(context).textTheme.display1,),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        tooltip: 'Add Task',
        child: Icon(Icons.add),
        elevation: 2,

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        elevation: 0,
        color: Theme.of(context).primaryColor,
        child: Row(
          children: <Widget>[
            FlatButton(
              child: Row(children: <Widget>[
                  Icon(Icons.arrow_back, color: Colors.white30),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(" Previous Day", style: TextStyle(color: Colors.white30)),
                      Text(" Comming soon", style: TextStyle(color: Colors.white30)),
                    ],
                  )
              ]),

              onPressed: (){},
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 40.0),
              child: Text("Add Task", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)),
            )
          ],
        ),
      ),
    );
  }
  //comment
}

//Todo design cards create task widget, possible to rename, edit, delete
//Todo create database to save and load daily tasks