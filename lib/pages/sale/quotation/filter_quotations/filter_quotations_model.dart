import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'filter_quotations_widget.dart' show FilterQuotationsWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterQuotationsModel extends FlutterFlowModel<FilterQuotationsWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  // State field(s) for FromDate widget.
  TextEditingController? fromDateController;
  String? Function(BuildContext, String?)? fromDateControllerValidator;
  // State field(s) for EndDate widget.
  TextEditingController? endDateController;
  String? Function(BuildContext, String?)? endDateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    fromDateController?.dispose();
    endDateController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
