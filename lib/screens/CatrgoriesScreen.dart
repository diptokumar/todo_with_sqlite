import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_with_sqlite/model/category.dart';
import 'package:todo_with_sqlite/screens/home_screen.dart';
import 'package:todo_with_sqlite/services/category_services.dart';

class CatrgoriesScreen extends StatefulWidget {
  @override
  _CatrgoriesScreenState createState() => _CatrgoriesScreenState();
}

class _CatrgoriesScreenState extends State<CatrgoriesScreen> {
  var _categoryname = TextEditingController();
  var _categorydescribe = TextEditingController();

  var _category = CategoryClass();
  var _categoryservice = CategoryService();

  _showfromdialouge(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            actions: [
              FlatButton(
                onPressed: () {
                  _category.name = _categoryname.text;
                  _category.description = _categorydescribe.text;
                  _categoryservice.savecategory(_category);
                },
                child: Text('save'),
              ),
              FlatButton(onPressed: () {}, child: Text('cancel')),
            ],
            title: Text('category form'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _categoryname,
                    decoration: InputDecoration(
                        labelText: 'Category Name',
                        hintText: 'Write Category Name'),
                  ),
                  TextField(
                    controller: _categorydescribe,
                    decoration: InputDecoration(
                        labelText: 'Todo', hintText: 'Write todo Name'),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        leading: RaisedButton(
          elevation: 0,
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Category'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showfromdialouge(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
