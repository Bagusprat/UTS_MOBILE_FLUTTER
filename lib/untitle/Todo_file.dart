// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDofile extends StatelessWidget {
  final String taskname;
  final bool tastsukses;
  Function(bool?)? onChanged;
  Function(BuildContext)? deletefunction;

  ToDofile({super.key, 
  required this.taskname,
  required this.tastsukses,
  required this.onChanged,
  required this.deletefunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(left:25,right:25,top:25),
    child: Slidable(
      endActionPane: ActionPane(
        motion: StretchMotion(),
       children: [
        SlidableAction(onPressed: deletefunction,
        icon: Icons.delete,
        backgroundColor: Colors.red,
        borderRadius: BorderRadius.circular(22),)
       ],
       ),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            
            //checkbox
            Checkbox(
            value: tastsukses, 
            onChanged: onChanged,
            activeColor: const Color.fromARGB(255, 0, 0, 0),
            ),
    
            //task name
            Text(
              taskname,
              style: TextStyle(decoration: tastsukses ?  
              TextDecoration.lineThrough
              : TextDecoration.none ),),
          ],
        ),
        decoration: BoxDecoration(color: Colors.red,
        borderRadius: BorderRadius.circular(22)),
      ),
    ),
    );
  }
}
