// import 'package:flutter/material.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

// class StudentProgressScreen extends StatelessWidget {
//   static const String routeName = '/student-progress';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 10),
//             ListTile(
//               leading: CircleAvatar(
//                 radius: 35.0,
//               ),
//               title: Text('Student Name'),
//               subtitle: Text('Grade'),
//             ),
//             Card(
//               elevation: 3,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Text('Computer'),
//                         SizedBox(height: 6),
//                         CircleAvatar(radius: 32),
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 50),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Mid Year'),
//                           SizedBox(height: 4),
//                           Text('Course work'),
//                           SizedBox(height: 4),
//                           Text('Exam'),
//                           SizedBox(height: 4),
//                           Text('Average'),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       // crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                       ],
//                     ),
//                     Column(
//                       // mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('85'),
//                         SizedBox(height: 4),
//                         Text('34'),
//                         SizedBox(height: 4),
//                         Text('16'),
//                         SizedBox(height: 4),
//                         Text('74'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               elevation: 3,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Text('Computer'),
//                         SizedBox(height: 6),
//                         CircleAvatar(radius: 32),
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 50),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Mid Year'),
//                           SizedBox(height: 4),
//                           Text('Course work'),
//                           SizedBox(height: 4),
//                           Text('Exam'),
//                           SizedBox(height: 4),
//                           Text('Average'),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       // crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                       ],
//                     ),
//                     Column(
//                       // mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('85'),
//                         SizedBox(height: 4),
//                         Text('34'),
//                         SizedBox(height: 4),
//                         Text('16'),
//                         SizedBox(height: 4),
//                         Text('74'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Card(
//               elevation: 3,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Text('Computer'),
//                         SizedBox(height: 6),
//                         CircleAvatar(radius: 32),
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 50),
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('Mid Year'),
//                           SizedBox(height: 4),
//                           Text('Course work'),
//                           SizedBox(height: 4),
//                           Text('Exam'),
//                           SizedBox(height: 4),
//                           Text('Average'),
//                         ],
//                       ),
//                     ),
//                     Column(
//                       // crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                         SizedBox(height: 13),
//                         LinearPercentIndicator(
//                           width: 85.0,
//                           lineHeight: 6.5,
//                           percent: 0.5,
//                           backgroundColor: Colors.grey,
//                           progressColor: Theme.of(context).accentColor,
//                         ),
//                       ],
//                     ),
//                     Column(
//                       // mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('85'),
//                         SizedBox(height: 4),
//                         Text('34'),
//                         SizedBox(height: 4),
//                         Text('16'),
//                         SizedBox(height: 4),
//                         Text('74'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
