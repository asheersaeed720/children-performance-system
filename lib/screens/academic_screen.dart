import 'package:children_performance_system/screens/tab_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/student_chart.dart';

class AcademicScreen extends StatefulWidget {
  static const String routeName = '/academic';

  @override
  _AcademicScreenState createState() => _AcademicScreenState();
}

class _AcademicScreenState extends State<AcademicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TabScreen(),
          ),
          Expanded(
            child: StudentChart(),
          ),
        ],
      ),
    );
  }
}
