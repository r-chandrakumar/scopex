import '/backend/api_requests/api_calls.dart';
import '/components/menu_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for menuComponent component.
  late MenuComponentModel menuComponentModel;
  // State field(s) for Companylistdropdown widget.
  String? companylistdropdownValue;
  FormFieldController<String>? companylistdropdownValueController;
  // Stores action output result for [Backend Call - API (Company Login)] action in Companylistdropdown widget.
  ApiCallResponse? companylogin;
  // State field(s) for InitialMonth widget.
  int? initialMonthValue;
  FormFieldController<int>? initialMonthValueController;
  // State field(s) for lowStock widget.
  TextEditingController? lowStockController;
  String? Function(BuildContext, String?)? lowStockControllerValidator;
  // State field(s) for mediumStock widget.
  TextEditingController? mediumStockController;
  String? Function(BuildContext, String?)? mediumStockControllerValidator;
  // State field(s) for defaultLimt widget.
  TextEditingController? defaultLimtController;
  String? Function(BuildContext, String?)? defaultLimtControllerValidator;
  // State field(s) for inventory widget.
  String? inventoryValue;
  FormFieldController<String>? inventoryValueController;
  // State field(s) for grn widget.
  String? grnValue;
  FormFieldController<String>? grnValueController;
  // State field(s) for dChallan widget.
  String? dChallanValue;
  FormFieldController<String>? dChallanValueController;
  // State field(s) for deliveryChallan widget.
  String? deliveryChallanValue;
  FormFieldController<String>? deliveryChallanValueController;
  // State field(s) for quotation widget.
  String? quotationValue;
  FormFieldController<String>? quotationValueController;
  // State field(s) for sale widget.
  String? saleValue;
  FormFieldController<String>? saleValueController;
  // State field(s) for purchase widget.
  String? purchaseValue;
  FormFieldController<String>? purchaseValueController;
  // State field(s) for rfq widget.
  String? rfqValue;
  FormFieldController<String>? rfqValueController;
  // State field(s) for invoice widget.
  String? invoiceValue;
  FormFieldController<String>? invoiceValueController;
  // State field(s) for vendorBill widget.
  String? vendorBillValue;
  FormFieldController<String>? vendorBillValueController;
  // State field(s) for payment widget.
  String? paymentValue;
  FormFieldController<String>? paymentValueController;
  // State field(s) for contact widget.
  String? contactValue;
  FormFieldController<String>? contactValueController;
  // State field(s) for expenses widget.
  String? expensesValue;
  FormFieldController<String>? expensesValueController;
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuComponentModel = createModel(context, () => MenuComponentModel());
    sideBarNewModel = createModel(context, () => SideBarNewModel());
  }

  void dispose() {
    menuComponentModel.dispose();
    lowStockController?.dispose();
    mediumStockController?.dispose();
    defaultLimtController?.dispose();
    sideBarNewModel.dispose();
  }

  /// Action blocks are added here.

  Future updatesetting(
    BuildContext context, {
    String? key,
    String? value,
  }) async {
    await CommonApisGroupGroup.settingsCall.call(
      authToken: FFAppState().accessToken,
      domainUrl: FFAppState().DomainUrl,
      name: key,
      value: value,
    );
  }

  /// Additional helper methods are added here.
}
