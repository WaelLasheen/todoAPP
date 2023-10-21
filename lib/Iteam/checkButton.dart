import 'package:flutter/material.dart';

class checkButtom extends StatefulWidget {
   checkButtom({super.key});

  @override
  State<checkButtom> createState() => _checkButtom();
}

class _checkButtom extends State<checkButtom> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        isCheck = !isCheck;
      });
    }, 
    icon: Icon(isCheck ? Icons.check_circle : Icons.circle_outlined , color: isCheck?Colors.blue : Colors.grey,));
  }
}