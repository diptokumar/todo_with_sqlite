import 'package:flutter/material.dart';
import 'package:todo_with_sqlite/screens/CatrgoriesScreen.dart';
import 'package:todo_with_sqlite/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('El Todo'),
              accountEmail: Text('Category'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  child: Icon(Icons.account_circle),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent
              ),
            ),
            ListTile(title: Text('Home'),
            leading: Icon(Icons.home), onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
              },),
            ListTile(title: Text('Category'),
              leading: Icon(Icons.view_list), onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CatrgoriesScreen()));
              },),

          ],
        ),
      ),
    );
  }
}
