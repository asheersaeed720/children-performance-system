import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StudentChart extends StatefulWidget {
  @override
  _StudentChartState createState() => _StudentChartState();
}

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class _StudentChartState extends State<StudentChart> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = [
      ClicksPerYear('2016', 35, Colors.purple),
      ClicksPerYear('2017', 50, Colors.purple),
      ClicksPerYear('2019', 80, Colors.purple),
      // ClicksPerYear('2018', _counter, Colors.green),
    ];

    var series = [
      charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'Clicks',
        data: data,
      ),
    ];

    var chart = charts.BarChart(
      series,
      animate: true,
    );

    var chartWidget = Padding(
      padding: EdgeInsets.all(32.0),
      child: SizedBox(
        height: 300.0,
        child: chart,
      ),
    );

    return Scaffold(
      body: chartWidget,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
