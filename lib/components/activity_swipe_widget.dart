import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'activity_swipe_model.dart';
export 'activity_swipe_model.dart';

class ActivitySwipeWidget extends StatefulWidget {
  const ActivitySwipeWidget({Key? key}) : super(key: key);

  @override
  _ActivitySwipeWidgetState createState() => _ActivitySwipeWidgetState();
}

class _ActivitySwipeWidgetState extends State<ActivitySwipeWidget>
    with TickerProviderStateMixin {
  late ActivitySwipeModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1500.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, -10.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActivitySwipeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        FutureBuilder<ApiCallResponse>(
          future: CommonApisGroupGroup.acitivitySwipeDateListCall.call(
            domainUrl: FFAppState().DomainUrl,
            authToken: FFAppState().accessToken,
          ),
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
            final swipeableStackAcitivitySwipeDateListResponse = snapshot.data!;
            return Builder(
              builder: (context) {
                final activity = CommonApisGroupGroup.acitivitySwipeDateListCall
                        .mailActivity(
                          swipeableStackAcitivitySwipeDateListResponse.jsonBody,
                        )
                        ?.toList() ??
                    [];
                return FlutterFlowSwipeableStack(
                  topCardHeightFraction: 0.6,
                  middleCardHeightFraction: 0.7,
                  bottomCardHeightFraction: 0.75,
                  topCardWidthFraction: 0.74,
                  middleCardWidthFraction: 0.68,
                  bottomCardWidthFraction: 0.0,
                  onSwipeFn: (index) {},
                  onLeftSwipe: (index) {},
                  onRightSwipe: (index) {},
                  onUpSwipe: (index) {},
                  onDownSwipe: (index) {},
                  itemBuilder: (context, activityIndex) {
                    final activityItem = activity[activityIndex];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              1.0, 1.0, 1.0, 1.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                  spreadRadius: 3.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .zambezi,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 5.0, 8.0, 5.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  functions
                                                      .convertLeaveDateFormat(
                                                          getJsonField(
                                                    activityItem,
                                                    r'''$.date_deadline''',
                                                  ).toString()),
                                                  '-',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            if (functions
                                                    .jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.mail_activity_type.name''',
                                                )) ==
                                                'Email') {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.email_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            } else if (functions
                                                    .jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.mail_activity_type.name''',
                                                )) ==
                                                'Call') {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.call,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            } else if (functions
                                                    .jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.mail_activity_type.name''',
                                                )) ==
                                                'Meeting') {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.meeting_room,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            } else if (functions
                                                    .jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.mail_activity_type.name''',
                                                )) ==
                                                'To Do') {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.edit_note_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            } else if (functions
                                                    .jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.mail_activity_type.name''',
                                                )) ==
                                                'Upload Document') {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.upload_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            } else if (functions
                                                    .jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.mail_activity_type.name''',
                                                )) ==
                                                'Exception') {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.warning_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            } else if (functions
                                                    .jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.mail_activity_type.name''',
                                                )) ==
                                                'Reminder') {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons
                                                      .notifications_active_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            } else {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Icon(
                                                  Icons.call,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 65.0,
                                                ),
                                              );
                                            }
                                          },
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              getJsonField(
                                                activityItem,
                                                r'''$.mail_activity_type.name''',
                                              ).toString(),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .appBarTextColor,
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (functions.jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.res_name''',
                                                )) !=
                                                null &&
                                            functions.jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.res_name''',
                                                )) !=
                                                '')
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 15.0, 0.0,
                                                          15.0),
                                                  child: Text(
                                                    functions
                                                        .isNull(getJsonField(
                                                      activityItem,
                                                      r'''$.res_name''',
                                                    ).toString())!,
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .appBarTextColor,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (functions.jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.res_name''',
                                                )) !=
                                                null &&
                                            functions.jsonToString(getJsonField(
                                                  activityItem,
                                                  r'''$.res_name''',
                                                )) !=
                                                '')
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 15.0, 0.0,
                                                          15.0),
                                                  child: Text(
                                                    functions
                                                        .isNull(getJsonField(
                                                      activityItem,
                                                      r'''$.summary''',
                                                    ).toString())!,
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .appBarTextColor,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 15.0, 25.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.apiResult5a7 =
                                                await HymechApiGroupGroup
                                                    .activitydeleteCall
                                                    .call(
                                              activityId: getJsonField(
                                                activityItem,
                                                r'''$.id''',
                                              ),
                                              authToken:
                                                  FFAppState().accessToken,
                                              domainUrl: FFAppState().DomainUrl,
                                            );
                                            if ((_model
                                                    .apiResult5a7?.succeeded ??
                                                true)) {
                                              _model.swipeableStackController
                                                  .triggerSwipeLeft();
                                            }

                                            setState(() {});
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Icon(
                                              Icons.cancel,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              size: 50.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 50.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Icon(
                                              Icons.arrow_upward_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .nero,
                                              size: 30.0,
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation']!),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.activitySwipeDone =
                                                await HymechApiGroupGroup
                                                    .activityMarkAsDoneCall
                                                    .call(
                                              id: getJsonField(
                                                activityItem,
                                                r'''$.id''',
                                              ),
                                              authToken:
                                                  FFAppState().accessToken,
                                              domainUrl: FFAppState().DomainUrl,
                                            );
                                            if ((_model.activitySwipeDone
                                                    ?.succeeded ??
                                                true)) {
                                              _model.swipeableStackController
                                                  .triggerSwipeRight();
                                            }

                                            setState(() {});
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                            child: Icon(
                                              Icons.check_circle_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .updateButton,
                                              size: 50.0,
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 10.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: activity.length,
                  controller: _model.swipeableStackController,
                  enableSwipeUp: false,
                  enableSwipeDown: false,
                );
              },
            );
          },
        ),
        Align(
          alignment: AlignmentDirectional(0.81, -0.90),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              setState(() {
                FFAppState().activityRemained = true;
              });
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).btnColor1,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).activeSideBar,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 5.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'lgay1yda' /* Skip */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
