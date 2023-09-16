import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class ActivitySwipeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController;
  // Stores action output result for [Backend Call - API (Activitydelete)] action in Container widget.
  ApiCallResponse? apiResult5a7;
  // Stores action output result for [Backend Call - API (ActivityMarkAsDone)] action in Container widget.
  ApiCallResponse? activitySwipeDone;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    swipeableStackController = SwipeableCardSectionController();
  }

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
