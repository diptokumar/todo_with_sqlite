import 'package:flutter/material.dart';
import 'package:todo_with_sqlite/helper/drawer_navigation.dart';
import 'package:todo_with_sqlite/screens/todo_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      drawer: DrawerNavigation(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TodoScreen())),
      ),
    );
  }
}
