import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/inventory/delivery_chellan_pages/delivery_chellan_view/delivery_challan_view_page_loader/delivery_challan_view_page_loader_widget.dart';
import '/pages/inventory/grn_pages/grn_view/grn_qty_text_box/grn_qty_text_box_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DCPickViewPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<double> qty = [];
  void addToQty(double item) => qty.add(item);
  void removeFromQty(double item) => qty.remove(item);
  void removeAtIndexFromQty(int index) => qty.removeAt(index);
  void updateQtyAtIndex(int index, Function(double) updateFn) =>
      qty[index] = updateFn(qty[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Delivery Challan View)] action in DCPick_view_Page widget.
  ApiCallResponse? dCViewRes;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
