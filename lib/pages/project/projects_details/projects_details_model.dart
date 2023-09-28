import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/side_bar_project/side_bar_project_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/project/projectdetailshimmer/projectdetailshimmer_widget.dart';
import '/pages/task/filtertask_project/filtertask_project_widget.dart';
import '/pages/task/team_assign_user/team_assign_user_widget.dart';
import '/pages/team/team_shimmer/team_shimmer_widget.dart';
import '/shimmer/projectdetailcardshimmer/projectdetailcardshimmer_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'projects_details_widget.dart' show ProjectsDetailsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProjectsDetailsModel extends FlutterFlowModel<ProjectsDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for sideBarProject component.
  late SideBarProjectModel sideBarProjectModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    sideBarProjectModel = createModel(context, () => SideBarProjectModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    tabBarController?.dispose();
    sideBarProjectModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
