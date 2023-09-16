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

import 'dart:async';

class VisitTimeCounter extends StatefulWidget {
  const VisitTimeCounter({
    Key? key,
    this.width,
    this.height,
    this.secondsCurrent,
    this.startTime,
    this.endTime,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int? secondsCurrent;

  final String? startTime;
  final String? endTime;
  @override
  _VisitTimeCounterState createState() => _VisitTimeCounterState();
}

class _VisitTimeCounterState extends State<VisitTimeCounter> {
  Timer? _timer;
  int _counter = 0;
  String worked_hours = '';
  late DateTime startDate;
  late DateTime endDate;

  @override
  void initState() {
    if (widget.secondsCurrent == null || widget.secondsCurrent == 'null') {
      _counter = 0;
    } else {
      _counter = widget.secondsCurrent!;
    }
    super.initState();
    if (widget.endTime == null || widget.endTime == 'null') {
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          _counter++;
        });
      });
    } else {
      if (widget.endTime != null && widget.endTime != 'null')
        startDate = DateTime.parse(widget.startTime!);
      endDate = DateTime.parse(widget.endTime!);
      var difference = endDate.difference(startDate);
      var hours = difference.inHours;
      var minutes = difference.inMinutes - hours * 60;
      var seconds = difference.inSeconds - hours * 3600 - minutes * 60;
      var output =
          '${hours.toString().padLeft(2, '0')}h ${minutes.toString().padLeft(2, '0')}m ${seconds.toString().padLeft(2, '0')}s';

      print(output); // output: 31 h 20 m

      setState(() {
        worked_hours = output;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int hours = _counter ~/ 3600 * 24;
    int minutes = (_counter % 3600) ~/ 60;
    int seconds = _counter % 60;

    String hoursStr = (hours % 24).toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');
    if (widget.endTime == null || widget.endTime == 'null') {
      return Text('${hoursStr}h ${minutesStr}m ${secondsStr}s',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ));
    } else {
      return Text(worked_hours,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ));
    }
  }
}
