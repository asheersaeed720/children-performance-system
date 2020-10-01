
import 'package:children_performance_system/models/student_detail_category.dart';
import 'package:flutter/material.dart';

class StudentDetailScreen extends StatelessWidget {
  static const String routeName = '/student-detail';

  final List<StudentDetailCategory> studentDetails = [
    StudentDetailCategory(
      categoryName: 'Academic Performance',
      categoryImg: './assets/images/academic.png',
    ),
    StudentDetailCategory(
      categoryName: 'Attendance Statics',
      categoryImg:
          'https://www.shareicon.net/data/512x512/2016/07/03/790265_people_512x512.png',
    ),
    StudentDetailCategory(
      categoryName: 'Attendance',
      categoryImg:
          'https://www.shareicon.net/data/512x512/2016/07/03/790265_people_512x512.png',
    ),
    StudentDetailCategory(
      categoryName: 'Attendance',
      categoryImg:
          'https://www.shareicon.net/data/512x512/2016/07/03/790265_people_512x512.png',
    ),
    StudentDetailCategory(
      categoryName: 'Attendance',
      categoryImg:
          'https://www.shareicon.net/data/512x512/2016/07/03/790265_people_512x512.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students Detail'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                'https://www.shareicon.net/data/512x512/2016/07/03/790265_people_512x512.png',
              ),
              backgroundColor: Theme.of(context).accentColor,
            ),
            title: Text('Student Name'),
            subtitle: Text('Grade A'),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context)
                        //     .pushNamed(TabScreen.routeName);
                      },
                      child: CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(
                          './assets/images/academic.png',
                        ),
                        backgroundColor: Theme.of(context).accentColor,
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      '  Academic \nPerformance',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 23, left: 23),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(
                          './assets/images/academic.png',
                        ),
                        backgroundColor: Theme.of(context).accentColor,
                      ),
                      SizedBox(height: 9),
                      Text(
                        '  Attendance \nPerformance',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        './assets/images/academic.png',
                      ),
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                    SizedBox(height: 9),
                    Text(
                      '  Academic \nPerformance',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        './assets/images/academic.png',
                      ),
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                    SizedBox(height: 9),
                    Text(
                      '  Academic \nPerformance',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 23, left: 23),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(
                          './assets/images/academic.png',
                        ),
                        backgroundColor: Theme.of(context).accentColor,
                      ),
                      SizedBox(height: 9),
                      Text(
                        '  Academic \nPerformance',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        './assets/images/academic.png',
                      ),
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                    SizedBox(height: 9),
                    Text(
                      '  Academic \nPerformance',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        './assets/images/academic.png',
                      ),
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                    SizedBox(height: 9),
                    Text(
                      '  Academic \nPerformance',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 23, left: 23),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(
                          './assets/images/academic.png',
                        ),
                        backgroundColor: Theme.of(context).accentColor,
                      ),
                      SizedBox(height: 9),
                      Text(
                        '  Academic \nPerformance',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage(
                        './assets/images/academic.png',
                      ),
                      backgroundColor: Theme.of(context).accentColor,
                    ),
                    SizedBox(height: 9),
                    Text(
                      '  Academic \nPerformance',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

      // body: GridView.builder(
      //     itemCount: studentDetails.length,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       childAspectRatio: 3 / 2,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //     ),
      //     itemBuilder: (context, i) {
      //       return GridTile(
      //         child: Image.asset(
      //           '${studentDetails[i].categoryImg}',
      //           fit: BoxFit.contain
      //         ),
      //         footer: GridTileBar(
      //           leading: IconButton(
      //             icon: Icon(Icons.favorite),
      //             onPressed: () {},
      //           ),
      //           title: Text(
      //             '${studentDetails[i].categoryName}',
      //             textAlign: TextAlign.center,
      //           ),
      //           trailing: IconButton(
      //             color: Theme.of(context).accentColor,
      //             icon: Icon(Icons.shopping_cart),
      //             onPressed: () {},
      //           ),
      //         ),
      //       );
      //     }),
    );
  }
}
