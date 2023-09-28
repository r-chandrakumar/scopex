import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'refuse_leave_widget.dart' show RefuseLeaveWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RefuseLeaveModel extends FlutterFlowModel<RefuseLeaveWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for refusenote widget.
  TextEditingController? refusenoteController;
  String? Function(BuildContext, String?)? refusenoteControllerValidator;
  String? _refusenoteControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2ul1775l' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Leave Aprove or Reject)] action in Button widget.
  ApiCallResponse? refuseLeaveRes;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    refusenoteControllerValidator = _refusenoteControllerValidator;
  }

  void dispose() {
    refusenoteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
