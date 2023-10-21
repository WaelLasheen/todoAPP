import 'package:flutter/material.dart';
import 'checkButton.dart';

class toDoList extends StatelessWidget {
  final List<List<String>> todo;
  toDoList({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(todo[index][0]),
              subtitle: todo[index][1] == '' || todo[index][1] == 'No Date'? null : Text(todo[index][1]),
              leading: checkButtom(),
            ),
          );
        },
      ),
    );
  }
}