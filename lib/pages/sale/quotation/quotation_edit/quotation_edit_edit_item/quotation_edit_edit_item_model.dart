import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'quotation_edit_edit_item_widget.dart' show QuotationEditEditItemWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuotationEditEditItemModel
    extends FlutterFlowModel<QuotationEditEditItemWidget> {
  ///  Local state fields for this component.

  double? subtotal;

  double? taxamount;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Sale Order Line Product Detail)] action in Quotation_Edit_Edit_item widget.
  ApiCallResponse? orderLineProductDataResponse;
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
  String? _quantityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bihwzpg9' /* Field is required */,
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
        '9ieu0c64' /* Field is required */,
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
        'uzr74yxd' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Sale Order Line Product Update)] action in Button widget.
  ApiCallResponse? apiResult5u7;
  // Stores action output result for [Backend Call - API (Sale Order View)] action in Button widget.
  ApiCallResponse? updationDetailForTotal;
  // Stores action output result for [Backend Call - API (Sale Order Line Product Update)] action in Button widget.
  ApiCallResponse? apiResult5u7Copy;
  // Stores action output result for [Backend Call - API (Sale Order View)] action in Button widget.
  ApiCallResponse? updationDetailForTotal2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    quantityControllerValidator = _quantityControllerValidator;
    amountControllerValidator = _amountControllerValidator;
    subtotalControllerValidator = _subtotalControllerValidator;
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
