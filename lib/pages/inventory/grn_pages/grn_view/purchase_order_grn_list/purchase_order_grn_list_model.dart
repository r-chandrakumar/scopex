import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/expenses/expshimmer/expshimmer_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PurchaseOrderGrnListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    sideBarNewModel = createModel(context, () => SideBarNewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    sideBarNewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
