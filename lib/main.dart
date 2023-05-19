import 'package:flutter/material.dart';
import 'package:to_do_assignment/views/screens/larg_main_tasks_screen%20copy.dart';
import 'package:to_do_assignment/views/screens/small_main_tasks_screen.dart';


void main() {
  runApp( MaterialApp(home: ResponsiveTest()));
}

class ResponsiveTest extends StatelessWidget{
@override
  Widget build(BuildContext context) {
   /* return MediaQuery.of(context).size.width > 100
        ? LargMainTasksScreen()
        : SmallMainTasksScreen();*/

        return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          return LargMainTasksScreen();
        } else {
          return SmallMainTasksScreen();
        }
      },
    );
  }
}
 
