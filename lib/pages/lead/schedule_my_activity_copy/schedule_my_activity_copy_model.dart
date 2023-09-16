import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduleMyActivityCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for lead widget.
  String? leadValue;
  FormFieldController<String>? leadValueController;
  // State field(s) for activitytype widget.
  String? activitytypeValue1;
  FormFieldController<String>? activitytypeValueController1;
  // State field(s) for activitytype widget.
  String? activitytypeValue2;
  FormFieldController<String>? activitytypeValueController2;
  DateTime? datePicked;
  // State field(s) for summary widget.
  TextEditingController? summaryController;
  String? Function(BuildContext, String?)? summaryControllerValidator;
  // Stores action output result for [Backend Call - API (Get Model Id)] action in Button widget.
  ApiCallResponse? modelid;
  // Stores action output result for [Backend Call - API (My Activity Create)] action in Button widget.
  ApiCallResponse? activitycreate;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    summaryController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
