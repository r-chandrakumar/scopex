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

class VendorBillEditEditItemModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  double? subtotal;

  double? taxamount;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Accounting Line Product Details)] action in VendorBill_Edit_Edit_item widget.
  ApiCallResponse? moveLineInvoiceDetailRes;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for productname widget.
  TextEditingController? productnameController;
  String? Function(BuildContext, String?)? productnameControllerValidator;
  // State field(s) for productdescription widget.
  TextEditingController? productdescriptionController;
  String? Function(BuildContext, String?)?
      productdescriptionControllerValidator;
  // State field(s) for quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  // State field(s) for unit widget.
  TextEditingController? unitController;
  String? Function(BuildContext, String?)? unitControllerValidator;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // State field(s) for subtotal widget.
  TextEditingController? subtotalController;
  String? Function(BuildContext, String?)? subtotalControllerValidator;
  // Stores action output result for [Backend Call - API (Accounting Line Product Update)] action in Button widget.
  ApiCallResponse? apiResult5u7;
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
  }

  void dispose() {
    backButttonComponentModel.dispose();
    productnameController?.dispose();
    productdescriptionController?.dispose();
    quantityController?.dispose();
    unitController?.dispose();
    amountController?.dispose();
    subtotalController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
