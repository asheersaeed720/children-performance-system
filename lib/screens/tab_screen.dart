import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';

class TabScreen extends StatefulWidget {
  static const String routeName = '/tabs';

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'English',
              ),
              Tab(
                text: 'Urdu',
              ),
              Tab(
                text: 'Math',
              ),
            ],
          ),
          title: Text('Attendance'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Container(
              // color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'S. no',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'Exam',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'Mark',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('1. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 1')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/34')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('2. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 2')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/16')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('3. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 3')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/14')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('4. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 4')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/26')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('5. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 5')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/46')),
                  ]),
                ],
              ),
            ),
            Container(
              // color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'S. no',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'Exam',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'Mark',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('1. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 1')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/34')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('2. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 2')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/16')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('3. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 3')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/14')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('4. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 4')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/26')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('5. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 5')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/46')),
                  ]),
                ],
              ),
            ),
            Container(
              // color: Colors.white,
              padding: EdgeInsets.all(20.0),
              child: Table(
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(children: [
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'S. no',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'Exam',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          'Mark',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('1. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 1')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/34')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('2. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 2')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/16')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('3. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 3')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/14')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('4. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 4')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/26')),
                  ]),
                  TableRow(children: [
                    Padding(padding: EdgeInsets.all(6), child: Text('5. ')),
                    Padding(padding: EdgeInsets.all(6), child: Text('Test 5')),
                    Padding(padding: EdgeInsets.all(6), child: Text('50/46')),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
