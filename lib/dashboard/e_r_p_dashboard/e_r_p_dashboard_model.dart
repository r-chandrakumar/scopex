import '/backend/api_requests/api_calls.dart';
import '/components/menu_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/notification/notification_icon/notification_icon_widget.dart';
import '/notification/notification_list/notification_list_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ERPDashboardModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? month = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for menuComponent component.
  late MenuComponentModel menuComponentModel;
  // Model for notification_icon component.
  late NotificationIconModel notificationIconModel;
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuComponentModel = createModel(context, () => MenuComponentModel());
    notificationIconModel = createModel(context, () => NotificationIconModel());
    sideBarNewModel = createModel(context, () => SideBarNewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuComponentModel.dispose();
    notificationIconModel.dispose();
    sideBarNewModel.dispose();
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
