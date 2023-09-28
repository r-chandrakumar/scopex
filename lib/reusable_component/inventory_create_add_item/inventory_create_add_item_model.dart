import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/common_create_product_search/common_create_product_search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'inventory_create_add_item_widget.dart'
    show InventoryCreateAddItemWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryCreateAddItemModel
    extends FlutterFlowModel<InventoryCreateAddItemWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Product Detail)] action in Inventory_Create_Add_item widget.
  ApiCallResponse? productDetailResponse;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for ProductName widget.
  TextEditingController? productNameController;
  String? Function(BuildContext, String?)? productNameControllerValidator;
  // State field(s) for quantity widget.
  TextEditingController? quantityController;
  String? Function(BuildContext, String?)? quantityControllerValidator;
  // State field(s) for unit widget.
  TextEditingController? unitController;
  String? Function(BuildContext, String?)? unitControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    backButttonComponentModel.dispose();
    productNameController?.dispose();
    quantityController?.dispose();
    unitController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
