import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final Function saveFuns;

  SaveButton({Key? key, required this.saveFuns}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        saveFuns();
      },
      child: const Text('Save', style: TextStyle(color: Colors.blue, fontSize: 18)),
    );
  }
}
