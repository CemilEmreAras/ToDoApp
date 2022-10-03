import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];
  // reference our box
  final myBox = Hive.box('mybox');

  // run this method if this method is the firs time ever opening this app
  void createInitialData() {
    todoList = [
      ["Make a flutter Project", false],
      ["Make a flutter Project2", false],
    ];
  }

  void loadData() {
    todoList = myBox.get("TODODATABASE");
  }

  // update to database
  void updateDataBase() {
    myBox.put("TODODATABASE", todoList);
  }
}
