import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/task_details_dashboard1_widget.dart';
import '/components/task_details_dashboard2_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/task/task_list_shimmer/task_list_shimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class UserTaskDashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Query cache managers for this widget.

  final _lsitManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> lsit({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _lsitManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLsitCache() => _lsitManager.clear();
  void clearLsitCacheKey(String? uniqueKey) =>
      _lsitManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();

    /// Dispose query cache managers for this widget.

    clearLsitCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
