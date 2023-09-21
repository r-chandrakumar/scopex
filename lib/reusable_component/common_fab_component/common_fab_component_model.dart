import '/backend/api_requests/api_calls.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/accounting/invoice_pagess/invoice_conversion/invoice_conversion_widget.dart';
import '/pages/lead/lead_assign_user/lead_assign_user_widget.dart';
import '/pages/lead/lead_pages/lead_view/changelead/changelead_widget.dart';
import '/reusable_component/f_a_b_empty_component_shimmer/f_a_b_empty_component_shimmer_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class CommonFabComponentModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  int? id;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Sale Email)] action in Row widget.
  ApiCallResponse? saleEmailResult;
  // Stores action output result for [Backend Call - API (Sale Order Delete)] action in Row widget.
  ApiCallResponse? deleteconfirmCopy;
  // Stores action output result for [Backend Call - API (Convert To Sale Order)] action in Row widget.
  ApiCallResponse? convertResponse;
  // Stores action output result for [Backend Call - API (Convert To Sale Order)] action in Row widget.
  ApiCallResponse? convertQuoteDraftResponse;
  // Stores action output result for [Backend Call - API (Convert To Sale Order)] action in Row widget.
  ApiCallResponse? cancelQuoteResponse;
  // Stores action output result for [Backend Call - API (Sale Invoice Conversion)] action in Row widget.
  ApiCallResponse? saleOrderConversion;
  // Stores action output result for [Backend Call - API (Purchase Email)] action in Row widget.
  ApiCallResponse? purchaseEmail;
  // Stores action output result for [Backend Call - API (Purchase Order Delete)] action in Row widget.
  ApiCallResponse? purchaserfqdelete;
  // Stores action output result for [Backend Call - API (Convert to Purchase Order)] action in Row widget.
  ApiCallResponse? purchaseConvertResponseCopy;
  // Stores action output result for [Backend Call - API (Convert to Purchase Order)] action in Row widget.
  ApiCallResponse? purchaseConverttoDraftResponse;
  // Stores action output result for [Backend Call - API (Convert to Purchase Order)] action in Row widget.
  ApiCallResponse? purchaseConverttoDraftResponseCopy;
  // Stores action output result for [Backend Call - API (Purchase Bill Conversion)] action in Row widget.
  ApiCallResponse? purchaseOrderConversion;
  // Stores action output result for [Backend Call - API (Delivery Challan View)] action in Row widget.
  ApiCallResponse? dcviewres;
  // Stores action output result for [Backend Call - API (GRN Status Update)] action in Row widget.
  ApiCallResponse? statusUpdateRes;
  // Stores action output result for [Backend Call - API (Grn View)] action in Row widget.
  ApiCallResponse? gRNviewres;
  // Stores action output result for [Backend Call - API (GRN Status Update)] action in Row widget.
  ApiCallResponse? statusUpdateRes1;
  // Stores action output result for [Backend Call - API (Invoice Email)] action in Row widget.
  ApiCallResponse? invoiceEmail;
  // Stores action output result for [Backend Call - API (Invoice Delete)] action in Row widget.
  ApiCallResponse? invoicedeleteconfirmCopy;
  // Stores action output result for [Backend Call - API (Convert to Invoice)] action in Row widget.
  ApiCallResponse? icCopy;
  // Stores action output result for [Backend Call - API (Convert to Invoice)] action in Row widget.
  ApiCallResponse? invoiceConverttoDraftRes;
  // Stores action output result for [Backend Call - API (Convert to Invoice)] action in Row widget.
  ApiCallResponse? cancelInvoiceRes;
  // Stores action output result for [Backend Call - API (Vendor Bill Delete)] action in Row widget.
  ApiCallResponse? vendordeleteconfirm;
  // Stores action output result for [Backend Call - API (Convert to Invoice)] action in Row widget.
  ApiCallResponse? invoiceConvertResponseCopy;
  // Stores action output result for [Backend Call - API (Convert to Invoice)] action in Row widget.
  ApiCallResponse? vendorbillConverttoDraftRes;
  // Stores action output result for [Backend Call - API (Convert to Invoice)] action in Row widget.
  ApiCallResponse? vendorbillConverttoCancelRes;
  var gRNscanResult = '';
  // Stores action output result for [Backend Call - API (Grn View)] action in Row widget.
  ApiCallResponse? grnDataExists;
  // Stores action output result for [Backend Call - API (Convert Opportunity)] action in Row widget.
  ApiCallResponse? convertLeadCopy;
  // Stores action output result for [Backend Call - API (Crm View)] action in Row widget.
  ApiCallResponse? leadtoOpportunity;
  // Stores action output result for [Backend Call - API (Contacts Create)] action in Row widget.
  ApiCallResponse? apiResulthn8;
  // Stores action output result for [Backend Call - API (Crm View)] action in Row widget.
  ApiCallResponse? leadViewRes;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
