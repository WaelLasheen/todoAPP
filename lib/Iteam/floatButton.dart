import 'package:flutter/material.dart';

import '../func/diffDate.dart';


class floatButton extends StatefulWidget {
  final Function(List<String> task) onAddTask;
  const floatButton({Key? key, required this.onAddTask}) : super(key: key);

  @override
  State<floatButton> createState() => _floatButton();
}

class _floatButton extends State<floatButton> {
  DateTime date = DateTime.now();
  String dateValue = "No Date";
  String taskValue = "";

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add, color: Colors.white),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              actions: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    autofocus: false,
                    onChanged: (value) {
                      setState(() => taskValue = value);
                    },
                    decoration: const InputDecoration(
                      hintText: 'Task',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    autofocus: false,
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: dateValue,
                      hintStyle: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.calendar_today_outlined, color: Colors.blue),
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100),
                          );

                          if (newDate == null) return;
                          setState(() {
                            date = newDate;
                            dateValue = dateDifference(date);
                          });
                        },
                      ),
                      const Expanded(child: SizedBox()),
                      TextButton(
                        onPressed: () {
                          widget.onAddTask([taskValue, dateValue]);
                          Navigator.of(context).pop();
                        },
                        child: const Text('Save', style: TextStyle(color: Colors.blue, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}