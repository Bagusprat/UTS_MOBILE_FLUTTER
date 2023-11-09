// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/data/dbTodolist.dart';
import 'package:flutter_pem_mobile/untitle/Todo_file.dart';
import 'package:flutter_pem_mobile/untitle/dialogbox.dart';
import 'package:hive/hive.dart';


class Todo_page extends StatefulWidget{
  const Todo_page({super.key});

  @override
  State<Todo_page> createState() => _TodoPageState();
}

class _TodoPageState extends State<Todo_page>{

  // reference the hive box
  final _myBox = Hive.box('mybox');


  //teks controller
  final _controller = TextEditingController();

  dbTodolist db = dbTodolist();

  @override
  void initState() {
    //jika pertama kali membuka app maka buat default data
    if(_myBox.get("TODOLIST") == null ){
      db.createInitialData();      
    } else {
      // data sudah ada
      db.loaddata();
    }
    super.initState();
  }


  // checkbox
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDolist[index][1] = !db.toDolist[index] [1];
    });
    db.updateDatabase();
  }
  

  //Save New Task
  void savenewtask() {
    setState(() {
      db.toDolist.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDatabase();
  }
  
  // New Task
  void createnewtask(){
    showDialog(context: context, builder: (context) { 
     return Dialogbox(
      controller: _controller,
      onSave: savenewtask,
      onCancel: ()=>Navigator.of(context).pop(),
     );
    },);
  }
  

  // delete task
  void deletetask(int index){
    setState(() {
      db.toDolist.removeAt(index);
    });
    db.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 221, 234),
      appBar: AppBar(title: const Text("TODO LIST PAGE",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Colors.red
               ),
    floatingActionButton: FloatingActionButton(
      onPressed: createnewtask,
      child: Icon(Icons.add),
      backgroundColor: Colors.red,
    ),
    body: ListView.builder(
    itemCount: db.toDolist.length,
    itemBuilder: (context, index){
      return ToDofile(
      taskname: db.toDolist[index][0],
      tastsukses: db.toDolist[index][1],
      onChanged: (value) => checkBoxChanged(value, index),
      deletefunction  : (context) => deletetask(index),
      );
    },
    ),
    );
  }
}