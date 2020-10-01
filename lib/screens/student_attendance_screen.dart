import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';

// class StudentAttendanceScreen extends StatefulWidget {
//   static const String routeName = '/student-attendance';

//   static Widget _eventIcon = new Container(
//     decoration: new BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.all(
//         Radius.circular(1000),
//       ),
//       border: Border.all(color: Colors.blue, width: 2.0),
//     ),
//     child: new Icon(
//       Icons.person,
//       color: Colors.amber,
//     ),
//   );

//   @override
//   _StudentAttendanceScreenState createState() =>
//       _StudentAttendanceScreenState();
// }

// class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {
//   DateTime _currentDate = DateTime(2020, 6, 9);
//   void initState() {
//     _markedDateMap.add(
//         new DateTime(2020, 6, 26),
//         new Event(
//           date: new DateTime(2020, 2, 26),
//           title: 'Event 5',
//           //  icon: _eventIcon,
//         ));

//     _markedDateMap.add(
//         new DateTime(2020, 6, 27),
//         new Event(
//           date: new DateTime(2020, 2, 26),
//           title: 'Event 5',
//           //  icon: _eventIcon,
//         ));

//     super.initState();
//   }

//   EventList<Event> _markedDateMap = new EventList<Event>(
//     events: {
//       new DateTime(2020, 6, 9): [
//         new Event(
//           date: new DateTime(2020, 6, 10),

//           title: 'Event 1',
//           // icon: StudentAttendanceScreen._eventIcon,
//           dot: Padding(
//             padding: EdgeInsets.only(top: 20.0),
//             child: Text(
//               'A',
//               style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//       ],
//       new DateTime(2020, 6, 11): [
//         new Event(
//           date: new DateTime(2020, 6, 25),
//           title: 'Event 1',
//           icon: StudentAttendanceScreen._eventIcon,
//           dot: Text(
//             'A',
//             style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ],
//       new DateTime(2020, 6, 25): [
//         new Event(
//           date: new DateTime(2020, 6, 30),
//           title: 'Event 1',
//           icon: StudentAttendanceScreen._eventIcon,
//           dot: Text(
//             'A',
//             style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//           ),
//         ),
//       ],
//     },
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Attendance'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(left: 40, top: 30),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 36.0,
//                     backgroundImage:
//                         AssetImage('assets/images/profile_pic.png'),
//                     backgroundColor: Colors.grey,
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(left: 17),
//                     child:
//                         Text('Student Name \n Reg # 000213 \n Class: I(Ref)'),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // color: Colors.white,
//               padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 20.0),
//               child: Table(
//                 // textDirection: TextDirection.ltr,
//                 border: TableBorder.all(color: Colors.grey),
//                 children: [
//                   TableRow(
//                     children: [
//                       Center(
//                         child: Text('Present'),
//                       ),
//                       Center(
//                         child: Text('Absent'),
//                       ),
//                       Center(
//                         child: Text('Leave'),
//                       ),
//                       Center(
//                         child: Text('Holiday'),
//                       ),
//                     ],
//                   ),
//                   TableRow(
//                     children: [
//                       Center(
//                         child: Text('00'),
//                       ),
//                       Center(
//                         child: Text('00'),
//                       ),
//                       Center(
//                         child: Text('00'),
//                       ),
//                       Center(
//                         child: Text('00'),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             // TABLE

//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 16.0),
//               child: CalendarCarousel<Event>(
//                 onDayPressed: (DateTime date, List<Event> events) {
//                   this.setState(() {
//                     _currentDate = date;
//                   });
//                 },
//                 weekendTextStyle: TextStyle(
//                   color: Colors.red,
//                 ),
//                 thisMonthDayBorderColor: Colors.grey,
// //      weekDays: null, /// for pass null when you do not want to render weekDays
// //      headerText: Container( /// Example for rendering custom header
// //        child: Text('Custom Header'),
// //      ),
//                 customDayBuilder: (
//                   /// you can provide your own build function to make custom day containers
//                   bool isSelectable,
//                   int index,
//                   bool isSelectedDay,
//                   bool isToday,
//                   bool isPrevMonthDay,
//                   TextStyle textStyle,
//                   bool isNextMonthDay,
//                   bool isThisMonthDay,
//                   DateTime day,
//                 ) {
//                   /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
//                   /// This way you can build custom containers for specific days only, leaving rest as default.

