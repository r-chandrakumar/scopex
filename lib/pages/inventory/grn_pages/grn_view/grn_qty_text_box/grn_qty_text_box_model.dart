import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'grn_qty_text_box_widget.dart' show GrnQtyTextBoxWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GrnQtyTextBoxModel extends FlutterFlowModel<GrnQtyTextBoxWidget> {
  ///  Local state fields for this component.

  dynamic scanres;

  int? serializecount = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (GRN Quantity Update)] action in TextField widget.
  ApiCallResponse? updateGRNCopy;
  // Stores action output result for [Backend Call - API (DC Quantity Update)] action in TextField widget.
  ApiCallResponse? updateDcCopy;
  var scannerRes = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
