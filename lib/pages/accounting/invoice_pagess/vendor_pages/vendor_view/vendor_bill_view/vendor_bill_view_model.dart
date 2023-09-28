import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/common_activity_list_widget.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/accounting/invoice_pagess/invoice_view/viewpage_common_shimmer/viewpage_common_shimmer_widget.dart';
import '/pages/schedule_my_activity/schedule_my_activity_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/reusable_component/common_view_page/common_view_page_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'vendor_bill_view_widget.dart' show VendorBillViewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorBillViewModel extends FlutterFlowModel<VendorBillViewWidget> {
  ///  Local state fields for this page.

  int? tabchange = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Model for commonViewPage component.
  late CommonViewPageModel commonViewPageModel;
  // Model for CommonActivityList component.
  late CommonActivityListModel commonActivityListModel;
  // Model for CommonLogNote component.
  late CommonLogNoteModel commonLogNoteModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    commonViewPageModel = createModel(context, () => CommonViewPageModel());
    commonActivityListModel =
        createModel(context, () => CommonActivityListModel());
    commonLogNoteModel = createModel(context, () => CommonLogNoteModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    commonViewPageModel.dispose();
    commonActivityListModel.dispose();
    commonLogNoteModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
