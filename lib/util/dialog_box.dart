import 'package:flutter/material.dart';
import 'package:to_do/util/save_and_cancel.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Task'),
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: const InputDecoration(hintText: 'Type here'),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // save button
            MyButton(text: "Save", onPressed: onSave),

            const SizedBox(width: 8),

            // cancel button
            MyButton(text: "Cancel", onPressed: onCancel),
          ],
        ),
      ],
    );
  }
}
