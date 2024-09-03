import 'package:flutter/material.dart';

//added by Hock
import 'dart:io';
import 'dart:async';
import 'package:syncfusion_flutter_charts/charts.dart';
class GraphGlucose extends StatefulWidget {
  const GraphGlucose({Key? key}) : super(key: key);
  @override
  _GraphGlucose createState() =>
      _GraphGlucose();
}
class _GraphGlucose extends State<GraphGlucose> {
  late List<PastGlucoseLevels> _chartData;
  @override
  void initState(){
    _chartData = getChartData();
    super.initState();
  }


  @override
    Widget build(BuildContext context) {
      //var chart;// auto created
      return SafeArea(child: Scaffold(
        body: SfCartesianChart(
          title: ChartTitle(text: 'Glucose Levels',),
          series: <ChartSeries>[
          LineSeries<PastGlucoseLevels, double>(
            //Add back groud colors as the layers 
            name: 'Hours Ago',
          dataSource: _chartData,
          xValueMapper: (PastGlucoseLevels hoursAgo, _) => hoursAgo.hoursAgo,
          yValueMapper: (PastGlucoseLevels hoursAgo, _) => hoursAgo.level,
          dataLabelSettings: DataLabelSettings(isVisible: true)  
          )
          
        ],
        primaryXAxis: NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
        ),
      ),
      );
    }
    List<PastGlucoseLevels>getChartData() {
       final List<PastGlucoseLevels> chartData = [
        PastGlucoseLevels(1,90),
        PastGlucoseLevels(5,95),
        PastGlucoseLevels(10,80),
        PastGlucoseLevels(15,105),
        PastGlucoseLevels(20,100),
      ];
        return chartData;
      }
}
class PastGlucoseLevels{
 PastGlucoseLevels(this.hoursAgo, this.level);
  final double hoursAgo;
  final double level;
}
Future<double> readData() async {
  double value;
  try {
    final File file = File('C:/DiaFriend-1.0/lib/save_glucose_level_screen/saveGlucose.txt');
    value = (await file.readAsString()) as double;
    //sFile('C:/DiaFriend-1.0/lib/save_glucose_level_screen/saveGlucose.txt').readAsLines;
  } catch (e) {// If encountering an error, return 0
    return 0;
  }
    return value;
}