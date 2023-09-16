// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;
import 'package:http/http.dart' as http;

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../flutter_flow/lat_lng.dart';
import '../../flutter_flow/place.dart';
import '../../flutter_flow/custom_functions.dart';
import '../../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

bool ifAccessoriesExist(
  int? accessoriesId,
  int? serviceId,
) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  Future<dynamic> ifAccessoriesAdded1() async {
    final response = await http.get(Uri.parse(
        'https://canligraphql.mo.vc/api/rest/accessories_lines?_eq=${accessoriesId}&_eq1=${serviceId}'));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      return Future<dynamic>.value(result.product_accessories_line.length);
    }
  }

  dynamic response = ifAccessoriesAdded1();
  if (response == 0) {
    return false;
  } else {
    return true;
  }

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
