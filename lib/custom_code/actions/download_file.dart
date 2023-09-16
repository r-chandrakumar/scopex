// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:path_provider/path_provider.dart';

import 'package:http/http.dart' as http;
import 'dart:io';

Future<void> downloadFile(int? serviceid) async {
  // Download pdf from url and save locally
  if (serviceid != null) {
    var url =
        'https://fieldservice.mo.vc/web/image?model=fsm.order&id=$serviceid&field=report_attachment';
    try {
      var response = await http.get(Uri.parse(url));
      var filePath = await _localPath();
      var file = File('$filePath/example.pdf');
      await file.writeAsBytes(response.bodyBytes);
    } catch (e) {
      print(e.toString());
    }
  }
}

Future<String> _localPath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}
