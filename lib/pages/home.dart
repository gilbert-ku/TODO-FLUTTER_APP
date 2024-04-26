import 'package:flutter/material.dart';
import 'package:toda_app/util/to_do.dart';

class ToDOPage extends StatefulWidget {
  const ToDOPage({super.key});

  @override
  State<ToDOPage> createState() => _ToDOPageState();
}

class _ToDOPageState extends State<ToDOPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Center(
           child:Text("TO DO APP")
          ),
          elevation: 0,
      ),
      body: ListView(
        children: [
           ToDoCard(
            taskName: "figma design",
            taskCompleted: true,
            onChanged: (p0) {
              
            },
           ),
        ],
      ),
    );
  
  }
}
