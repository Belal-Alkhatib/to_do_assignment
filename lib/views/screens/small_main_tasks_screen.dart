import 'package:flutter/material.dart';
import 'package:to_do_assignment/views/screens/all_tasks_screen.dart';
import 'package:to_do_assignment/views/screens/complete_tasks.dart';
import 'package:to_do_assignment/views/screens/incomplete_task.dart';

class SmallMainTasksScreen extends StatefulWidget{
  @override
  State<SmallMainTasksScreen> createState() => _SmallMainTasksScreenState();
}

class _SmallMainTasksScreenState extends State<SmallMainTasksScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;

  refreshPage(){
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (v){
          pageIndex = v;
          pageController.jumpToPage(v);
          setState(() {});
        },
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
        BottomNavigationBarItem(icon: Icon(Icons.done), label: "Complete Tasks"),
        BottomNavigationBarItem(icon: Icon(Icons.cancel), label: "InComplete Tasks"),


      ],),
      appBar: AppBar(title: Text("TaDo App"),),
      body: PageView(
        controller: pageController,
        children: [
        AllTasksScreen(refreshPage),
        CompleteTasksScreen(refreshPage),
        InCompleteTasksScreen(refreshPage)
      
      ],),
    );
  }
}