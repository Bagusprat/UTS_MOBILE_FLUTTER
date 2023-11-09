// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/untitle/button.dart';

class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   Dialogbox({super.key, 
  required this.controller,
  required this.onSave,
  required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red,
       content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText : "Add new Task",
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            //save button
            Mybutton(text: "Save", onPressed: onSave),

            const SizedBox(width: 8,),

            //cancel button
            Mybutton(text: "Cancel", onPressed: onCancel),

          ],)
          ],
        ),
        ),
    );
  }
}