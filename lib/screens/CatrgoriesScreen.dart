import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_with_sqlite/screens/home_screen.dart';

class CatrgoriesScreen extends StatefulWidget {
  @override
  _CatrgoriesScreenState createState() => _CatrgoriesScreenState();
}

class _CatrgoriesScreenState extends State<CatrgoriesScreen> {
  var _categoryname = TextEditingController();
  var _categorydescribe = TextEditingController();

  _showfromdialouge(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            actions: [
              FlatButton(
                  onPressed: () {
                    print('Catogry Name: ${_categoryname.text}');
                    print('Catogry Description: ${_categorydescribe.text}');
                  },
                  child: Text('save')),
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
