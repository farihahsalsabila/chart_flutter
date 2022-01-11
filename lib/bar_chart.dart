import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPertama extends StatefulWidget {
  const ChartPertama({Key? key}) : super(key: key);

  @override
  _ChartPertamaState createState() => _ChartPertamaState();
}

class _ChartPertamaState extends State<ChartPertama> {
  List<BarChartGroupData> barChartGroupData = [
    BarChartGroupData(x: 1, barRods: [
      BarChartRodData(y: 5.5, colors: [Colors.black]),
    ]),
    BarChartGroupData(x: 2, barRods: [
      BarChartRodData(y: 12, colors: [Colors.black]),
    ]),
    BarChartGroupData(x: 3, barRods: [
      BarChartRodData(y: 8, colors: [Colors.black]),
    ]),
    BarChartGroupData(x: 4, barRods: [
      BarChartRodData(y: 11.4, colors: [Colors.black]),
    ]),
    BarChartGroupData(x: 5, barRods: [
      BarChartRodData(y: 5, colors: [Colors.black]),
    ]),
    BarChartGroupData(x: 6, barRods: [
      BarChartRodData(y: 14, colors: [Colors.black]),
    ]),
    BarChartGroupData(x: 7, barRods: [
      BarChartRodData(y: 10.5, colors: [Colors.black]),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Chart Flutter'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: BarChart(BarChartData(
                  titlesData: FlTitlesData(
                    topTitles: SideTitles(showTitles: false),
                    rightTitles: SideTitles(showTitles: false),
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 1:
                            return 'Mon';
                          case 2:
                            return 'Tues';
                          case 3:
                            return 'Wed';
                          case 4:
                            return 'Thu';
                          case 5:
                            return 'Fri';
                          case 6:
                            return 'Sat';
                          case 7:
                            return 'Sun';
                        }
                        return '';
                      },
                    ),
                    leftTitles: SideTitles(
                      interval: 4,
                      showTitles: true,
                      getTitles: (value) {
                        if (value.toInt() == 0)
                          return '';
                        else
                          return value.toInt().toString();
                      },
                    ),
                  ),
                  maxY: 16,
                  borderData: FlBorderData(show: false,),
                  barGroups: barChartGroupData,
                )))
          ],
        ),
      ),
    );
  }
}
