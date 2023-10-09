// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;

Future<bool> share(String? url, String name) async {
  if (url == null || url == 'null' || url == '') {
    return false;
  }
  XFile file;
  try {
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;
    final extension = response.headers['content-type']!.split('/').last;
    final name2 = name + '.' + extension;
    final dir = await getTemporaryDirectory();
    file = XFile('${dir.path}/$name2');
    await File(file.path).writeAsBytes(bytes);
  } catch (e) {
    return false;
  }
  final result = await Share.shareXFiles([XFile(file.path)]);

  if (result.status == ShareResultStatus.success) {
    return true;
  }
  return false;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
