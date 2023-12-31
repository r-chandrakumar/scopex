import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/contact_inner_list_shimmer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'contact_purchase_order_list_widget.dart'
    show ContactPurchaseOrderListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactPurchaseOrderListModel
    extends FlutterFlowModel<ContactPurchaseOrderListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Models for ListPageContainer dynamic component.
  late FlutterFlowDynamicModels<ListPageContainerModel> listPageContainerModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    listPageContainerModels =
        FlutterFlowDynamicModels(() => ListPageContainerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    listPageContainerModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
