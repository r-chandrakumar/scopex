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
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'task_details_model.dart';
export 'task_details_model.dart';

class TaskDetailsWidget extends StatefulWidget {
  const TaskDetailsWidget({
    Key? key,
    required this.taskid,
    required this.taskname,
  }) : super(key: key);

  final int? taskid;
  final String? taskname;

  @override
  _TaskDetailsWidgetState createState() => _TaskDetailsWidgetState();
}

class _TaskDetailsWidgetState extends State<TaskDetailsWidget> {
  late TaskDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        _model.taskinforesultOnload =
            await HymechApiGroupGroup.taskInfoCall.call(
          authToken: FFAppState().accessToken,
          taskid: widget.taskid,
          domainUrl: FFAppState().DomainUrl,
        );
        if ((_model.taskinforesultOnload?.succeeded ?? true)) {
          if (HymechApiGroupGroup.taskInfoCall
                  .currentTaskEndDate(
                    (_model.taskinforesultOnload?.jsonBody ?? ''),
                  )
                  .toString() ==
              'null') {
            null?.cancel();
            _model.periodicstarttime?.cancel();
            _model.periodicstarttime = InstantTimer.periodic(
              duration: Duration(milliseconds: 1000),
              callback: (timer) async {
                setState(() {
                  _model.tasktime = functions.attendanceWorkingHoursCalculation(
                      HymechApiGroupGroup.taskInfoCall
                          .currentTaskStartDate(
                            (_model.taskinforesultOnload?.jsonBody ?? ''),
                          )
                          .toString());
                });
              },
              startImmediately: true,
            );
          } else {
            return;
          }

          return;
        } else {
          return;
        }
      } else {
        context.goNamed('Login');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBarColor,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              _model.periodicstarttime?.cancel();
              null?.cancel();
              context.safePop();
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: wrapWithModel(
                model: _model.backButttonComponentModel,
                updateCallback: () => setState(() {}),
                child: BackButttonComponentWidget(),
              ),
            ),
          ),
          title: Text(
            widget.taskname!,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).appBarTextColor,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'tasklog',
                    queryParameters: {
                      'taskid': serializeParam(
                        widget.taskid,
                        ParamType.int,
                      ),
                      'taskname': serializeParam(
                        widget.taskname,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                child: Icon(
                  Icons.history_sharp,
                  color: FlutterFlowTheme.of(context).appBarTextColor,
                  size: 24.0,
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: _model
                .taskviewcache(
              requestFn: () => HymechApiGroupGroup.taskInfoCall.call(
                authToken: FFAppState().accessToken,
                taskid: widget.taskid,
                domainUrl: FFAppState().DomainUrl,
              ),
            )
                .then((result) {
              _model.apiRequestCompleted = true;
              return result;
            }),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return TaskdetailsshimmerWidget();
              }
              final columnTaskInfoResponse = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(11.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).hashColor,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 5.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  HymechApiGroupGroup
                                                              .taskInfoCall
                                                              .currentTaskEndDate(
                                                                columnTaskInfoResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString() ==
                                                          'null'
                                                      ? functions.isNull(
                                                          _model.tasktime)
                                                      : '00:00:00',
                                                  '00:00:00',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor1,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(10.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 3.0, 5.0, 3.0),
                                            child: Text(
                                              HymechApiGroupGroup.taskInfoCall
                                                  .status(
                                                    columnTaskInfoResponse
                                                        .jsonBody,
                                                  )
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            Icons.edit,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              useSafeArea: true,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => FocusScope.of(
                                                          context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        TaskStatusChangeWidget(
                                                      taskid: widget.taskid!,
                                                      taskname:
                                                          widget.taskname!,
                                                      statusid:
                                                          HymechApiGroupGroup
                                                              .taskInfoCall
                                                              .statusid(
                                                        columnTaskInfoResponse
                                                            .jsonBody,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 120.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'zylhnvpp' /* Project */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  functions
                                      .isNull(HymechApiGroupGroup.taskInfoCall
                                          .projectName(
                                            columnTaskInfoResponse.jsonBody,
                                          )
                                          .toString()),
                                  'null',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 13.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3g7uksel' /* Date Assign */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.convertDateTimeFormat(
                                                              HymechApiGroupGroup
                                                                  .taskInfoCall
                                                                  .assignedDate(
                                                                    columnTaskInfoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                          'null',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ztln3f8e' /* Customer */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.isNull(
                                                              HymechApiGroupGroup
                                                                  .taskInfoCall
                                                                  .customerName(
                                                                    columnTaskInfoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                          '-',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xintx0vk' /* Planned Hours */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.isNull(
                                                              HymechApiGroupGroup
                                                                  .taskInfoCall
                                                                  .plannedHours(
                                                                    columnTaskInfoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                          '-',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8xp3pi9c' /* Dead Line */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.convertDateFormat(
                                                              HymechApiGroupGroup
                                                                  .taskInfoCall
                                                                  .deadLine(
                                                                    columnTaskInfoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                          'Deadline',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 14.0,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ahizd3uv' /* Assigned To */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.isNull(
                                                              HymechApiGroupGroup
                                                                  .taskInfoCall
                                                                  .userName(
                                                                    columnTaskInfoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                          '-',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'nai0wjin' /* Worked Hours */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          functions.isNull(
                                                              HymechApiGroupGroup
                                                                  .taskInfoCall
                                                                  .taskDuration(
                                                                    columnTaskInfoResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                          '-',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (functions.taskStatusIfCancelled(
                                  HymechApiGroupGroup.taskInfoCall.statusid(
                                columnTaskInfoResponse.jsonBody,
                              )) ??
                              true)
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if ((HymechApiGroupGroup.taskInfoCall
                                            .currentTaskEndDate(
                                              columnTaskInfoResponse.jsonBody,
                                            )
                                            .toString() !=
                                        'null') ||
                                    (HymechApiGroupGroup.taskInfoCall
                                            .currentTaskStartDate(
                                              columnTaskInfoResponse.jsonBody,
                                            )
                                            .toString() ==
                                        'null'))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        currentUserLocationValue =
                                            await getCurrentUserLocation(
                                                defaultLocation:
                                                    LatLng(0.0, 0.0));
                                        var _shouldSetState = false;
                                        _model.checkiftaskisOn =
                                            await HymechApiGroupGroup
                                                .checkTaskOnCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                        );
                                        _shouldSetState = true;
                                        if (functions.changeStringToInt(
                                                HymechApiGroupGroup
                                                    .checkTaskOnCall
                                                    .taskCount(
                                                      (_model.checkiftaskisOn
                                                              ?.jsonBody ??
                                                          ''),
                                                    )
                                                    .toString()) ==
                                            0) {
                                          _model.tasktimeStart =
                                              await HymechApiGroupGroup
                                                  .taskTimerOnOffCall
                                                  .call(
                                            taskId: widget.taskid,
                                            domainUrl: FFAppState().DomainUrl,
                                            authToken: FFAppState().accessToken,
                                            startPosition:
                                                currentUserLocationValue
                                                    ?.toString(),
                                            endPosition: '',
                                          );
                                          _shouldSetState = true;
                                          if ((_model
                                                  .tasktimeStart?.succeeded ??
                                              true)) {
                                            _model.taskinforesultStarttimer =
                                                await HymechApiGroupGroup
                                                    .taskInfoCall
                                                    .call(
                                              authToken:
                                                  FFAppState().accessToken,
                                              taskid: widget.taskid,
                                              domainUrl: FFAppState().DomainUrl,
                                            );
                                            _shouldSetState = true;
                                            if ((_model.taskinforesultStarttimer
                                                    ?.succeeded ??
                                                true)) {
                                              if (HymechApiGroupGroup
                                                      .taskInfoCall
                                                      .currentTaskEndDate(
                                                        (_model.taskinforesultStarttimer
                                                                ?.jsonBody ??
                                                            ''),
                                                      )
                                                      .toString() ==
                                                  'null') {
                                                _model.periodicstarttime
                                                    ?.cancel();
                                                null?.cancel();
                                                setState(() {
                                                  _model
                                                      .clearTaskviewcacheCache();
                                                  _model.apiRequestCompleted =
                                                      false;
                                                });
                                                await _model
                                                    .waitForApiRequestCompleted();
                                                _model.OnloadTimer =
                                                    InstantTimer.periodic(
                                                  duration: Duration(
                                                      milliseconds: 1000),
                                                  callback: (timer) async {
                                                    setState(() {
                                                      _model.tasktime = functions
                                                          .attendanceWorkingHoursCalculation(
                                                              HymechApiGroupGroup
                                                                  .taskInfoCall
                                                                  .currentTaskStartDate(
                                                                    (_model.taskinforesultStarttimer
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                  .toString());
                                                    });
                                                  },
                                                  startImmediately: true,
                                                );
                                              } else {
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            } else {
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                          } else {
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                '${HymechApiGroupGroup.checkTaskOnCall.taskName(
                                                      (_model.checkiftaskisOn
                                                              ?.jsonBody ??
                                                          ''),
                                                    ).toString()}  this task is already on',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '3r5g100h' /* Start */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .startButton,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                if ((HymechApiGroupGroup.taskInfoCall
                                            .currentTaskEndDate(
                                              columnTaskInfoResponse.jsonBody,
                                            )
                                            .toString() ==
                                        'null') &&
                                    (HymechApiGroupGroup.taskInfoCall
                                            .currentTaskStartDate(
                                              columnTaskInfoResponse.jsonBody,
                                            )
                                            .toString() !=
                                        'null'))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        currentUserLocationValue =
                                            await getCurrentUserLocation(
                                                defaultLocation:
                                                    LatLng(0.0, 0.0));
                                        var _shouldSetState = false;
                                        _model.taskTimestopResult =
                                            await HymechApiGroupGroup
                                                .taskTimerOnOffCall
                                                .call(
                                          taskId: widget.taskid,
                                          domainUrl: FFAppState().DomainUrl,
                                          authToken: FFAppState().accessToken,
                                          startPosition: '',
                                          endPosition: currentUserLocationValue
                                              ?.toString(),
                                        );
                                        _shouldSetState = true;
                                        if ((_model.taskTimestopResult
                                                ?.succeeded ??
                                            true)) {
                                          setState(() {
                                            _model.clearTaskviewcacheCache();
                                            _model.apiRequestCompleted = false;
                                          });
                                          await _model
                                              .waitForApiRequestCompleted();
                                          _model.periodicstarttime?.cancel();
                                          null?.cancel();
                                        } else {
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'ohn4l95k' /* Stop */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 100.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.tabchange = 0;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '41z0zc9r' /* Log */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: _model.tabchange == 0
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .addItemsButton
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .loginBtnColor1,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (_model.tabchange == 0)
                                      SizedBox(
                                        width: 100.0,
                                        child: Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .addItemsButton,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.tabchange = 1;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kf7fffc0' /* Files */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: _model.tabchange == 1
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .addItemsButton
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .loginBtnColor1,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (_model.tabchange == 1)
                                      SizedBox(
                                        width: 100.0,
                                        child: Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .addItemsButton,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            if (_model.tabchange == 0) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.commonLogNoteModel,
                                      updateCallback: () => setState(() {}),
                                      child: CommonLogNoteWidget(
                                        logmessage: HymechApiGroupGroup
                                            .taskInfoCall
                                            .logNote(
                                          columnTaskInfoResponse.jsonBody,
                                        ),
                                      ),
                                    ),
                                  ].addToStart(SizedBox(height: 20.0)),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final selectedMedia =
                                                    await selectMediaWithSourceBottomSheet(
                                                  context: context,
                                                  allowPhoto: true,
                                                );
                                                if (selectedMedia != null &&
                                                    selectedMedia.every((m) =>
                                                        validateFileFormat(
                                                            m.storagePath,
                                                            context))) {
                                                  setState(() => _model
                                                      .isDataUploading1 = true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedMedia
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash: m
                                                                      .blurHash,
                                                                ))
                                                            .toList();
                                                  } finally {
                                                    _model.isDataUploading1 =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length) {
                                                    setState(() {
                                                      _model.uploadedLocalFile1 =
                                                          selectedUploadedFiles
                                                              .first;
                                                    });
                                                  } else {
                                                    setState(() {});
                                                    return;
                                                  }
                                                }

                                                if (_model.uploadedLocalFile1 !=
                                                        null &&
                                                    (_model
                                                            .uploadedLocalFile1
                                                            .bytes
                                                            ?.isNotEmpty ??
                                                        false)) {
                                                  _model.uploadTaskImageFile =
                                                      await actions
                                                          .uploadFileTobase64(
                                                    _model.uploadedLocalFile1,
                                                  );
                                                  _model.taskUpdate =
                                                      await CommonApisGroupGroup
                                                          .taskAttachCall
                                                          .call(
                                                    authToken: FFAppState()
                                                        .accessToken,
                                                    domainUrl:
                                                        FFAppState().DomainUrl,
                                                    resId: widget.taskid,
                                                    companyId:
                                                        FFAppState().companyid,
                                                    files: _model
                                                        .uploadTaskImageFile,
                                                    fileName: 'image',
                                                  );
                                                  if ((_model.taskUpdate
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      _model
                                                          .clearTaskviewcacheCache();
                                                      _model.apiRequestCompleted =
                                                          false;
                                                    });
                                                    await _model
                                                        .waitForApiRequestCompleted();
                                                  }
                                                }

                                                setState(() {});
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'tkx9zzi3' /* Gallery / Capture Picture */,
                                              ),
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 15.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFF5F2FC),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .zambezi,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final selectedFiles =
                                                    await selectFiles(
                                                  allowedExtensions: ['pdf'],
                                                  multiFile: false,
                                                );
                                                if (selectedFiles != null) {
                                                  setState(() => _model
                                                      .isDataUploading2 = true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedFiles
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                ))
                                                            .toList();
                                                  } finally {
                                                    _model.isDataUploading2 =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                          .length ==
                                                      selectedFiles.length) {
                                                    setState(() {
                                                      _model.uploadedLocalFile2 =
                                                          selectedUploadedFiles
                                                              .first;
                                                    });
                                                  } else {
                                                    setState(() {});
                                                    return;
                                                  }
                                                }

                                                if (_model.uploadedLocalFile2 !=
                                                        null &&
                                                    (_model
                                                            .uploadedLocalFile2
                                                            .bytes
                                                            ?.isNotEmpty ??
                                                        false)) {
                                                  _model.uploadPdfFile =
                                                      await actions
                                                          .uploadFileTobase64(
                                                    _model.uploadedLocalFile2,
                                                  );
                                                  _model.taskUpdate1 =
                                                      await CommonApisGroupGroup
                                                          .taskAttachCall
                                                          .call(
                                                    authToken: FFAppState()
                                                        .accessToken,
                                                    domainUrl:
                                                        FFAppState().DomainUrl,
                                                    resId: widget.taskid,
                                                    companyId:
                                                        FFAppState().companyid,
                                                    files: _model.uploadPdfFile,
                                                    fileName: 'Document',
                                                  );
                                                  if ((_model.taskUpdate1
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      _model
                                                          .clearTaskviewcacheCache();
                                                      _model.apiRequestCompleted =
                                                          false;
                                                    });
                                                    await _model
                                                        .waitForApiRequestCompleted();
                                                  }
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Error while getting upload file',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                  );
                                                }

                                                setState(() {});
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '6h5ie4tq' /* Upload Document */,
                                              ),
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 15.0, 0.0, 15.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFF5F2FC),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .zambezi,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ].addToStart(SizedBox(height: 20.0)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            final attach =
                                                HymechApiGroupGroup.taskInfoCall
                                                        .irAttachTask(
                                                          columnTaskInfoResponse
                                                              .jsonBody,
                                                        )
                                                        ?.toList() ??
                                                    [];
                                            return ListView.separated(
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: attach.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(height: 10.0),
                                              itemBuilder:
                                                  (context, attachIndex) {
                                                final attachItem =
                                                    attach[attachIndex];
                                                return Builder(
                                                  builder: (context) {
                                                    if (functions
                                                            .equalValueCheckString(
                                                                getJsonField(
                                                                  attachItem,
                                                                  r'''$.mimetype''',
                                                                ).toString(),
                                                                'application/pdf') ??
                                                        false) {
                                                      return Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          useSafeArea:
                                                                              true,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return GestureDetector(
                                                                              onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: PDFViewWidget(
                                                                                  pdfurl: functions.convertAttachmentUrl(
                                                                                      FFAppState().WebUrl,
                                                                                      getJsonField(
                                                                                        attachItem,
                                                                                        r'''$.id''',
                                                                                      ),
                                                                                      'ir.attachment')!,
                                                                                  title: getJsonField(
                                                                                    attachItem,
                                                                                    r'''$.name''',
                                                                                  ).toString(),
                                                                                  shareFile: false,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));
                                                                      },
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/pdf.jpg',
                                                                          width:
                                                                              60.0,
                                                                          height:
                                                                              60.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            attachItem,
                                                                            r'''$.name''',
                                                                          ).toString(),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.deleteAttach =
                                                                      await CommonApisGroupGroup
                                                                          .deleteAttachmentCall
                                                                          .call(
                                                                    authToken:
                                                                        FFAppState()
                                                                            .accessToken,
                                                                    domainUrl:
                                                                        FFAppState()
                                                                            .DomainUrl,
                                                                    attachmentId:
                                                                        getJsonField(
                                                                      attachItem,
                                                                      r'''$.id''',
                                                                    ),
                                                                  );
                                                                  if ((_model
                                                                          .deleteAttach
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .clearTaskviewcacheCache();
                                                                      _model.apiRequestCompleted =
                                                                          false;
                                                                    });
                                                                    await _model
                                                                        .waitForApiRequestCompleted();
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Success',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Error',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.delete,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      return Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await Navigator
                                                                            .push(
                                                                          context,
                                                                          PageTransition(
                                                                            type:
                                                                                PageTransitionType.fade,
                                                                            child:
                                                                                FlutterFlowExpandedImageView(
                                                                              image: Image.network(
                                                                                functions.attachmentconvertor(
                                                                                    getJsonField(
                                                                                      attachItem,
                                                                                      r'''$.id''',
                                                                                    ),
                                                                                    'ir.attachment',
                                                                                    FFAppState().WebUrl)!,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                              allowRotation: false,
                                                                              tag: functions.attachmentconvertor(
                                                                                  getJsonField(
                                                                                    attachItem,
                                                                                    r'''$.id''',
                                                                                  ),
                                                                                  'ir.attachment',
                                                                                  FFAppState().WebUrl)!,
                                                                              useHeroAnimation: true,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                      child:
                                                                          Hero(
                                                                        tag: functions.attachmentconvertor(
                                                                            getJsonField(
                                                                              attachItem,
                                                                              r'''$.id''',
                                                                            ),
                                                                            'ir.attachment',
                                                                            FFAppState().WebUrl)!,
                                                                        transitionOnUserGestures:
                                                                            true,
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            functions.attachmentconvertor(
                                                                                getJsonField(
                                                                                  attachItem,
                                                                                  r'''$.id''',
                                                                                ),
                                                                                'ir.attachment',
                                                                                FFAppState().WebUrl)!,
                                                                            width:
                                                                                60.0,
                                                                            height:
                                                                                60.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            attachItem,
                                                                            r'''$.name''',
                                                                          ).toString(),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.deleteAttached =
                                                                      await CommonApisGroupGroup
                                                                          .deleteAttachmentCall
                                                                          .call(
                                                                    authToken:
                                                                        FFAppState()
                                                                            .accessToken,
                                                                    domainUrl:
                                                                        FFAppState()
                                                                            .DomainUrl,
                                                                    attachmentId:
                                                                        getJsonField(
                                                                      attachItem,
                                                                      r'''$.id''',
                                                                    ),
                                                                  );
                                                                  if ((_model
                                                                          .deleteAttached
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    setState(
                                                                        () {
                                                                      _model
                                                                          .clearTaskviewcacheCache();
                                                                      _model.apiRequestCompleted =
                                                                          false;
                                                                    });
                                                                    await _model
                                                                        .waitForApiRequestCompleted();
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Success',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Error',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  }

                                                                  setState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.delete,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
