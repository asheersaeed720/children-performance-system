import 'package:children_performance_system/models/student.dart';
import 'package:children_performance_system/screens/grid_overview_screen.dart';
import 'package:children_performance_system/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class StudentListScreen extends StatelessWidget {
  static const String routeName = '/student-list';

  final List<Student> students = [
    Student(
      studentName: 'Amir',
      studentImg: './assets/images/student_pic.png',
      schoolName: 'Nasa',
    ),
    Student(
      studentName: 'Fayyaz',
      studentImg: './assets/images/student_pic.png',
      schoolName: 'Woodland',
    ),
    Student(
      studentName: 'Hamza',
      studentImg: './assets/images/student_pic.png',
      schoolName: 'City',
    ),
    Student(
      studentName: 'Daniyal',
      studentImg: './assets/images/student_pic.png',
      schoolName: 'Nasa',
    ),
    Student(
      studentName: 'Sameer',
      studentImg: './assets/images/student_pic.png',
      schoolName: 'Woodland',
    ),
    Student(
      studentName: 'Hassan',
      studentImg: './assets/images/student_pic.png',
      schoolName: 'City',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students List'),
        centerTitle: true,
      ),
      // body: Column(
      //   children: (students as List)
      //       .map((student) => Text(student.studentName))
      //       .toList(),
      // ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, i) {
          // return Column(
          //   children: [
          //     ListTile(
          //       onTap: () {
          //         Navigator.of(context).pushNamed(
          //           StudentDetailScreen.routeName,
          //         );
          //       },
          //       leading: CircleAvatar(
          //         radius: 22.0,
          //         backgroundImage: NetworkImage('${students[i].studentImg}'),
          //         backgroundColor: Colors.grey,
          //       ),
          //       title: Text(
          //         '${students[i].studentName}',
          //         style: TextStyle(fontWeight: FontWeight.w600),
          //       ),
          //       subtitle: Text('${students[i].schoolName}'),
          //       trailing: IconButton(
          //         icon: Icon(Icons.expand_more),
          //         onPressed: () {},
          //       ),
          //     ),
          //     Divider(),
          //   ],
          // );
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 8,
            ),
            child: ExpansionTile(
              initiallyExpanded: false,
              leading: CircleAvatar(
                radius: 22.0,
                backgroundImage: AssetImage('./assets/images/student_pic.png'),
                backgroundColor: Theme.of(context).accentColor,
              ),
              title: Text(
                '${students[i].studentName}',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      // child: Text('${students[i].schoolName}'),
                      child: Row(
                        children: [
                          IconButton(
                            color: Colors.grey,
                            icon: Icon(Icons.school),
                            onPressed: () {},
                          ),
                          Text('${students[i].schoolName}'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                        bottom: 6.0,
                      ),
                      child: FlatButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(GridOverviewScreen.routeName);
                        },
                        child: Text('View'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
      drawer: AppDrawer(),
    );
  }
}