//                   // Example: every 15th of month, we have a flight, we can place an icon in the container like that:
//                   if (day.day == 15) {
//                     return Center(
//                       child: Icon(Icons.local_airport),
//                     );
//                   } else {
//                     return null;
//                   }
//                 },
//                 weekFormat: false,
//                 markedDatesMap: _markedDateMap,
//                 height: 400.0,
//                 selectedDateTime: _currentDate,
//                 daysHaveCircularBorder: false,

//                 /// null for not rendering any border, true for circular border, false for rectangular border
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class StudentAttendanceScreen extends StatefulWidget {
  static const String routeName = '/student-attendance';

  @override
  _StudentAttendanceScreenState createState() =>
      _StudentAttendanceScreenState();
}

class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {
  DateTime _currentDate = DateTime(2020, 2, 17);
  DateTime _currentDate2 = DateTime(2020, 2, 17);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2020, 2, 17));
  DateTime _targetDateTime = DateTime(2020, 2, 17);
//  List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];
  static Widget _eventIcon = Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = EventList<Event>();
  CalendarCarousel _calendarCarousel, _calendarCarouselNoHeader;

  @override
  void initState() {
    addMarker(DateTime(2020, 2, 03));
    super.initState();
  }

  addMarker(DateTime startEventDateTime) {
    var eventDateTime = startEventDateTime;

    for (int i = 0; i < 5; i++) {
      if (eventDateTime.day == 1) {
        eventDateTime = eventDateTime.add(Duration(days: (4)));
      } else {
        eventDateTime = eventDateTime.add(Duration(days: (5)));
      }
      print(eventDateTime.toLocal());
      _markedDateMap.add(
          eventDateTime,
          Event(
            date: eventDateTime,
            title: 'Event $i',
            icon: _eventIcon,
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    /// Example with custom icon
    _calendarCarousel = CalendarCarousel<Event>(
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate = date);
        events.forEach((event) => print(event.title));
      },
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
//          weekDays: null, /// for pass null when you do not want to render weekDays
      headerText: 'Custom Header',
//          markedDates: _markedDate,
      weekFormat: true,
      markedDatesMap: _markedDateMap,
      height: 200.0,
      selectedDateTime: _currentDate2,
      showIconBehindDayText: true,
//          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      todayButtonColor: Colors.transparent,
      todayBorderColor: Colors.green,
      markedDateMoreShowTotal:
          false, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
    );

    /// Example Calendar Carousel without header and custom prev & next button
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 300.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder: CircleBorder(
        side: BorderSide(color: Colors.yellow),
      ),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      // markedDateIconBuilder: (event) {
      //   return Container(
      //     color: Colors.blue,
      //   );
      // },
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Attendance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //custom icon
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 16.0),
            //   child: _calendarCarousel,
            // ), // This trailing comma makes auto-formatting nicer for build methods.
            // //custom icon without header
            Padding(
              padding: EdgeInsets.only(left: 40, top: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 36.0,
                    backgroundImage:
                        AssetImage('assets/images/profile_pic.png'),
                    backgroundColor: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17),
                    child:
                        Text('Student Name \n Reg # 000213 \n Class: I(Ref)'),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 20.0),
              child: Table(
                // textDirection: TextDirection.ltr,
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(
                    children: [
                      Center(
                        child: Text('Present'),
                      ),
                      Center(
                        child: Text('Absent'),
                      ),
                      Center(
                        child: Text('Leave'),
                      ),
                      Center(
                        child: Text('Holiday'),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Center(
                        child: Text('00'),
                      ),
                      Center(
                        child: Text('00'),
                      ),
                      Center(
                        child: Text('00'),
                      ),
                      Center(
                        child: Text('00'),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30.0,
                bottom: 16.0,
                left: 16.0,
                right: 16.0,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    _currentMonth,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  )),
                  FlatButton(
                    child: Text('PREV'),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month - 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  ),
                  FlatButton(
                    child: Text('NEXT'),
                    onPressed: () {
                      setState(() {
                        _targetDateTime = DateTime(
                            _targetDateTime.year, _targetDateTime.month + 1);
                        _currentMonth =
                            DateFormat.yMMM().format(_targetDateTime);
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: _calendarCarouselNoHeader,
            ), //
          ],
        ),
      ),
    );
  }
}
