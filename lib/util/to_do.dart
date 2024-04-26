import 'package:flutter/material.dart';

class ToDoCard extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;


  ToDoCard(
    {super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged
    }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            
            // text
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.blue[700], borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
