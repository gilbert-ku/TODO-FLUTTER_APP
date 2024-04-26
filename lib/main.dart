import 'package:flutter/material.dart';
import 'package:toda_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Correcting the constructor syntax

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ToDOPage(),
      theme: ThemeData(primarySwatch: Colors.amber), // Adding the missing comma and closing parentheses
    ); // Adding the missing closing parentheses
  }
}