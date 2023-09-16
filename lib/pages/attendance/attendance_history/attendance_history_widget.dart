import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/attendance/attendance_historyshimmer/attendance_historyshimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'attendance_history_model.dart';
export 'attendance_history_model.dart';

class AttendanceHistoryWidget extends StatefulWidget {
  const AttendanceHistoryWidget({Key? key}) : super(key: key);

  @override
  _AttendanceHistoryWidgetState createState() =>
      _AttendanceHistoryWidgetState();
}

class _AttendanceHistoryWidgetState extends State<AttendanceHistoryWidget>
    with TickerProviderStateMixin {
  late AttendanceHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AttendanceHistoryModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().accessToken != null &&
          FFAppState().accessToken != '')) {
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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).appBarColor,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pop();
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: wrapWithModel(
                    model: _model.backButttonComponentModel,
                    updateCallback: () => setState(() {}),
                    child: BackButttonComponentWidget(),
                  ),
                ),
              ),
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                '5c6d3o47' /* Attendance History */,
              ),
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'outfit',
                    color: FlutterFlowTheme.of(context).appBarTextColor,
                    fontSize: 23.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [],
            centerTitle: false,
            toolbarHeight: 60.0,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            FFIcons.kleftDir,
                            color: Color(0xFFD9D9D9),
                            size: 24.0,
                          ),
                          onPressed: () async {
                            FFAppState().update(() {
                              FFAppState().attendanceMonth = getJsonField(
                                functions.getPreviousMonthWithYear(
                                    FFAppState().attendanceMonth,
                                    FFAppState().attendanceYear),
                                r'''$.month''',
                              );
                              FFAppState().attendanceYear = getJsonField(
                                functions.getPreviousMonthWithYear(
                                    FFAppState().attendanceMonth,
                                    FFAppState().attendanceYear),
                                r'''$.year''',
                              );
                            });
                            setState(() => _model.apiRequestCompleter = null);
                            await _model.waitForApiRequestCompleted();
                          },
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  functions.getMonthName(
                                      FFAppState().attendanceMonth),
                                  'null',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 22.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFAppState().attendanceYear.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 22.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            FFIcons.krightDir,
                            color: Color(0xFFD9D9D9),
                            size: 24.0,
                          ),
                          onPressed: () async {
                            FFAppState().update(() {
                              FFAppState().attendanceMonth = getJsonField(
                                functions.getNextMonthWithYear(
                                    FFAppState().attendanceMonth,
                                    FFAppState().attendanceYear),
                                r'''$.month''',
                              );
                              FFAppState().attendanceYear = getJsonField(
                                functions.getNextMonthWithYear(
                                    FFAppState().attendanceMonth,
                                    FFAppState().attendanceYear),
                                r'''$.year''',
                              );
                            });
                            setState(() => _model.apiRequestCompleter = null);
                            await _model.waitForApiRequestCompleted();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.87,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 20.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: (_model.apiRequestCompleter ??= Completer<
                                ApiCallResponse>()
                              ..complete(
                                  HymechApiGroupGroup.attendanceListCall.call(
                                authToken: FFAppState().accessToken,
                                startDate: getJsonField(
                                  functions.getMonthsStartAndEndDate(
                                      FFAppState().attendanceMonth,
                                      FFAppState().attendanceYear),
                                  r'''$.startDate''',
                                ).toString(),
                                endDate: getJsonField(
                                  functions.getMonthsStartAndEndDate(
                                      FFAppState().attendanceMonth,
                                      FFAppState().attendanceYear),
                                  r'''$.endDate''',
                                ).toString(),
                                domainUrl: FFAppState().DomainUrl,
                              )))
                            .future,
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return AttendanceHistoryshimmerWidget();
                          }
                          final listViewAttendanceListResponse = snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final attendanceList = getJsonField(
                                listViewAttendanceListResponse.jsonBody,
                                r'''$.hr_attendance''',
                              ).toList();
                              if (attendanceList.isEmpty) {
                                return Image.asset(
                                  'assets/images/cloud_data_found_(2).png',
                                );
                              }
                              return RefreshIndicator(
                                onRefresh: () async {
                                  setState(
                                      () => _model.apiRequestCompleter = null);
                                  await _model.waitForApiRequestCompleted();
                                },
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: attendanceList.length,
                                  itemBuilder: (context, attendanceListIndex) {
                                    final attendanceListItem =
                                        attendanceList[attendanceListIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: Color(0xFFD1E2EA),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 18.0, 0.0, 18.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF3F3F3),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .dateToDayformat(
                                                                    getJsonField(
                                                              attendanceListItem,
                                                              r'''$.check_in''',
                                                            ).toString()),
                                                            'null',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textDarkLightColor,
                                                                fontSize: 17.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions.dateToDay(
                                                                getJsonField(
                                                              attendanceListItem,
                                                              r'''$.check_in''',
                                                            ).toString()),
                                                            'null',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .rgb,
                                                                fontSize: 13.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sce6zgyt' /* Check In */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .rgb,
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions
                                                          .attendanceListTimeFormat(
                                                              getJsonField(
                                                        attendanceListItem,
                                                        r'''$.check_in''',
                                                      ).toString()),
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF00853D),
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'u6o04wyd' /* Check Out */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions
                                                          .attendanceListTimeFormat(
                                                              getJsonField(
                                                        attendanceListItem,
                                                        r'''$.check_out''',
                                                      ).toString()),
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .blackcolor,
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1242pr8u' /* Working Hr's */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      functions
                                                          .convertHoursWithStartAndEndDateTime(
                                                              getJsonField(
                                                                attendanceListItem,
                                                                r'''$.check_in''',
                                                              ).toString(),
                                                              getJsonField(
                                                                attendanceListItem,
                                                                r'''$.check_out''',
                                                              ).toString()),
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFFF05E6C),
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation']!),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
