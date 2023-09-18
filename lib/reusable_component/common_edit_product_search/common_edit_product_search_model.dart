import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/accounting/invoice_pagess/invoice_edit/invoice_edit_add_item/invoice_edit_add_item_widget.dart';
import '/pages/accounting/invoice_pagess/invoice_edit/invoice_edit_edit_item/invoice_edit_edit_item_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_bill_edit_add_item/vendor_bill_edit_add_item_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_edit/vendor_bill_edit_edit_item/vendor_bill_edit_edit_item_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_edit/r_f_q_edit_add_item/r_f_q_edit_add_item_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_edit/r_f_q_edit_edit_item/r_f_q_edit_edit_item_widget.dart';
import '/pages/sale/quotation/quotation_edit/quotation_edit_add_item/quotation_edit_add_item_widget.dart';
import '/pages/sale/quotation/quotation_edit/quotation_edit_edit_item/quotation_edit_edit_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CommonEditProductSearchModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
