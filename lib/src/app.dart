import 'package:flutter/material.dart';
import 'package:todo_with_sqlite/screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      home: HomeScreen(),
      theme: ThemeData(
          primaryColor: Colors.deepOrange, primarySwatch: Colors.deepOrange),
    );
  }
}
