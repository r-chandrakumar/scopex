import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/inventory/delivery_chellan_pages/delivery_chellan_view/delivery_challan_view_page_loader/delivery_challan_view_page_loader_widget.dart';
import '/pages/inventory/grn_pages/grn_view/grn_d_c_only_qty_text_box/grn_d_c_only_qty_text_box_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeliveryChallanViewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Model for CommonLogNote component.
  late CommonLogNoteModel commonLogNoteModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    commonLogNoteModel = createModel(context, () => CommonLogNoteModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    commonLogNoteModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
