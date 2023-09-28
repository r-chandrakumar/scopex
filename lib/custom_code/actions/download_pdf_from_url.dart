// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:open_file/open_file.dart';

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:external_path/external_path.dart';
import 'package:path_provider/path_provider.dart';

Future<bool> downloadPdfFromUrl(
  BuildContext context,
  String? url,
  String? filename,
) async {
  final status = await Permission.storage.request();
  if (status == PermissionStatus.granted) {
    var targetPath;
    var targetFileName = filename;

    if (Platform.isIOS) {
      var target = await getApplicationDocumentsDirectory();
      targetPath = target.path.toString();
    } else {
      targetPath = '/storage/emulated/0/Download';
      if (!await Directory(targetPath).exists()) {
        targetPath = await getExternalStorageDirectory();
      }
    }
    //   show snackbar
    // download progress dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Downloading...'),
        content: LinearProgressIndicator(),
      ),
    );
    print(targetPath);
    var filepath = '$targetPath/$targetFileName';
    File fileDef = File(filepath);
    await fileDef.create(recursive: true);
    final response = await http.get(Uri.parse(url!));
    // Set up a stream listener to track download progress
    await fileDef.writeAsBytes(response.bodyBytes);
    print('File saved to $filepath');
    // progress dialog close
    Navigator.of(context, rootNavigator: true).pop();

    // if response is 200 then show download complete dialog
    if (response.statusCode == 200) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Download Complete'),
          content: Text('File Downloaded'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Text('OK'),
            ),
            // open file button
          ],
        ),
      );
    } else {
      // if response is not 200 then show error
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Error in downloading file'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  } else if (status == PermissionStatus.permanentlyDenied) {
    openAppSettings();
  } else {
    print('Permission denied');
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Error'),
        content: Text('Permission denied'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
  return true;
}
