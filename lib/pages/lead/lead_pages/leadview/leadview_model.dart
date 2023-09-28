import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/lead/lead_pages/lead_view/leadview_shimmer/leadview_shimmer_widget.dart';
import '/pages/noactivity/noactivity_widget.dart';
import '/pages/schedule_my_activity/schedule_my_activity_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/reusable_component/f_a_b_empty_component_shimmer/f_a_b_empty_component_shimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeadviewModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? sourceid;

  int? tabchange = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonLogNote component.
  late CommonLogNoteModel commonLogNoteModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    commonLogNoteModel = createModel(context, () => CommonLogNoteModel());
  }

  void dispose() {
    unfocusNode.dispose();
    commonLogNoteModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
