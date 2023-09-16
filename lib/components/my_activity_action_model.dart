import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/schedule_activity_edit/schedule_activity_edit_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyActivityActionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (ActivityMarkAsDone)] action in option widget.
  ApiCallResponse? markdoneRes;
  // Stores action output result for [Backend Call - API (Activitydelete)] action in option widget.
  ApiCallResponse? deleteActivity;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
