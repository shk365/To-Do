import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function()? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListTile(
          hoverColor: Colors.white,
          onTap: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          leading: Checkbox(
            value: taskCompleted,
            onChanged: onChanged,
            shape: const CircleBorder(side: BorderSide(width: 52)),
          ),
          title: Text(
            taskName,
            style: TextStyle(
              fontSize: 20,
              decoration: taskCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: deleteFunction,
            )
        ),
      ),
    );
  }
}
