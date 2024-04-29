
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoCard extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  // ignore: use_super_parameters
  const ToDoCard({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        // slide to see delete button
        endActionPane:  ActionPane(
          motion:  const StretchMotion(), 
          children: [
          SlidableAction(
            onPressed: deleteFunction?.call(context),
            icon: Icons.delete,
            backgroundColor: Colors.red,
          )
        ]),
        child: Container(
          padding: const EdgeInsets.all(25),
          // ignore: sort_child_properties_last
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),

              // text
              Text(
                taskName,
                style: TextStyle(
                    // condition to check complete task
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: Colors.white,
                    fontSize: 17),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.blue[700], borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
