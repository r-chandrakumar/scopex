import '/backend/api_requests/api_calls.dart';
import '/components/checkin_popup_widget.dart';
import '/components/menu_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/pages/attendance/attendance_shimmer/attendance_shimmer_widget.dart';
import '/reusable_component/internet_icon_component/internet_icon_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'attendance_model.dart';
export 'attendance_model.dart';

class AttendanceWidget extends StatefulWidget {
  const AttendanceWidget({Key? key}) : super(key: key);

  @override
  _AttendanceWidgetState createState() => _AttendanceWidgetState();
}

class _AttendanceWidgetState extends State<AttendanceWidget> {
  late AttendanceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AttendanceModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.checkInterntConnection = await actions.checkInternetConnection();
      if (_model.checkInterntConnection!) {
        if (FFAppState().accessToken != null &&
            FFAppState().accessToken != '') {
          setState(() {
            FFAppState().attendanceMonth = functions.getCurrentMonth()!;
            FFAppState().attendanceYear = functions.getCurrentYear()!;
          });
          null?.cancel();
          null?.cancel();
          _model.findCheckInResult =
              await HymechApiGroupGroup.findCheckInOrOutCall.call(
            authToken: FFAppState().accessToken,
            domainUrl: FFAppState().DomainUrl,
          );
          if ((_model.findCheckInResult?.succeeded ?? true)) {
            setState(() {
              _model.attendanceStatus = () {
                if (HymechApiGroupGroup.findCheckInOrOutCall
                        .attendanceList(
                          (_model.findCheckInResult?.jsonBody ?? ''),
                        )
                        .length ==
                    0) {
                  return false;
                } else if ((HymechApiGroupGroup.findCheckInOrOutCall
                                .checkinTime(
                                  (_model.findCheckInResult?.jsonBody ?? ''),
                                )
                                .toString() !=
                            null &&
                        HymechApiGroupGroup.findCheckInOrOutCall
                                .checkinTime(
                                  (_model.findCheckInResult?.jsonBody ?? ''),
                                )
                                .toString() !=
                            '') &&
                    (HymechApiGroupGroup.findCheckInOrOutCall
                            .isCheckout(
                              (_model.findCheckInResult?.jsonBody ?? ''),
                            )
                            .toString() ==
                        'null')) {
                  return true;
                } else {
                  return false;
                }
              }();
              _model.checkIn = HymechApiGroupGroup.findCheckInOrOutCall
                  .checkinTime(
                    (_model.findCheckInResult?.jsonBody ?? ''),
                  )
                  .toString();
              _model.checkOut = HymechApiGroupGroup.findCheckInOrOutCall
                  .isCheckout(
                    (_model.findCheckInResult?.jsonBody ?? ''),
                  )
                  .toString();
            });
            FFAppState().update(() {
              FFAppState().loginstatus = functions
                  .checkLoggedIn(HymechApiGroupGroup.findCheckInOrOutCall
                      .isCheckout(
                        (_model.findCheckInResult?.jsonBody ?? ''),
                      )
                      .toString())!;
              FFAppState().attendanceid = FFAppState().attendanceid != null
                  ? FFAppState().attendanceid
                  : 0;
            });
            if (_model.attendanceStatus!) {
              _model.instantTimer = InstantTimer.periodic(
                duration: Duration(milliseconds: 1000),
                callback: (timer) async {
                  setState(() {
                    _model.attendanceTime = functions
                        .attendanceWorkingHoursCalculation(_model.checkIn);
                  });
                  return;
                },
                startImmediately: true,
              );
            } else {
              return;
            }
          } else {
            return;
          }
        } else {
          context.goNamed('Login');
        }
      } else {
        await showAlignedDialog(
          context: context,
          isGlobal: true,
          avoidOverflow: false,
          targetAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          followerAnchor: AlignmentDirectional(0.0, 0.0)
              .resolve(Directionality.of(context)),
          builder: (dialogContext) {
            return Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () =>
                    FocusScope.of(context).requestFocus(_model.unfocusNode),
                child: InternetIconComponentWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));
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

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          drawer: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.sideBarNewModel,
              updateCallback: () => setState(() {}),
              child: SideBarNewWidget(),
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: Container(
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
                  scaffoldKey.currentState!.openDrawer();
                },
                child: wrapWithModel(
                  model: _model.menuComponentModel,
                  updateCallback: () => setState(() {}),
                  child: MenuComponentWidget(),
                ),
              ),
            ),
            title: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'r9ugmlwy' /* Attendance */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).appBarTextColor,
                        fontSize: 23.0,
                      ),
                ),
              ],
            ),
            actions: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'AttendanceHistory',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Icon(
                      Icons.history,
                      color: FlutterFlowTheme.of(context).appBarTextColor,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (_model.loader == true)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/loading-gif.gif',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  if (_model.loader == false)
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (_model.attendanceStatus == true)
                              Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    currentUserLocationValue =
                                        await getCurrentUserLocation(
                                            defaultLocation: LatLng(0.0, 0.0));
                                    var _shouldSetState = false;
                                    setState(() {
                                      _model.loader = true;
                                    });
                                    _model.checkInandOutResult =
                                        await HymechApiGroupGroup
                                            .findCheckInOrOutCall
                                            .call(
                                      authToken: FFAppState().accessToken,
                                      domainUrl: FFAppState().DomainUrl,
                                    );
                                    _shouldSetState = true;
                                    _model.checkoutResult =
                                        await HymechApiGroupGroup.checkOutCall
                                            .call(
                                      eq: HymechApiGroupGroup
                                          .findCheckInOrOutCall
                                          .attendanceId(
                                        (_model.checkInandOutResult?.jsonBody ??
                                            ''),
                                      ),
                                      checkOut: functions.saveCurrentDateTime(),
                                      locationOut:
                                          currentUserLocationValue?.toString(),
                                      authToken: FFAppState().accessToken,
                                      workedHours:
                                          functions.attendanceWorkedHours(
                                              HymechApiGroupGroup
                                                  .findCheckInOrOutCall
                                                  .checkinTime(
                                                    (_model.checkInandOutResult
                                                            ?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString()),
                                      domainUrl: FFAppState().DomainUrl,
                                    );
                                    _shouldSetState = true;
                                    if ((_model.checkoutResult?.succeeded ??
                                        true)) {
                                      FFAppState().update(() {
                                        FFAppState().loginstatus = false;
                                      });
                                      await Future.delayed(
                                          const Duration(milliseconds: 1000));
                                      setState(() {
                                        _model.loader = false;
                                        _model.attendanceStatus = false;
                                      });
                                      setState(() {
                                        FFAppState().Attendence = false;
                                      });
                                      setState(() =>
                                          _model.apiRequestCompleter1 = null);
                                      await _model
                                          .waitForApiRequestCompleted1();
                                      setState(() =>
                                          _model.apiRequestCompleter2 = null);
                                      await _model
                                          .waitForApiRequestCompleted2();
                                      _model.instantTimerStart?.cancel();
                                      _model.instantTimer?.cancel();
                                      await showAlignedDialog(
                                        context: context,
                                        isGlobal: true,
                                        avoidOverflow: false,
                                        targetAnchor:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        followerAnchor:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        builder: (dialogContext) {
                                          return Material(
                                            color: Colors.transparent,
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                              child: CheckinPopupWidget(
                                                type: 'checkout',
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));

                                      if (_shouldSetState) setState(() {});
                                      return;
                                    } else {
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                  child: Image.asset(
                                    'assets/images/checkouut.png',
                                    width: 150.0,
                                    height: 150.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (_model.attendanceStatus == false)
                              Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    currentUserLocationValue =
                                        await getCurrentUserLocation(
                                            defaultLocation: LatLng(0.0, 0.0));
                                    var _shouldSetState = false;
                                    setState(() {
                                      _model.loader = true;
                                    });
                                    _model.checkinResult =
                                        await HymechApiGroupGroup.checkinnewCall
                                            .call(
                                      authToken: FFAppState().accessToken,
                                      checkIn: functions.saveCurrentDateTime(),
                                      location:
                                          currentUserLocationValue?.toString(),
                                      domainUrl: FFAppState().DomainUrl,
                                    );
                                    _shouldSetState = true;
                                    if ((_model.checkinResult?.succeeded ??
                                        true)) {
                                      FFAppState().update(() {
                                        FFAppState().loginstatus = true;
                                        FFAppState().attendanceid =
                                            getJsonField(
                                          (_model.checkinResult?.jsonBody ??
                                              ''),
                                          r'''$.insert_hr_attendance.returning[0].id''',
                                        );
                                      });
                                      await Future.delayed(
                                          const Duration(milliseconds: 1000));
                                      setState(() {
                                        _model.loader = false;
                                        _model.attendanceStatus = true;
                                      });
                                      setState(() {
                                        _model.checkIn =
                                            functions.saveCurrentDateTime();
                                      });
                                      setState(() {
                                        FFAppState().Attendence = true;
                                      });
                                      setState(() =>
                                          _model.apiRequestCompleter1 = null);
                                      await _model
                                          .waitForApiRequestCompleted1();
                                      setState(() =>
                                          _model.apiRequestCompleter2 = null);
                                      await _model
                                          .waitForApiRequestCompleted2();
                                      null?.cancel();
                                      null?.cancel();
                                      _model.instantTimerStart =
                                          InstantTimer.periodic(
                                        duration: Duration(milliseconds: 1000),
                                        callback: (timer) async {
                                          setState(() {
                                            _model.attendanceTime = functions
                                                .attendanceWorkingHoursCalculation(
                                                    _model.checkIn);
                                          });
                                        },
                                        startImmediately: true,
                                      );
                                    } else {
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    await showAlignedDialog(
                                      context: context,
                                      isGlobal: true,
                                      avoidOverflow: false,
                                      targetAnchor: AlignmentDirectional(
                                              0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      followerAnchor: AlignmentDirectional(
                                              0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      builder: (dialogContext) {
                                        return Material(
                                          color: Colors.transparent,
                                          child: GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode),
                                            child: CheckinPopupWidget(
                                              type: 'checkin',
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    if (_shouldSetState) setState(() {});
                                  },
                                  child: Image.asset(
                                    'assets/images/checkin.png',
                                    width: 150.0,
                                    height: 150.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        Text(
                          FFAppState().loginstatus
                              ? 'Click To Check Out'
                              : 'Click To Check In',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter1 ??=
                            Completer<ApiCallResponse>()
                              ..complete(HymechApiGroupGroup
                                  .checkPresentAttendanceCall
                                  .call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                              )))
                        .future,
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return AttendanceShimmerWidget();
                      }
                      final containerCheckPresentAttendanceResponse =
                          snapshot.data!;
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: FutureBuilder<ApiCallResponse>(
                          future: (_model.apiRequestCompleter2 ??=
                                  Completer<ApiCallResponse>()
                                    ..complete(HymechApiGroupGroup
                                        .findCheckInOrOutCall
                                        .call(
                                      authToken: FFAppState().accessToken,
                                      domainUrl: FFAppState().DomainUrl,
                                    )))
                              .future,
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFF47E171),
                                    ),
                                  ),
                                ),
                              );
                            }
                            final rowFindCheckInOrOutResponse = snapshot.data!;
                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 9.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.clock,
                                          color: Color(0xFFFBB876),
                                          size: 30.0,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          HymechApiGroupGroup
                                                      .checkPresentAttendanceCall
                                                      .attendancelist(
                                                        containerCheckPresentAttendanceResponse
                                                            .jsonBody,
                                                      )
                                                      .length ==
                                                  0
                                              ? '- - : - -'
                                              : functions
                                                  .attendanceListTimeFormat(
                                                      HymechApiGroupGroup
                                                          .findCheckInOrOutCall
                                                          .checkinTime(
                                                            rowFindCheckInOrOutResponse
                                                                .jsonBody,
                                                          )
                                                          .toString()),
                                          '- - : - -',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '1skbzld2' /* Check In */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 9.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.clock,
                                          color: Color(0xFFEF6D6F),
                                          size: 30.0,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          HymechApiGroupGroup
                                                      .checkPresentAttendanceCall
                                                      .attendancelist(
                                                        containerCheckPresentAttendanceResponse
                                                            .jsonBody,
                                                      )
                                                      .length ==
                                                  0
                                              ? '- - : - -'
                                              : valueOrDefault<String>(
                                                  (HymechApiGroupGroup
                                                                  .findCheckInOrOutCall
                                                                  .isCheckout(
                                                                    rowFindCheckInOrOutResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString() ==
                                                              'null') &&
                                                          (HymechApiGroupGroup
                                                                  .findCheckInOrOutCall
                                                                  .checkinTime(
                                                                    rowFindCheckInOrOutResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString() !=
                                                              'null')
                                                      ? '- - : - -'
                                                      : functions
                                                          .attendanceListTimeFormat(
                                                              HymechApiGroupGroup
                                                                  .findCheckInOrOutCall
                                                                  .isCheckout(
                                                                    rowFindCheckInOrOutResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                  '- - : - -',
                                                ),
                                          '- - : - -',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'qyzuubc7' /* Check Out */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 9.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.clock,
                                          color: Color(0xFF80C29E),
                                          size: 30.0,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          HymechApiGroupGroup
                                                      .checkPresentAttendanceCall
                                                      .attendancelist(
                                                        containerCheckPresentAttendanceResponse
                                                            .jsonBody,
                                                      )
                                                      .length ==
                                                  0
                                              ? '- - : - -'
                                              : ((HymechApiGroupGroup
                                                                  .findCheckInOrOutCall
                                                                  .checkinTime(
                                                                    rowFindCheckInOrOutResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString() !=
                                                              null &&
                                                          HymechApiGroupGroup
                                                                  .findCheckInOrOutCall
                                                                  .checkinTime(
                                                                    rowFindCheckInOrOutResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString() !=
                                                              '') &&
                                                      (HymechApiGroupGroup
                                                              .findCheckInOrOutCall
                                                              .isCheckout(
                                                                rowFindCheckInOrOutResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString() !=
                                                          'null')
                                                  ? functions
                                                      .attendanceGerWorkingHours(
                                                          HymechApiGroupGroup
                                                              .findCheckInOrOutCall
                                                              .checkinTime(
                                                                rowFindCheckInOrOutResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString(),
                                                          HymechApiGroupGroup
                                                              .findCheckInOrOutCall
                                                              .isCheckout(
                                                                rowFindCheckInOrOutResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString())
                                                  : (_model.attendanceTime !=
                                                              null &&
                                                          _model.attendanceTime !=
                                                              ''
                                                      ? _model.attendanceTime
                                                      : '- - : - -')),
                                          ' - - : - -',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '5a3xuj9w' /* Working Hours */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
