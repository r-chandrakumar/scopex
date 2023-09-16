// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/backend.dart';
import 'index.dart'; // Imports other custom widgets

import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  const BarChart({
    Key? key,
    this.width,
    this.height,
    this.dateWise,
    this.amountWise,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String>? dateWise;
  final List<double>? amountWise;

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = <_ChartData>[
      for (int i = 0; i < widget.dateWise!.length; i++)
        _ChartData(widget.dateWise![i], widget.amountWise![i])
    ];

    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(),
        tooltipBehavior: _tooltip,
        series: <ChartSeries<_ChartData, String>>[
          ColumnSeries<_ChartData, String>(
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
              name: 'Amount',
              color: Color.fromRGBO(8, 142, 255, 1))
        ]);
  }
}

class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double y;
}
