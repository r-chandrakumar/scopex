// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:in_app_update/in_app_update.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
Future inAppUpdateRequest() async {
  // Add your function code here!
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  void showSnack(String text) {
    if (_scaffoldKey.currentContext != null) {
      ScaffoldMessenger.of(_scaffoldKey.currentContext!)
          .showSnackBar(SnackBar(content: Text(text)));
    }
  }

  InAppUpdate.checkForUpdate().then((info) {
    InAppUpdate.performImmediateUpdate().catchError((e) {
      showSnack(e.toString());
      return AppUpdateResult.inAppUpdateFailed;
    });
  }).catchError((e) {
    showSnack(e.toString());
  });
}
