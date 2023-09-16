import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/search_icon_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/task/task_list_shimmer/task_list_shimmer_widget.dart';
import '/pages/task/tasksearch/tasksearch_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardTasklistModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Model for search_Icon component.
  late SearchIconModel searchIconModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarNewModel = createModel(context, () => SideBarNewModel());
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    searchIconModel = createModel(context, () => SearchIconModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideBarNewModel.dispose();
    backButttonComponentModel.dispose();
    searchIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
