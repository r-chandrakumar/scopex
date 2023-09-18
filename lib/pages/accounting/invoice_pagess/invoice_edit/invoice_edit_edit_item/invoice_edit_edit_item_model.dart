import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InvoiceEditEditItemModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  double? subtotal;

  double? taxamount;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Accounting Line Product Details)] action in Invoice_Edit_Edit_item widget.
  ApiCallResponse? moveLineInvoiceDetailRes;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for productName widget.
  TextEditingController? productNameController;
  String? Function(BuildContext, String?)? productNameControllerValidator;
  // State field(s) for description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  String? _quantityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1p297d3p' /* Quantity is required */,
      );
    }

    return null;
  }

  // State field(s) for unit widget.
  TextEditingController? unitController;
  String? Function(BuildContext, String?)? unitControllerValidator;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  String? _amountControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rcuqf4f3' /* Amount is required */,
      );
    }

    return null;
  }

  // State field(s) for subtotal widget.
  TextEditingController? subtotalController;
  String? Function(BuildContext, String?)? subtotalControllerValidator;
  // Stores action output result for [Backend Call - API (Accounting Line Product Update)] action in Button widget.
  ApiCallResponse? accountLineItemUpdate;
  // Stores action output result for [Backend Call - API (Invoice View)] action in Button widget.
  ApiCallResponse? updationDetailForTotalEdit;
  // Stores action output result for [Backend Call - API (Accounting Line Product Update)] action in Button widget.
  ApiCallResponse? invoiceUpdate2;
  // Stores action output result for [Backend Call - API (Invoice View)] action in Button widget.
  ApiCallResponse? updationDetailForTotalEdit2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    quantityControllerValidator = _quantityControllerValidator;
    amountControllerValidator = _amountControllerValidator;
  }

  void dispose() {
    backButttonComponentModel.dispose();
    productNameController?.dispose();
    descriptionController?.dispose();
    quantityController?.dispose();
    unitController?.dispose();
    amountController?.dispose();
    subtotalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
