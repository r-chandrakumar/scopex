import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pick_view_edit_page_widget.dart' show PickViewEditPageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PickViewEditPageModel extends FlutterFlowModel<PickViewEditPageWidget> {
  ///  Local state fields for this component.

  bool validqty = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  // Stores action output result for [Backend Call - API (GRN Quantity Update)] action in Button widget.
  ApiCallResponse? update;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    quantityController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
