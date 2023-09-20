import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeaveCreateModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? fromDate = 'dd-MM-yyyy';

  String? toDate = 'dd-MM-yyyy';

  int? days = 0;

  String leavetype = 'leave';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for OptionValues widget.
  String? optionValuesValue;
  FormFieldController<String>? optionValuesValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  // State field(s) for AMorPM widget.
  String? aMorPMValue;
  FormFieldController<String>? aMorPMValueController;
  DateTime? datePicked4;
  // State field(s) for FromHour widget.
  double? fromHourValue;
  FormFieldController<double>? fromHourValueController;
  // State field(s) for ToHour widget.
  double? toHourValue;
  FormFieldController<double>? toHourValueController;
  // State field(s) for Reason widget.
  TextEditingController? reasonController;
  String? Function(BuildContext, String?)? reasonControllerValidator;
  String? _reasonControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'b9egmwly' /* Reason is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (CheckLeaveTaken)] action in Button widget.
  ApiCallResponse? leavecheckRes;
  // Stores action output result for [Backend Call - API (Create Leave)] action in Button widget.
  ApiCallResponse? leavePostResult;
  // Stores action output result for [Backend Call - API (CheckLeaveTaken)] action in Button widget.
  ApiCallResponse? halfLeavecheckRes;
  // Stores action output result for [Backend Call - API (Create Leave)] action in Button widget.
  ApiCallResponse? halfLeavePostResult;
  // Stores action output result for [Backend Call - API (CheckLeaveTaken)] action in Button widget.
  ApiCallResponse? permissioncheckRes;
  // Stores action output result for [Backend Call - API (Create Leave)] action in Button widget.
  ApiCallResponse? permissionPostResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    reasonControllerValidator = _reasonControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    reasonController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
