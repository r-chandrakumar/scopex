// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert'; // for base64 encoding

Future<String> uploadFileTobase64(FFUploadedFile? uploadedFile) async {
  // Add your function code here!
  // Convert the BlurHash string to Uint8List
  if (uploadedFile == null) {
    return "";
  }

  List<int> bytes = await uploadedFile.bytes!.toList();
  // Convert bytes to base64 string
  String base64String = base64Encode(bytes);
  print(base64String);
  return base64String;
}
