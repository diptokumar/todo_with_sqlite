import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  var _todocontroller = TextEditingController();
  var _description = TextEditingController();
  var _tododate = TextEditingController();
  var _categories = List<DropdownMenuItem>();
  @override
  Widget build(BuildContext context) {
    var _selectedvalue;
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: _todocontroller,
              decoration:
                  InputDecoration(hintText: 'Cook Food', labelText: 'Food name'),
            ),
            TextField(
              controller: _description,
              decoration:
                  InputDecoration(hintText: 'Cook Food', labelText: 'Food name'),
            ),
            TextField(
              controller: _tododate,
              decoration: InputDecoration(
                  hintText: 'YY-MM-DD',
                  labelText: 'YY-MM-DD',
                  prefixIcon: Icon(Icons.calendar_today),
              ),

            ),
            DropdownButtonFormField(
              value: _selectedvalue,
              items: _categories,
              onChanged: (value) {},
              hint: Text('select one category'),
            ),
            SizedBox(
               height: 10.0,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
