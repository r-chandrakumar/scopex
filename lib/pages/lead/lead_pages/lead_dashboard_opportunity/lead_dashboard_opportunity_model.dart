import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/side_bar_project/side_bar_project_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/lead/lead_pages/lead_view/leadsshimmer/leadsshimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'lead_dashboard_opportunity_widget.dart'
    show LeadDashboardOpportunityWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeadDashboardOpportunityModel
    extends FlutterFlowModel<LeadDashboardOpportunityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
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
    sideBarProjectModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
