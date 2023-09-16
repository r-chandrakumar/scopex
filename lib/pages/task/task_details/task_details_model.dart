import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/task/task_status_change/task_status_change_widget.dart';
import '/pages/taskdetailsshimmer/taskdetailsshimmer_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class TaskDetailsModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? tasktime;

  int? tasktimerid;

  int? taskstatusid;

  List<String> attachmentType = [];
  void addToAttachmentType(String item) => attachmentType.add(item);
  void removeFromAttachmentType(String item) => attachmentType.remove(item);
  void removeAtIndexFromAttachmentType(int index) =>
      attachmentType.removeAt(index);
  void updateAttachmentTypeAtIndex(int index, Function(String) updateFn) =>
      attachmentType[index] = updateFn(attachmentType[index]);

  List<String> name = [];
  void addToName(String item) => name.add(item);
  void removeFromName(String item) => name.remove(item);
  void removeAtIndexFromName(int index) => name.removeAt(index);
  void updateNameAtIndex(int index, Function(String) updateFn) =>
      name[index] = updateFn(name[index]);

  List<String> listbase64 = [];
  void addToListbase64(String item) => listbase64.add(item);
  void removeFromListbase64(String item) => listbase64.remove(item);
  void removeAtIndexFromListbase64(int index) => listbase64.removeAt(index);
  void updateListbase64AtIndex(int index, Function(String) updateFn) =>
      listbase64[index] = updateFn(listbase64[index]);

  int? tabchange = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Task Info)] action in TaskDetails widget.
  ApiCallResponse? taskinforesultOnload;
  InstantTimer? periodicstarttime;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Stores action output result for [Backend Call - API (Check Task On)] action in StartButton widget.
  ApiCallResponse? checkiftaskisOn;
  // Stores action output result for [Backend Call - API (Task Timer On Off)] action in StartButton widget.
  ApiCallResponse? tasktimeStart;
  // Stores action output result for [Backend Call - API (Task Info)] action in StartButton widget.
  ApiCallResponse? taskinforesultStarttimer;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  InstantTimer? OnloadTimer;
  // Stores action output result for [Backend Call - API (Task Timer On Off)] action in StopButton widget.
  ApiCallResponse? taskTimestopResult;
  // Model for CommonLogNote component.
  late CommonLogNoteModel commonLogNoteModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileTobase64] action in Button widget.
  String? uploadTaskImageFile;
  // Stores action output result for [Backend Call - API (TaskAttach)] action in Button widget.
  ApiCallResponse? taskUpdate;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileTobase64] action in Button widget.
  String? uploadPdfFile;
  // Stores action output result for [Backend Call - API (TaskAttach)] action in Button widget.
  ApiCallResponse? taskUpdate1;
  // Stores action output result for [Backend Call - API (Delete Attachment)] action in Icon widget.
  ApiCallResponse? deleteAttach;
  // Stores action output result for [Backend Call - API (Delete Attachment)] action in Icon widget.
  ApiCallResponse? deleteAttached;

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
    commonLogNoteModel = createModel(context, () => CommonLogNoteModel());
  }

  void dispose() {
    unfocusNode.dispose();
    periodicstarttime?.cancel();
    backButttonComponentModel.dispose();
    OnloadTimer?.cancel();
    commonLogNoteModel.dispose();

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
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
