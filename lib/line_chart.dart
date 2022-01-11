import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartKetiga extends StatefulWidget {
  const ChartKetiga({Key? key}) : super(key: key);

  @override
  _ChartKetigaState createState() => _ChartKetigaState();
}

class _ChartKetigaState extends State<ChartKetiga> {
  List<LineChartBarData> lineChartBarData = [
    LineChartBarData(
        isCurved: true,
        spots: [
          FlSpot(1, 10),
          FlSpot(2, 12),
          FlSpot(3, 10),
          FlSpot(4, 7),
          FlSpot(5, 8),
          FlSpot(6, 10),
        ]
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Chart Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                child: LineChart(
                  LineChartData(
                    minX: 1,
                    minY: 0,
                    maxX: 6,
                    maxY: 15,
                    lineBarsData: lineChartBarData,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
