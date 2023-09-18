// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:hasura_connect/hasura_connect.dart';

Future attendanceSubscription(BuildContext context) async {
  // Add your function code here!
  String domainUrl = FFAppState().DomainUrl;
  String url = 'https://$domainUrl/v1/graphql';
  HasuraConnect hasuraConnect = HasuraConnect(url);
  String docSubscription = """
    subscription attendanceSubscription {
      hr_attendance(order_by: {id: desc}, where: {check_out: {_is_null: true}}) {
        check_in
        check_out
        id
      }
    }
""";

  Snapshot snapshot = await hasuraConnect.subscription(docSubscription);
  snapshot.listen((data) {
    print(data);
  }).onError((err) {
    print(err);
  });

//change values of variables for PAGINATIONS
}
