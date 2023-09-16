import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/expenses/expshimmer/expshimmer_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuotationSearchModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String quotationsearch = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Models for ListPageContainer dynamic component.
  late FlutterFlowDynamicModels<ListPageContainerModel> listPageContainerModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listPageContainerModels =
        FlutterFlowDynamicModels(() => ListPageContainerModel());
  }

  void dispose() {
    textController?.dispose();
    listPageContainerModels.dispose();
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
