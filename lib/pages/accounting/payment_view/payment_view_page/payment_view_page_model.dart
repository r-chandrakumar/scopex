import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/accounting/payment_view/payment_view_page_loader/payment_view_page_loader_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentViewPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonLogNote component.
  late CommonLogNoteModel commonLogNoteModel;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    commonLogNoteModel = createModel(context, () => CommonLogNoteModel());
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    commonLogNoteModel.dispose();
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}