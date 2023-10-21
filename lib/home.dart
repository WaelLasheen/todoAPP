import 'package:flutter/material.dart';

import 'Iteam/floatButton.dart';
import 'Iteam/toDoList.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _home();
}

class _home extends State<home> {
  List<List<String>> todo = [
    ['add task', ''],
  ];

  void addToDo(List<String> task) {
    setState(() {
      todo.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasker', style: TextStyle(fontSize: 28)),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const Drawer(),
      floatingActionButton: floatButton(onAddTask: addToDo),
      body: Column(
        children: [
          toDoList(todo: todo),
        ],
      ),
    );
  }
}
