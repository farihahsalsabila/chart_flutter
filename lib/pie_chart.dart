import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartKedua extends StatefulWidget {
  const ChartKedua({Key? key}) : super(key: key);

  @override
  _ChartKeduaState createState() => _ChartKeduaState();
}

class _ChartKeduaState extends State<ChartKedua> {
  List<PieChartSectionData> getSectionData(double screenWidth) {
    double radius = screenWidth / 3.5;
    return [
      PieChartSectionData(
        value: 50,
        title: '50%',
        radius: radius,
        titleStyle: TextStyle(color: Colors.white),
        color: Colors.blueAccent,
      ),
      PieChartSectionData(
        value: 35,
        title: '35%',
        titleStyle: TextStyle(color: Colors.white),
        radius: radius,
        color: Colors.red,
      ),
      PieChartSectionData(
        value: 20,
        title: '20%',
        radius: radius,
        titleStyle: TextStyle(color: Colors.white),
        color: Colors.green,
      ),
      PieChartSectionData(
        value: 25,
        title: '25%',
        radius: radius,
        titleStyle: TextStyle(color: Colors.white),
        color: Colors.orangeAccent,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pie Chart Flutter'),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: PieChart(
                  PieChartData(
                      centerSpaceRadius: 0,
                      borderData: FlBorderData(show: false),
                      sections: getSectionData(MediaQuery.of(context).size.width))),
            ),
          ],
        ),
      ),
    );
  }
}
