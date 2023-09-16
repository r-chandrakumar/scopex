import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'work_order_details_model.dart';
export 'work_order_details_model.dart';

class WorkOrderDetailsWidget extends StatefulWidget {
  const WorkOrderDetailsWidget({
    Key? key,
    required this.workorderid,
    required this.workordername,
  }) : super(key: key);

  final int? workorderid;
  final String? workordername;

  @override
  _WorkOrderDetailsWidgetState createState() => _WorkOrderDetailsWidgetState();
}

class _WorkOrderDetailsWidgetState extends State<WorkOrderDetailsWidget> {
  late WorkOrderDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkOrderDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        _model.taskinforesultOnload =
            await ManufacturingApiGroupGroup.workOrderViewCall.call(
          domainUrl: FFAppState().DomainUrl,
          authToken: FFAppState().accessToken,
          workOrderId: widget.workorderid,
        );
        if ((_model.taskinforesultOnload?.succeeded ?? true)) {
          if (ManufacturingApiGroupGroup.workOrderViewCall
                  .workOrderFinishedDate(
                    (_model.taskinforesultOnload?.jsonBody ?? ''),
                  )
                  .toString() ==
              'null') {
            _model.periodicstarttime?.cancel();
            null?.cancel();
            _model.periodicstarttime = InstantTimer.periodic(
              duration: Duration(milliseconds: 1000),
              callback: (timer) async {
                setState(() {
                  _model.tasktime = functions.attendanceWorkingHoursCalculation(
                      ManufacturingApiGroupGroup.workOrderViewCall
                          .workOrderStartDate(
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
              null?.cancel();
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
            widget.workordername!,
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
                        widget.workorderid,
                        ParamType.int,
                      ),
                      'taskname': serializeParam(
                        widget.workordername,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<ApiCallResponse>(
                future:
                    (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                          ..complete(
                              ManufacturingApiGroupGroup.workOrderViewCall.call(
                            domainUrl: FFAppState().DomainUrl,
                            authToken: FFAppState().accessToken,
                            workOrderId: widget.workorderid,
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
                  final columnWorkOrderViewResponse = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            13.0, 13.0, 13.0, 13.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(11.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
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
                                                    ManufacturingApiGroupGroup
                                                                .workOrderViewCall
                                                                .workOrderFinishedDate(
                                                                  columnWorkOrderViewResponse
                                                                      .jsonBody,
                                                                )
                                                                .toString() ==
                                                            'null'
                                                        ? functions.isNull(
                                                            _model.tasktime)
                                                        : '00:00:00',
                                                    '00:00:00',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                      children: [
                                        Container(
                                          width: 100.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          child: Text(
                                            ManufacturingApiGroupGroup
                                                .workOrderViewCall
                                                .workOrderState(
                                                  columnWorkOrderViewResponse
                                                      .jsonBody,
                                                )
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'gyygo93j' /* Manufacturing  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Text(
                                  ManufacturingApiGroupGroup.workOrderViewCall
                                      .mRPName(
                                        columnWorkOrderViewResponse.jsonBody,
                                      )
                                      .toString(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'cbxsqywj' /* Work Center */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          ManufacturingApiGroupGroup
                                              .workOrderViewCall
                                              .workCenterName(
                                                columnWorkOrderViewResponse
                                                    .jsonBody,
                                              )
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '9dw7wguo' /* Date Assign */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            functions.convertDateTimeFormat(
                                                ManufacturingApiGroupGroup
                                                    .workOrderViewCall
                                                    .workOrderPlannedStartDate(
                                                      columnWorkOrderViewResponse
                                                          .jsonBody,
                                                    )
                                                    .toString()),
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ex9hdpqu' /* Planned Hours */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          ManufacturingApiGroupGroup
                                              .workOrderViewCall
                                              .expectedDuration(
                                                columnWorkOrderViewResponse
                                                    .jsonBody,
                                              )
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'zmsplo8b' /* Cunsumption */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          ManufacturingApiGroupGroup
                                              .workOrderViewCall
                                              .cunsumption(
                                                columnWorkOrderViewResponse
                                                    .jsonBody,
                                              )
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ului8xed' /* Dead Line */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            functions.convertDateTimeFormat(
                                                ManufacturingApiGroupGroup
                                                    .workOrderViewCall
                                                    .workOrderPlannedFinishedDate(
                                                      columnWorkOrderViewResponse
                                                          .jsonBody,
                                                    )
                                                    .toString()),
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'qinwnq74' /* Worked Hours */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          ManufacturingApiGroupGroup
                                              .workOrderViewCall
                                              .duration(
                                                columnWorkOrderViewResponse
                                                    .jsonBody,
                                              )
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if ((ManufacturingApiGroupGroup.workOrderViewCall
                                        .workOrderState(
                                          columnWorkOrderViewResponse.jsonBody,
                                        )
                                        .toString() !=
                                    'done') &&
                                (ManufacturingApiGroupGroup.workOrderViewCall
                                        .workOrderState(
                                          columnWorkOrderViewResponse.jsonBody,
                                        )
                                        .toString() !=
                                    'cancel'))
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        _model.checkiftaskisOn =
                                            await ManufacturingApiGroupGroup
                                                .workOrderIsOncheckCall
                                                .call(
                                          domainUrl: FFAppState().DomainUrl,
                                          authToken: FFAppState().accessToken,
                                        );
                                        _shouldSetState = true;
                                        if (ManufacturingApiGroupGroup
                                                .workOrderIsOncheckCall
                                                .workOrderId(
                                              (_model.checkiftaskisOn
                                                      ?.jsonBody ??
                                                  ''),
                                            ) ==
                                            null) {
                                          _model.workOrdertimeStart =
                                              await ManufacturingApiGroupGroup
                                                  .startWorkOrderCall
                                                  .call(
                                            domainUrl: FFAppState().DomainUrl,
                                            authToken: FFAppState().accessToken,
                                            workOrderId: widget.workorderid,
                                          );
                                          _shouldSetState = true;
                                          if ((_model.workOrdertimeStart
                                                  ?.succeeded ??
                                              true)) {
                                            _model.taskinforesultStarttimer =
                                                await ManufacturingApiGroupGroup
                                                    .workOrderViewCall
                                                    .call(
                                              domainUrl: FFAppState().DomainUrl,
                                              authToken:
                                                  FFAppState().accessToken,
                                              workOrderId: widget.workorderid,
                                            );
                                            _shouldSetState = true;
                                            if ((_model.taskinforesultStarttimer
                                                    ?.succeeded ??
                                                true)) {
                                              if (ManufacturingApiGroupGroup
                                                      .workOrderViewCall
                                                      .workOrderState(
                                                        (_model.taskinforesultStarttimer
                                                                ?.jsonBody ??
                                                            ''),
                                                      )
                                                      .toString() ==
                                                  'null') {
                                                null?.cancel();
                                                null?.cancel();
                                                setState(() =>
                                                    _model.apiRequestCompleter =
                                                        null);
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
                                                              ManufacturingApiGroupGroup
                                                                  .workOrderViewCall
                                                                  .workOrderState(
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
                                                '${ManufacturingApiGroupGroup.workOrderIsOncheckCall.workOrderName(
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
                                        'cka2ds8w' /* Start */,
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
                                  if (ManufacturingApiGroupGroup
                                          .workOrderViewCall
                                          .workOrderFinishedDate(
                                            columnWorkOrderViewResponse
                                                .jsonBody,
                                          )
                                          .toString() ==
                                      'null')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 15.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          _model.workOrderTimestopResult =
                                              await ManufacturingApiGroupGroup
                                                  .pauseWorkOrderCall
                                                  .call(
                                            domainUrl: FFAppState().DomainUrl,
                                            authToken: FFAppState().accessToken,
                                            workOrderId: widget.workorderid,
                                          );
                                          _shouldSetState = true;
                                          if ((_model.workOrderTimestopResult
                                                  ?.succeeded ??
                                              true)) {
                                            setState(() => _model
                                                .apiRequestCompleter = null);
                                            await _model
                                                .waitForApiRequestCompleted();
                                            null?.cancel();
                                            null?.cancel();
                                          } else {
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }

                                          if (_shouldSetState) setState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'g7fw6x7j' /* Stop */,
                                        ),
                                        options: FFButtonOptions(
                                          width: 100.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
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
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
