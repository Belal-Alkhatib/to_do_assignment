import 'package:flutter/material.dart';
import 'package:to_do_assignment/views/screens/all_tasks_screen.dart';
import 'package:to_do_assignment/views/screens/complete_tasks.dart';
import 'package:to_do_assignment/views/screens/incomplete_task.dart';

class LargMainTasksScreen extends StatefulWidget{
  @override
  State<LargMainTasksScreen> createState() => _LargMainTasksScreenState();
}

class _LargMainTasksScreenState extends State<LargMainTasksScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;

  refreshPage(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TaDo App"),
      ),
      body: Column(
        children: [
      
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: AllTasksScreen(refreshPage),
                      ),
                      Container(
                        height: 1,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: CompleteTasksScreen(refreshPage),
                      ),
                      Container(
                        height: 1,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: InCompleteTasksScreen(refreshPage),
                      ),
                      Container(
                        height: 1,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ); }
}