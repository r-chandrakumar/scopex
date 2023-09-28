import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'appspares_widget.dart' show AppsparesWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppsparesModel extends FlutterFlowModel<AppsparesWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for ProductList widget.
  String? productListValue;
  FormFieldController<String>? productListValueController;
  // State field(s) for QtyText widget.
  TextEditingController? qtyTextController;
  String? Function(BuildContext, String?)? qtyTextControllerValidator;
  // Stores action output result for [Backend Call - API (Service Parts Exist Check)] action in AddMoreButton widget.
  ApiCallResponse? servicePartExistCheck;
  // Stores action output result for [Backend Call - API (Service Part Update)] action in AddMoreButton widget.
  ApiCallResponse? servicePartUpdate;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Spare Parts Post)] action in AddMoreButton widget.
  ApiCallResponse? servicePartsPostResult;
  // Stores action output result for [Backend Call - API (Spare Parts Delete)] action in Icon widget.
  ApiCallResponse? sparePartsDeleteResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    backButttonComponentModel.dispose();
    qtyTextController?.dispose();
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
