// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

import 'package:hasura_connect/hasura_connect.dart';

Future notificationSubscription() async {
  // Add your function code here!
  print('notificationSubscription');
  String domainUrl = FFAppState().DomainUrl;
  String authtoken = FFAppState().accessToken;
  if (authtoken != "" || authtoken != 'null') {
    String url = 'https://$domainUrl/v1/graphql';
    HasuraConnect hasuraConnect = HasuraConnect(url, headers: {
      "Authorization": "Bearer $authtoken",
      // Add any other headers if needed
    });
    String docSubscription = """
        subscription notificationSubscription {
        notification_list_aggregate(where: {read_status: {_eq: "un_read"}}) {
          aggregate {
          count(columns: id)
          }
        }
      }
      """;

    Snapshot snapshot = await hasuraConnect.subscription(docSubscription);
    snapshot.listen((data) {
      print(data["data"]['notification_list_aggregate']['aggregate']['count']);
      FFAppState().notificationCount =
          data["data"]['notification_list_aggregate']['aggregate']['count'];
    }).onError((err) {
      print(err);
    });
  }
//change values of variables for PAGINATIONS
}
