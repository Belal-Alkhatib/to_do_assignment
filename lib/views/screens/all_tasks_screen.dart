import 'package:flutter/material.dart';
import 'package:to_do_assignment/data/repository.dart';
import 'package:to_do_assignment/views/widget/task_widget.dart';

class AllTasksScreen extends StatelessWidget{
  Function function;
  AllTasksScreen(this.function);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DaataSource.tasks.length,
      itemBuilder: (context, index){
        return TaskWidget(DaataSource.tasks[index], function);
      },
    );
  }

}