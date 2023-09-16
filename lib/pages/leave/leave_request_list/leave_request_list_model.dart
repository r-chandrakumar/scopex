import '/backend/api_requests/api_calls.dart';
import '/components/menu_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/leave/leave_request_filter/leave_request_filter_widget.dart';
import '/pages/leave/leavelistshimmer/leavelistshimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeaveRequestListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;
  // Model for menuComponent component.
  late MenuComponentModel menuComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarNewModel = createModel(context, () => SideBarNewModel());
    menuComponentModel = createModel(context, () => MenuComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideBarNewModel.dispose();
    menuComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
