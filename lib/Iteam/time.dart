import 'package:flutter/material.dart';
import 'package:todo_app/func/calcMonth.dart';

import '../func/calcDay.dart';

class time extends StatelessWidget {
  int day = DateTime.now().day;
  int month = DateTime.now().month;
  int year = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20,10,20,20),
      margin: const EdgeInsets.only(bottom: 10),
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Text('$day',
              style: const TextStyle(color: Colors.white , fontSize: 48),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(calculateMonth(month),
                style: const TextStyle(color: Colors.white , fontSize: 20),
              ),
              Text('$year',
                style: const TextStyle(color: Colors.white , fontSize: 20),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          Text(calculateDayOfWeek(day),
            style: const TextStyle(color: Colors.white , fontSize: 28),
          )
        ],
      ),
    );
  }
}