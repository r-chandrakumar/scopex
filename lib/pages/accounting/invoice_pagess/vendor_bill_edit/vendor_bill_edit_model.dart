import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/edit_view_product_line_items_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/search_components/supplier_search_component/supplier_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorBillEditModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Vendor Bill View)] action in vendor_bill_edit widget.
  ApiCallResponse? invoiceResview;
  // Stores action output result for [Backend Call - API (Get Customer Details)] action in vendor_bill_edit widget.
  ApiCallResponse? partnerDetailResponse;
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
  // Stores action output result for [Backend Call - API (Vendor Bill Update)] action in Button widget.
  ApiCallResponse? vendorBillUpdateRes;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    editViewProductLineItemsModel =
        createModel(context, () => EditViewProductLineItemsModel());
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    editViewProductLineItemsModel.dispose();
    textController?.dispose();
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
