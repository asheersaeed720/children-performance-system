import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  static const String routeName = '/notification';

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: 20.0,
          // bottom: 20.0,
          right: 10.0,
          left: 10.0,
        ),
        child: Column(
          children: [
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.markunread),
                onPressed: () {},
              ),
              title: Text('Notify 1'),
              trailing: Text('1hr ago'),
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.markunread),
                onPressed: () {},
              ),
              title: Text('Notify 2'),
              trailing: Text('22m ago'),
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.markunread),
                onPressed: () {},
              ),
              title: Text('Notify 3'),
              trailing: Text('16m ago'),
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.markunread),
                onPressed: () {},
              ),
              title: Text('Notify 4'),
              trailing: Text('42m ago'),
            ),
            Divider(color: Colors.grey),
            ListTile(
              leading: IconButton(
                icon: Icon(Icons.markunread),
                onPressed: () {},
              ),
              title: Text('Notify 5'),
              trailing: Text('35m ago'),
            ),
            Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
