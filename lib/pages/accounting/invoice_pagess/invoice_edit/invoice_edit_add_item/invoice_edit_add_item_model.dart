import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/tax_files/tax_component/tax_component_widget.dart';
import '/tax_files/tax_select_component/tax_select_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'invoice_edit_add_item_widget.dart' show InvoiceEditAddItemWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InvoiceEditAddItemModel
    extends FlutterFlowModel<InvoiceEditAddItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Product Detail)] action in Invoice_Edit_Add_item widget.
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
  // State field(s) for unit widget.
  TextEditingController? unitController;
  String? Function(BuildContext, String?)? unitControllerValidator;
  // Model for TaxComponent component.
  late TaxComponentModel taxComponentModel;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  // State field(s) for subtotal widget.
  TextEditingController? subtotalController;
  String? Function(BuildContext, String?)? subtotalControllerValidator;
  // Stores action output result for [Backend Call - API (Accounting Line Product Post)] action in Button widget.
  ApiCallResponse? invoiceLinePost1;
  // Stores action output result for [Backend Call - API (Invoice View)] action in Button widget.
  ApiCallResponse? updationDetailForTotalSave1;
  // Stores action output result for [Backend Call - API (Accounting Line Product Post)] action in Button widget.
  ApiCallResponse? invoiceLinePost2;
  // Stores action output result for [Backend Call - API (Invoice View)] action in Button widget.
  ApiCallResponse? updationDetailForTotalSaveandNew1;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    taxComponentModel = createModel(context, () => TaxComponentModel());
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
