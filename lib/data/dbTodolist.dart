// ignore_for_file: unused_field, camel_case_types

import 'package:hive/hive.dart';

class dbTodolist {

  List toDolist = [];
  
  //reference the box
  final _myBox = Hive.box('mybox');

  void createInitialData(){
    toDolist = [
      ["Belajar untuk UTS", false],
    ];
  }

  // load data
  void loaddata(){
    toDolist = _myBox.get("TODOLIST");
  }

  // update data
  void updateDatabase(){
     _myBox.put("TODOLIST", toDolist);
  }

}