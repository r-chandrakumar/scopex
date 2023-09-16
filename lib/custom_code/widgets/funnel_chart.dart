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

import 'package:syncfusion_flutter_charts/charts.dart';

class FunnelChart extends StatefulWidget {
  const FunnelChart({
    Key? key,
    this.width,
    this.height,
    required this.labelname,
    required this.value,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> labelname;
  final List<double> value;

  @override
  _FunnelChartState createState() => _FunnelChartState();
}

class _FunnelChartState extends State<FunnelChart> {
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.value.length; i++) {
      for (var j = i + 1; j < widget.value.length; j++) {
        if (widget.value[i] < widget.value[j]) {
          var temp = widget.value[i];
          widget.value[i] = widget.value[j];
          widget.value[j] = temp;
          var temp2 = widget.labelname[i];
          widget.labelname[i] = widget.labelname[j];
          widget.labelname[j] = temp2;
        }
      }
    }

    List<ChartData> chartData = [];
    for (var i = 0; i < widget.labelname.length; i++) {
      chartData.add(ChartData(widget.labelname[i], (widget.value[i])));
    }
    return Center(
        child: Container(
            child: SfFunnelChart(
                legend: Legend(isVisible: true),
                series: FunnelSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    // Render the data label
                    dataLabelSettings: DataLabelSettings(isVisible: true)))));
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
