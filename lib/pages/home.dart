import 'package:flutter/material.dart';
import 'package:toda_app/util/dialog_card.dart';
import 'package:toda_app/util/to_do.dart';

class ToDOPage extends StatefulWidget {
  const ToDOPage({super.key});

  @override
  State<ToDOPage> createState() => _ToDOPageState();
}

class _ToDOPageState extends State<ToDOPage> {
  // text controller

  final _controller = TextEditingController();

  // list of todos
  List toDoList = [
    ["Figma Design", false],
    ["Go for a walk", false]
  ];

  // checkbox if was clicked
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  // save new task

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // create new task

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogCard(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // dalete a task

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Center(child: Text("TO DO APP")),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          // build the list from todo list
          return ToDoCard(
            key: UniqueKey(), // If you need to uniquely identify each card
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
