import 'package:flutter/material.dart';

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
      appBar:  AppBar(
        backgroundColor: Colors.blue[300],
        title: Center(
           child:Text("TO DO APP")
          ),
          elevation: 0,
      ),

    );
  
  }
}
