import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/tax_files/tax_component/tax_component_widget.dart';
import '/tax_files/tax_select_component/tax_select_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorBillEditAddItemModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Product Detail)] action in VendorBill_Edit_Add_item widget.
  ApiCallResponse? productDetailResponse;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for ProductName widget.
  TextEditingController? productNameController;
  String? Function(BuildContext, String?)? productNameControllerValidator;
  // State field(s) for productdescription widget.
  TextEditingController? productdescriptionController;
  String? Function(BuildContext, String?)?
      productdescriptionControllerValidator;
  // State field(s) for quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  String? _quantityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hkgzg6gw' /* Quantity  is required */,
      );
    }

    return null;
  }

  // State field(s) for unit widget.
  TextEditingController? unitController;
  String? Function(BuildContext, String?)? unitControllerValidator;
  // Model for TaxComponent component.
  late TaxComponentModel taxComponentModel;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  String? _amountControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '25v5qza6' /* Amount is required */,
      );
    }

    return null;
  }

  // State field(s) for subtotal widget.
  TextEditingController? subtotalController;
  String? Function(BuildContext, String?)? subtotalControllerValidator;
  String? _subtotalControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fdql35k9' /* Subtotal is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Accounting Line Product Post)] action in Button widget.
  ApiCallResponse? vendorBillLinePost1;
  // Stores action output result for [Backend Call - API (Invoice View)] action in Button widget.
  ApiCallResponse? updationDetailForTotalSave1;
  // Stores action output result for [Backend Call - API (Accounting Line Product Post)] action in Button widget.
  ApiCallResponse? vendorBillLinePost2;
  // Stores action output result for [Backend Call - API (Invoice View)] action in Button widget.
  ApiCallResponse? updationDetailForTotalSaveandNew1;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    quantityControllerValidator = _quantityControllerValidator;
    taxComponentModel = createModel(context, () => TaxComponentModel());
    amountControllerValidator = _amountControllerValidator;
    subtotalControllerValidator = _subtotalControllerValidator;
  }

  void dispose() {
    backButttonComponentModel.dispose();
    productNameController?.dispose();
    productdescriptionController?.dispose();
    quantityController?.dispose();
    unitController?.dispose();
    taxComponentModel.dispose();
    amountController?.dispose();
    subtotalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
