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

  void _addTask(){}
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
        child: Icon(Icons.add)
      ),
    );
  }
  //comment
}
