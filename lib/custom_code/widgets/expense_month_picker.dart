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

import 'package:month_year_picker/month_year_picker.dart';

class ExpenseMonthPicker extends StatefulWidget {
  const ExpenseMonthPicker({
    Key? key,
    this.width,
    this.height,
    this.currentmonthyear,
  }) : super(key: key);

  final double? width;
  final double? height;
  final DateTime? currentmonthyear;

  @override
  _ExpenseMonthPickerState createState() => _ExpenseMonthPickerState();
}

class _ExpenseMonthPickerState extends State<ExpenseMonthPicker> {
  @override
  Widget build(BuildContext context) {
    return Text('No month year selected.');
  }
}

Future<void> _onPressed({
  required BuildContext context,
  String? locale,
  DateTime? currentmonthyear,
}) async {
  final localeObj = locale != null ? Locale(locale) : null;
  final selected = await showMonthYearPicker(
    context: context,
    initialDate: currentmonthyear ?? DateTime.now(),
    firstDate: DateTime(2019),
    lastDate: DateTime(2030),
    locale: localeObj,
  );

  if (selected != null) {
    currentmonthyear = selected;
  }
}
