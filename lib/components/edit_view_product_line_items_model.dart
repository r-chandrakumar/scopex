import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/accounting/invoice_pagess/invoice_edit/invoice_edit_edit_item/invoice_edit_edit_item_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_edit/vendor_bill_edit_edit_item/vendor_bill_edit_edit_item_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_edit/r_f_q_edit_edit_item/r_f_q_edit_edit_item_widget.dart';
import '/pages/sale/quotation/quotation_edit/quotation_edit_edit_item/quotation_edit_edit_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditViewProductLineItemsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Purchase Order Line Product Delete)] action in Icon widget.
  ApiCallResponse? deleteRfqRes;
  // Stores action output result for [Backend Call - API (Purchase Order View)] action in Icon widget.
  ApiCallResponse? deleteRfqLineRes;
  // Stores action output result for [Backend Call - API (Sale Order Line Product Delete)] action in Icon widget.
  ApiCallResponse? deleteQuoteRes;
  // Stores action output result for [Backend Call - API (Sale Order View)] action in Icon widget.
  ApiCallResponse? deleteViewRes;
  // Stores action output result for [Backend Call - API (Accounting Line Product Delete)] action in Icon widget.
  ApiCallResponse? deleteInvoiceRes;
  // Stores action output result for [Backend Call - API (Invoice View)] action in Icon widget.
  ApiCallResponse? deleteInvoLineRes;
  // Stores action output result for [Backend Call - API (Accounting Line Product Delete)] action in Icon widget.
  ApiCallResponse? deleteVendorbillRes;
  // Stores action output result for [Backend Call - API (Vendor Bill View)] action in Icon widget.
  ApiCallResponse? deleteVendorbillLineRes;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
