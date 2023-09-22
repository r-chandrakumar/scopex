import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/reusable_component/edit_view_product_line_items/edit_view_product_line_items_widget.dart';
import '/search_components/customer_search_component/customer_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuotationEditPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Sale Order View)] action in quotation_edit_page widget.
  ApiCallResponse? saleViewRes;
  // Stores action output result for [Backend Call - API (Get Customer Details)] action in quotation_edit_page widget.
  ApiCallResponse? partnerDetailResponse;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for paymentterms widget.
  String? paymenttermsValue;
  FormFieldController<String>? paymenttermsValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for EditViewProductLineItems component.
  late EditViewProductLineItemsModel editViewProductLineItemsModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Sale Order Update)] action in Button widget.
  ApiCallResponse? saleorderupdateresponse;

  /// Query cache managers for this widget.

  final _testManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> test({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _testManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTestCache() => _testManager.clear();
  void clearTestCacheKey(String? uniqueKey) =>
      _testManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    editViewProductLineItemsModel =
        createModel(context, () => EditViewProductLineItemsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    editViewProductLineItemsModel.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearTestCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
