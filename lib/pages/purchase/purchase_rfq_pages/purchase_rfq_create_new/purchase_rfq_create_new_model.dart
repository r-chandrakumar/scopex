import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reusable_component/common_create_product_search/common_create_product_search_widget.dart';
import '/reusable_component/create_product_items/create_product_items_widget.dart';
import '/search_components/supplier_search_component/supplier_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'purchase_rfq_create_new_widget.dart' show PurchaseRfqCreateNewWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PurchaseRfqCreateNewModel
    extends FlutterFlowModel<PurchaseRfqCreateNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PaymentTerms widget.
  String? paymentTermsValue;
  FormFieldController<String>? paymentTermsValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for CreateProductItems component.
  late CreateProductItemsModel createProductItemsModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Purchase Order Create)] action in SubmitButton widget.
  ApiCallResponse? purchaseRfqCreateResult;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    createProductItemsModel =
        createModel(context, () => CreateProductItemsModel());
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    createProductItemsModel.dispose();
    textController?.dispose();
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
