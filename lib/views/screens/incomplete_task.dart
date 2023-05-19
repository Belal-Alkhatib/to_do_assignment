import 'package:flutter/material.dart';
import 'package:to_do_assignment/data/repository.dart';
import 'package:to_do_assignment/views/widget/task_widget.dart';

class InCompleteTasksScreen extends StatelessWidget{
   Function function;
  InCompleteTasksScreen(this.function);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DaataSource.tasks.where((element) => !element.isComplete).length,
      itemBuilder: (context, index){
        return TaskWidget(DaataSource.tasks.where((element)=> !element.isComplete)
        .toList()[index],
        function
        );
      },
    );
  }

}