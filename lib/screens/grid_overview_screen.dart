
import 'package:children_performance_system/screens/academic_screen.dart';
import 'package:children_performance_system/screens/notification_screen.dart';
import 'package:children_performance_system/screens/student_attendance_screen.dart';
import 'package:flutter/material.dart';

class GridOverviewScreen extends StatefulWidget {
  static const String routeName = '/grid-overview';
  @override
  _GridOverviewScreenState createState() => _GridOverviewScreenState();
}

class _GridOverviewScreenState extends State<GridOverviewScreen> {
  // final List<GridOverview> gridOverview = [
  //   GridOverview(
  //     id: '1',
  //     title: 'Attendance',
  //     imgUrl: './assets/images/attendance.png',
  //     myColor: Color(0xFF20be59),
  //   ),
  //   GridOverview(
  //     id: '2',
  //     title: 'Notifications',
  //     imgUrl: './assets/images/bell.png',
  //     myColor: Color(0xFF12d795),
  //   ),
  //   GridOverview(
  //     id: '3',
  //     title: 'Academic',
  //     imgUrl: './assets/images/academic.png',
  //     myColor: Color(0xFFbe479e),
  //   ),
  //   GridOverview(
  //     id: '4',
  //     title: 'Bus Timing',
  //     imgUrl: './assets/images/bus-schedule.png',
  //     myColor: Color(0xFFf9bf1b),
  //   ),
  //   GridOverview(
  //     id: '5',
  //     title: 'Faculty Remarks',
  //     imgUrl: './assets/images/dream.png',
  //     myColor: Color(0xFFff7800),
  //   ),
  //   GridOverview(
  //     id: '6',
  //     title: 'Distinction',
  //     imgUrl: './assets/images/distinction.png',
  //     myColor: Color(0xFFd73559),
  //   ),
  //   GridOverview(
  //     id: '7',
  //     title: 'Give Comment',
  //     imgUrl: './assets/images/comment.png',
  //     myColor: Color(0xFF00b9f2),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Grid'),
      ),
      // body: GridView(
      //   padding: EdgeInsets.symmetric(
      //     horizontal: 20.0,
      //     vertical: 30.0,
      //   ),
      //   children: gridOverview.map((gridData) {
      //     return InkWell(
      //       // onTap: () => selectCategory(context),
      //       splashColor: Theme.of(context).primaryColor,
      //       borderRadius: BorderRadius.circular(6),
      //       child: GridTile(
      //         child: Container(
      //           // padding: const EdgeInsets.all(15),
      //           child: Padding(
      //             padding: EdgeInsets.only(bottom: 40),
      //             child: Image.asset(
      //               gridData.imgUrl,
      //               // fit: BoxFit.fill,
      //             ),
      //           ),
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //               colors: [
      //                 gridData.myColor.withOpacity(0.7),
      //                 gridData.myColor,
      //               ],
      //               begin: Alignment.topRight,
      //               end: Alignment.bottomLeft,
      //             ),
      //             borderRadius: BorderRadius.circular(7),
      //           ),
      //         ),
      //         footer: GridTileBar(
      //           backgroundColor: gridData.myColor,
      //           title: Text(
      //             '${gridData.title}',
      //             textAlign: TextAlign.center,
      //             style: TextStyle(fontSize: 16.0, letterSpacing: 2),
      //           ),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     childAspectRatio: 2.6 / 2,
      //     crossAxisSpacing: 20,
      //     mainAxisSpacing: 20,
      //   ),
      // ),

      body: GridView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(StudentAttendanceScreen.routeName);
            },
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
            child: GridTile(
              child: Container(
                // padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    './assets/images/attendance.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF20be59).withOpacity(0.7),
                      Color(0xFF20be59),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Color(0xFF20be59),
                title: Text(
                  'Attendance',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, letterSpacing: 2),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(NotificationScreen.routeName);
            },
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
            child: GridTile(
              child: Container(
                // padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    './assets/images/bell.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF12d795).withOpacity(0.7),
                      Color(0xFF12d795),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Color(0xFF12d795),
                title: Text(
                  'Notifications',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, letterSpacing: 2),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(AcademicScreen.routeName),
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
            child: GridTile(
              child: Container(
                // padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    './assets/images/academic.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFbe479e).withOpacity(0.7),
                      Color(0xFFbe479e),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Color(0xFFbe479e),
                title: Text(
                  'Academic',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, letterSpacing: 2),
                ),
              ),
            ),
          ),
          InkWell(
            // onTap: () => selectCategory(context),
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
            child: GridTile(
              child: Container(
                // padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    './assets/images/bus-schedule.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFf9bf1b).withOpacity(0.7),
                      Color(0xFFf9bf1b),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Color(0xFFf9bf1b),
                title: Text(
                  'Bus Timing',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, letterSpacing: 2),
                ),
              ),
            ),
          ),
          InkWell(
            // onTap: () => selectCategory(context),
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
            child: GridTile(
              child: Container(
                // padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    './assets/images/dream.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFff7800).withOpacity(0.7),
                      Color(0xFFff7800),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Color(0xFFff7800),
                title: Text(
                  'Faculty Remarks',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, letterSpacing: 2),
                ),
              ),
            ),
          ),
          InkWell(
            // onTap: () => selectCategory(context),
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
            child: GridTile(
              child: Container(
                // padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    './assets/images/distinction.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFd73559).withOpacity(0.7),
                      Color(0xFFd73559),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Color(0xFFd73559),
                title: Text(
                  'Distinction',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, letterSpacing: 2),
                ),
              ),
            ),
          ),
          InkWell(
            // onTap: () => selectCategory(context),
            splashColor: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6),
            child: GridTile(
              child: Container(
                // padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Image.asset(
                    './assets/images/comment.png',
                    // fit: BoxFit.fill,
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF00b9f2).withOpacity(0.7),
                      Color(0xFF00b9f2),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Color(0xFF00b9f2),
                title: Text(
                  'Give Comment',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, letterSpacing: 2),
                ),
              ),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.6 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
