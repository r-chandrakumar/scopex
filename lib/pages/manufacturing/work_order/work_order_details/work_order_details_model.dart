import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'work_order_details_widget.dart' show WorkOrderDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WorkOrderDetailsModel extends FlutterFlowModel<WorkOrderDetailsWidget> {
  ///  Local state fields for this page.

  String? tasktime;

  int? tasktimerid;

  int? taskstatusid;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (WorkOrderView)] action in WorkOrderDetails widget.
  ApiCallResponse? taskinforesultOnload;
  InstantTimer? periodicstarttime;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Stores action output result for [Backend Call - API (WorkOrderIsOncheck)] action in Button widget.
  ApiCallResponse? checkiftaskisOn;
  // Stores action output result for [Backend Call - API (StartWorkOrder)] action in Button widget.
  ApiCallResponse? workOrdertimeStart;
  // Stores action output result for [Backend Call - API (WorkOrderView)] action in Button widget.
  ApiCallResponse? taskinforesultStarttimer;
  Completer<ApiCallResponse>? apiRequestCompleter;
  InstantTimer? OnloadTimer;
  // Stores action output result for [Backend Call - API (PauseWorkOrder)] action in Button widget.
  ApiCallResponse? workOrderTimestopResult;

  /// Query cache managers for this widget.

  final _taskviewcacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> taskviewcache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _taskviewcacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTaskviewcacheCache() => _taskviewcacheManager.clear();
  void clearTaskviewcacheCacheKey(String? uniqueKey) =>
      _taskviewcacheManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    periodicstarttime?.cancel();
    backButttonComponentModel.dispose();
    OnloadTimer?.cancel();

    /// Dispose query cache managers for this widget.

    clearTaskviewcacheCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
