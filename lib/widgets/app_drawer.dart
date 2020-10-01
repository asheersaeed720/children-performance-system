import 'package:flutter/material.dart';
import 'package:children_performance_system/screens/login_screen.dart';
import 'package:children_performance_system/screens/student_list_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Drawer',
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Login'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(LoginScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Students List'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed(StudentListScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
