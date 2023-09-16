import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/expenses/viewexpshimmer/viewexpshimmer_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ExpensesViewModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? productid;

  int? vendorid;

  int? tabchange = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Log Note Create)] action in Button widget.
  ApiCallResponse? lognotePostResponse;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for CommonLogNote component.
  late CommonLogNoteModel commonLogNoteModel;
  // Stores action output result for [Backend Call - API (Delete Attachment)] action in Icon widget.
  ApiCallResponse? deleteAttach;
  // Stores action output result for [Backend Call - API (Delete Attachment)] action in Icon widget.
  ApiCallResponse? deleteAttached;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    commonLogNoteModel = createModel(context, () => CommonLogNoteModel());
  }

  void dispose() {
    backButttonComponentModel.dispose();
    textController?.dispose();
    commonLogNoteModel.dispose();
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
