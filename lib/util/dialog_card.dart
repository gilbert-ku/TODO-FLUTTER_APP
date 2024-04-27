import 'package:flutter/material.dart';
import 'package:toda_app/util/my_button.dart';
// import 'package:flutter/widgets.dart';

class DialogCard extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  
  const DialogCard({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
    });

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.blue[100],
      content: SizedBox(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a  new task"
              ),
            ),

            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),

                const SizedBox(width: 4),

                MyButton(text: "Cancel", 
                onPressed: onCancel ,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}