import 'package:children_performance_system/screens/tab_screen.dart';
import 'package:flutter/material.dart';
import './screens/academic_screen.dart';
import './screens/grid_overview_screen.dart';
import './screens/notification_screen.dart';
import './screens/student_attendance_screen.dart';
import './screens/student_detail_screen.dart';
import './screens/student_list_screen.dart';

import './screens/login_screen.dart';

// Login screen gredient:
// #dc2727
// #b22828

// Login btn color:
// #b22828

// Grid Overview:
// Green:
// #20be59
// #00a14b

// Light green:
// #12d795
// #00a79d

// Purple:
// #be479e
// #7f3f98

// Yellow-Orange:
// #f9bf1b
// #f7941e

// Dark Orange:
// #ff7800
// #e36021

// Pink Purple:
// #d73559
// #9e1f63

// Blue:
// #00b9f2
// #2484c6

void main() => runApp(MyApp());

Map<int, Color> color = {
  50: Color.fromRGBO(220, 39, 39, .1),
  100: Color.fromRGBO(220, 39, 39, .2),
  200: Color.fromRGBO(220, 39, 39, .3),
  300: Color.fromRGBO(220, 39, 39, .4),
  400: Color.fromRGBO(220, 39, 39, .5),
  500: Color.fromRGBO(220, 39, 39, .6),
  600: Color.fromRGBO(220, 39, 39, .7),
  700: Color.fromRGBO(220, 39, 39, .8),
  800: Color.fromRGBO(220, 39, 39, .9),
  900: Color.fromRGBO(220, 39, 39, 1),
};

MaterialColor customPrimaryColor = MaterialColor(0xFFdc2727, color);
MaterialColor customAccentColor = MaterialColor(0xFFcc4343, color);

// F2EFF5

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Child Academic',
      theme: ThemeData(
        primarySwatch: customAccentColor,
        accentColor: customPrimaryColor,
        errorColor: Colors.red,
        fontFamily: 'Raleway',
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          title: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
          body1: TextStyle(fontSize: 14.0),
        ),
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        StudentListScreen.routeName: (context) => StudentListScreen(),
        StudentDetailScreen.routeName: (context) => StudentDetailScreen(),
        StudentAttendanceScreen.routeName: (context) =>
            StudentAttendanceScreen(),
        GridOverviewScreen.routeName: (context) => GridOverviewScreen(),
        NotificationScreen.routeName: (context) => NotificationScreen(),
        AcademicScreen.routeName: (context) => AcademicScreen(),
      },
    );
  }
}
