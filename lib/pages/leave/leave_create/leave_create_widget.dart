import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'leave_create_model.dart';
export 'leave_create_model.dart';

class LeaveCreateWidget extends StatefulWidget {
  const LeaveCreateWidget({Key? key}) : super(key: key);

  @override
  _LeaveCreateWidgetState createState() => _LeaveCreateWidgetState();
}

class _LeaveCreateWidgetState extends State<LeaveCreateWidget>
    with TickerProviderStateMixin {
  late LeaveCreateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'circleImageOnPageLoadAnimation': AnimationInfo(
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
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaveCreateModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().accessToken != null &&
          FFAppState().accessToken != '')) {
        context.pushNamed('Login');
      }
    });

    _model.reasonController ??= TextEditingController();

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
            backgroundColor: FlutterFlowTheme.of(context).bLUEWhite,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
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
              FFLocalizations.of(context).getText(
                'rt2hx20h' /* Leave Application */,
              ),
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).appBarTextColor,
                    fontSize: 23.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            actions: [],
            centerTitle: false,
            toolbarHeight: 60.0,
            elevation: 0.8,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primarybgwhite,
            ),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 25.0, 15.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primarybgwhite,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 2.0, 2.0, 2.0),
                                                child: Container(
                                                  width: 76.0,
                                                  height: 76.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    fadeInDuration: Duration(
                                                        milliseconds: 500),
                                                    fadeOutDuration: Duration(
                                                        milliseconds: 500),
                                                    imageUrl: functions
                                                        .imageconverter(
                                                            FFAppState().userid,
                                                            'res.users',
                                                            FFAppState()
                                                                .WebUrl)!,
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'circleImageOnPageLoadAnimation']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFAppState().name,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 15.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                    ),
                                                    Text(
                                                      FFAppState().email,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'columnOnPageLoadAnimation']!),
                                              ),
                                            ],
                                          ),
                                        ),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'fhfl12es' /* Leave Type */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            FutureBuilder<ApiCallResponse>(
                              future:
                                  HymechApiGroupGroup.listLeaveTypeCall.call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.44,
                                      child: DropDownEmptyFullWidthWidget(),
                                    ),
                                  );
                                }
                                final optionValuesListLeaveTypeResponse =
                                    snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller:
                                      _model.optionValuesValueController ??=
                                          FormFieldController<String>(
                                    _model.optionValuesValue ??= '',
                                  ),
                                  options: (HymechApiGroupGroup
                                          .listLeaveTypeCall
                                          .typeId(
                                    optionValuesListLeaveTypeResponse.jsonBody,
                                  ) as List)
                                      .map<String>((s) => s.toString())
                                      .toList()!
                                      .map((e) => e.toString())
                                      .toList(),
                                  optionLabels: (HymechApiGroupGroup
                                          .listLeaveTypeCall
                                          .typeName(
                                    optionValuesListLeaveTypeResponse.jsonBody,
                                  ) as List)
                                      .map<String>((s) => s.toString())
                                      .toList()!
                                      .map((e) => e.toString())
                                      .toList(),
                                  onChanged: (val) async {
                                    setState(
                                        () => _model.optionValuesValue = val);
                                    setState(() {
                                      _model.leavetype =
                                          _model.optionValuesValue == '6'
                                              ? 'permission'
                                              : 'leave';
                                    });
                                  },
                                  height: 50.0,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  hintText: FFLocalizations.of(context).getText(
                                    '8mrr7d1n' /* Select Leave Type */,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primarybgwhite,
                                  elevation: 0.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).hashColor,
                                  borderWidth: 1.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 4.0, 10.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      if (_model.optionValuesValue == '6')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue = newValue!);
                                        if (newValue!) {
                                          setState(() {
                                            _model.leavetype = 'half';
                                          });
                                        } else {
                                          setState(() {
                                            _model.leavetype = 'permission';
                                          });
                                        }
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'lpzbps3q' /* Half Day */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                      Builder(
                        builder: (context) {
                          if (_model.leavetype == 'leave') {
                            return Visibility(
                              visible: _model.leavetype == 'leave',
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'woe4s3mn' /* From */,
                                              ),
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
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .hashColor,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final _datePicked1Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate:
                                                        getCurrentTimestamp,
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (_datePicked1Date !=
                                                      null) {
                                                    safeSetState(() {
                                                      _model.datePicked1 =
                                                          DateTime(
                                                        _datePicked1Date.year,
                                                        _datePicked1Date.month,
                                                        _datePicked1Date.day,
                                                      );
                                                    });
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        functions
                                                            .convertLeaveDateFormat(
                                                                _model
                                                                    .datePicked1
                                                                    ?.toString())!,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.date_range,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'c38gk13r' /* To */,
                                              ),
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
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .hashColor,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (_model.datePicked1 !=
                                                      null) {
                                                    final _datePicked2Date =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          _model.datePicked1!,
                                                      firstDate:
                                                          _model.datePicked1!,
                                                      lastDate: DateTime(2050),
                                                    );

                                                    if (_datePicked2Date !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked2 =
                                                            DateTime(
                                                          _datePicked2Date.year,
                                                          _datePicked2Date
                                                              .month,
                                                          _datePicked2Date.day,
                                                        );
                                                      });
                                                    }
                                                    return;
                                                  } else {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Select To Date First',
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
                                                                .secondary,
                                                      ),
                                                    );
                                                    return;
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        functions
                                                            .convertLeaveDateFormat(
                                                                _model
                                                                    .datePicked2
                                                                    ?.toString())!,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.date_range,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                            );
                          } else if (_model.leavetype == 'half') {
                            return Visibility(
                              visible: _model.leavetype == 'half',
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                's738yvj2' /* Date */,
                                              ),
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
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .hashColor,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final _datePicked3Date =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate:
                                                        getCurrentTimestamp,
                                                    firstDate:
                                                        getCurrentTimestamp,
                                                    lastDate: DateTime(2050),
                                                  );

                                                  if (_datePicked3Date !=
                                                      null) {
                                                    safeSetState(() {
                                                      _model.datePicked3 =
                                                          DateTime(
                                                        _datePicked3Date.year,
                                                        _datePicked3Date.month,
                                                        _datePicked3Date.day,
                                                      );
                                                    });
                                                  }
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        functions
                                                            .convertLeaveDateFormat(
                                                                _model
                                                                    .datePicked3
                                                                    ?.toString())!,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.date_range,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fr8fk22m' /* Day */,
                                              ),
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
                                          FlutterFlowDropDown<String>(
                                            controller:
                                                _model.aMorPMValueController ??=
                                                    FormFieldController<String>(
                                              _model.aMorPMValue ??= '',
                                            ),
                                            options: ['AM', 'PM'],
                                            optionLabels: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fvzaxm0c' /* ForeNoon */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'v08aljv6' /* AfterNoon */,
                                              )
                                            ],
                                            onChanged: (val) => setState(
                                                () => _model.aMorPMValue = val),
                                            width: 300.0,
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primarybgwhite,
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .hashColor,
                                            borderWidth: 1.0,
                                            borderRadius: 8.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (_model.leavetype == 'permission')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hn1plm81' /* Date */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.5,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .hashColor,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 10.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      final _datePicked4Date =
                                                          await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            getCurrentTimestamp,
                                                        firstDate:
                                                            getCurrentTimestamp,
                                                        lastDate:
                                                            DateTime(2050),
                                                      );

                                                      if (_datePicked4Date !=
                                                          null) {
                                                        safeSetState(() {
                                                          _model.datePicked4 =
                                                              DateTime(
                                                            _datePicked4Date
                                                                .year,
                                                            _datePicked4Date
                                                                .month,
                                                            _datePicked4Date
                                                                .day,
                                                          );
                                                        });
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                            functions.convertLeaveDateFormat(
                                                                _model
                                                                    .datePicked4
                                                                    ?.toString())!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons.date_range,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 10.0)),
                                    ),
                                  ),
                                if (_model.leavetype == 'permission')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'qm8e6kqj' /* From */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<double>(
                                                controller: _model
                                                        .fromHourValueController ??=
                                                    FormFieldController<double>(
                                                        null),
                                                options: [
                                                  0.0,
                                                  0.5,
                                                  1.0,
                                                  1.5,
                                                  2.0,
                                                  2.5,
                                                  3.0,
                                                  3.5,
                                                  4.0,
                                                  4.5,
                                                  5.0,
                                                  5.5,
                                                  6.0,
                                                  6.5,
                                                  7.0,
                                                  7.5,
                                                  8.0,
                                                  8.5,
                                                  9.0,
                                                  9.5,
                                                  10.0,
                                                  10.5,
                                                  11.0,
                                                  11.5,
                                                  12.0,
                                                  12.5,
                                                  13.0,
                                                  13.5,
                                                  14.0,
                                                  14.5,
                                                  15.0,
                                                  15.5,
                                                  16.0,
                                                  16.5,
                                                  17.0,
                                                  17.5,
                                                  18.0,
                                                  18.5,
                                                  19.0,
                                                  19.5,
                                                  20.0,
                                                  20.5,
                                                  21.0,
                                                  21.5,
                                                  22.0,
                                                  22.5,
                                                  23.0,
                                                  23.5
                                                ],
                                                optionLabels: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4d0eis6e' /* 12:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '84fnzyju' /* 00:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1v125yrx' /* 01:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pqydle5y' /* 01:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nazv7m3o' /* 02:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'irwhcem0' /* 02:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rji37dau' /* 03:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'clg7ej29' /* 03:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '74etlgpe' /* 04:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1y7e5swl' /* 04:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'g5tgx1d3' /* 05:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'msm6pc4k' /* 05:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xqi5cogh' /* 06:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5cjk87gz' /* 06:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'b0piz65y' /* 07:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ul25q8j5' /* 07:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '53o5co8y' /* 08:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'j6tbzfh1' /* 08:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5vlxuukl' /* 09:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6rxpxkyn' /* 09:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'eq9rs6iu' /* 10:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8br3jpcb' /* 10:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'u5gpeyh6' /* 11:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7l2e3wo8' /* 11:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vn5jd4h1' /* 12:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xo59yvpl' /* 12:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '3ssett8h' /* 01:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8vh9uhel' /* 01:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'b4i3xc0l' /* 02:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5j8x9f72' /* 02:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'v6dkylbk' /* 03:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'a7fvldpj' /* 03:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'm03hgggd' /* 04:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dta2rerq' /* 04:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bxo7bsl2' /* 05:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'avt06djp' /* 05:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1lc85339' /* 06:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8t5ufgta' /* 06:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ir9fj319' /* 07:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'caefqi9h' /* 07:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'n5nfdi09' /* 08:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'y6hrnk4t' /* 08:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xpwh7ryy' /* 09:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'fx870yc3' /* 09:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'w7boaiz5' /* 10:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cq3p7fzj' /* 10:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rxlfztsa' /* 11:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ipwjydi8' /* 11:30 PM */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model.fromHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primarybgwhite,
                                                elevation: 0.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .hashColor,
                                                borderWidth: 1.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'y3jbj05b' /* To */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              FlutterFlowDropDown<double>(
                                                controller: _model
                                                        .toHourValueController ??=
                                                    FormFieldController<double>(
                                                        null),
                                                options: [
                                                  0.0,
                                                  0.5,
                                                  1.0,
                                                  1.5,
                                                  2.0,
                                                  2.5,
                                                  3.0,
                                                  3.5,
                                                  4.0,
                                                  4.5,
                                                  5.0,
                                                  5.5,
                                                  6.0,
                                                  6.5,
                                                  7.0,
                                                  7.5,
                                                  8.0,
                                                  8.5,
                                                  9.0,
                                                  9.5,
                                                  10.0,
                                                  10.5,
                                                  11.0,
                                                  11.5,
                                                  12.0,
                                                  12.5,
                                                  13.0,
                                                  13.5,
                                                  14.0,
                                                  14.5,
                                                  15.0,
                                                  15.5,
                                                  16.0,
                                                  16.5,
                                                  17.0,
                                                  17.5,
                                                  18.0,
                                                  18.5,
                                                  19.0,
                                                  19.5,
                                                  20.0,
                                                  20.5,
                                                  21.0,
                                                  21.5,
                                                  22.0,
                                                  22.5,
                                                  23.0,
                                                  23.5
                                                ],
                                                optionLabels: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'i6t6ndst' /* 12:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wu4lz12n' /* 00:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5wca5wq0' /* 01:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xxp2b2l6' /* 01:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zn73nbwg' /* 02:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'm5acf431' /* 02:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '169b4uqw' /* 03:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uwq24l1c' /* 03:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ic9gnod0' /* 04:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6120yosw' /* 04:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jjnsgob7' /* 05:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cosny86j' /* 05:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'hh8uyiw0' /* 06:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9yuc1atz' /* 06:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '2crulut5' /* 07:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4cj5726w' /* 07:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ypoaof2s' /* 08:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kv22jn88' /* 08:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bmx2vtes' /* 09:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'go37qwoi' /* 09:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6xevznf5' /* 10:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'v46upnl1' /* 10:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'judspzzq' /* 11:00 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'va7q4lym' /* 11:30 AM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7eemlg21' /* 12:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'kpllhlig' /* 12:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ma7792lp' /* 01:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zewvwrv6' /* 01:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '602bzkru' /* 02:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vlfa86iq' /* 02:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'slmsjqbc' /* 03:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '61drgbtf' /* 03:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1pe9xpia' /* 04:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uwf0to9h' /* 04:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1d7xmg4w' /* 05:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'g5wairc6' /* 05:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'fcxlz8xy' /* 06:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5vwik4mw' /* 06:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '4i7qvpwy' /* 07:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'nx6bypah' /* 07:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mau8um0h' /* 08:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xv6mgjus' /* 08:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ed01qwv9' /* 09:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uwckvt0o' /* 09:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gvd9hjju' /* 10:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9xponus4' /* 10:30 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9c1uzbox' /* 11:00 PM */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    't7r2y70a' /* 11:30 PM */,
                                                  )
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model.toHourValue =
                                                        val),
                                                width: 300.0,
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primarybgwhite,
                                                elevation: 0.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .hashColor,
                                                borderWidth: 1.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 10.0)),
                                    ),
                                  ),
                              ],
                            );
                          }
                        },
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                _model.optionValuesValue != '6'
                                    ? 'Number of Days'
                                    : 'Number of Hours',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 10.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).hashColor,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            () {
                                              if (_model.leavetype == 'leave') {
                                                return functions
                                                    .findDaysBetweenTwoDates(
                                                        _model.datePicked1
                                                            ?.toString(),
                                                        _model.datePicked2
                                                            ?.toString())
                                                    .toString();
                                              } else if (_model.leavetype ==
                                                  'permission') {
                                                return valueOrDefault<String>(
                                                  functions
                                                      .findHoursbetweentwo(
                                                          _model.fromHourValue,
                                                          _model.toHourValue)
                                                      .toString(),
                                                  '0',
                                                );
                                              } else {
                                                return '4';
                                              }
                                            }(),
                                            '0',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'yr5q6haz' /* Reason */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _model.reasonController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'io2qu4k8' /* Enter Reason Here */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .inputtextColor,
                                            fontSize: 16.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .hashColor,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(11.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    maxLines: 4,
                                    validator: _model.reasonControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 20.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.optionValuesValue == null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Leave  Type is required',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                              return;
                            }
                            if (_model.leavetype == 'leave') {
                              _model.leavecheckRes = await HymechApiGroupGroup
                                  .checkLeaveTakenCall
                                  .call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                                dateFrom: functions.convertDateFormatToSave(
                                    _model.datePicked1?.toString()),
                                dateTo: functions.convertDateFormatToSave(
                                    _model.datePicked2?.toString()),
                              );
                              _shouldSetState = true;
                              if ((_model.leavecheckRes?.succeeded ?? true)) {
                                if (HymechApiGroupGroup.checkLeaveTakenCall
                                        .leaveList(
                                          (_model.leavecheckRes?.jsonBody ??
                                              ''),
                                        )
                                        .length <=
                                    0) {
                                  _model.leavePostResult =
                                      await HymechApiGroupGroup.createLeaveCall
                                          .call(
                                    holidayStatusId:
                                        functions.changeStringToInt(
                                            _model.optionValuesValue),
                                    dateFrom: functions.convertDateFormatToSave(
                                        _model.datePicked1?.toString()),
                                    dateTo: functions.convertDateFormatToSave(
                                        _model.datePicked2?.toString()),
                                    numberOfDays:
                                        functions.findDaysBetweenTwoDates(
                                            _model.datePicked1?.toString(),
                                            _model.datePicked2?.toString()),
                                    notes: _model.reasonController.text,
                                    authToken: FFAppState().accessToken,
                                    requestDateFrom:
                                        functions.convertDateFormatToSave(
                                            _model.datePicked1?.toString()),
                                    requestDateTo:
                                        functions.convertDateFormatToSave(
                                            _model.datePicked2?.toString()),
                                    domainUrl: FFAppState().DomainUrl,
                                    holidayType: FFAppState().DomainUrl,
                                    privateName: _model.reasonController.text,
                                    requestUnitHours: false,
                                    requestUnitHalf: false,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.leavePostResult?.succeeded ??
                                      true)) {
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context.pushNamed('LeaveList');

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Leave created successfully...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Error While Apply Leave',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Leave already taken in this day',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              }
                            } else if (_model.leavetype == 'half') {
                              _model.halfLeavecheckRes =
                                  await HymechApiGroupGroup.checkLeaveTakenCall
                                      .call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                                dateFrom: functions.convertDateFormatToSave(
                                    _model.datePicked3?.toString()),
                                dateTo: functions.convertDateFormatToSave(
                                    _model.datePicked2?.toString()),
                              );
                              _shouldSetState = true;
                              if ((_model.halfLeavecheckRes?.succeeded ??
                                  true)) {
                                if (HymechApiGroupGroup.checkLeaveTakenCall
                                        .leaveList(
                                          (_model.halfLeavecheckRes?.jsonBody ??
                                              ''),
                                        )
                                        .length <=
                                    0) {
                                  _model.halfLeavePostResult =
                                      await HymechApiGroupGroup.createLeaveCall
                                          .call(
                                    authToken: FFAppState().accessToken,
                                    domainUrl: FFAppState().DomainUrl,
                                    holidayStatusId:
                                        functions.changeStringToInt(
                                            _model.optionValuesValue),
                                    dateFrom: functions.convertDateFormatToSave(
                                        _model.datePicked3?.toString()),
                                    privateName: _model.reasonController.text,
                                    notes: _model.reasonController.text,
                                    requestDateFrom:
                                        functions.convertDateFormatToSave(
                                            _model.datePicked3?.toString()),
                                    holidayType: 'employee',
                                    requestDateFromPeriod: _model.aMorPMValue,
                                    dateTo: functions.convertDateFormatToSave(
                                        _model.datePicked3?.toString()),
                                    requestDateTo:
                                        functions.convertDateFormatToSave(
                                            _model.datePicked3?.toString()),
                                    numberOfDays: 4.0,
                                    requestUnitHalf: true,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.halfLeavePostResult?.succeeded ??
                                      true)) {
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context.pushNamed('LeaveList');

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Leave created successfully...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Error While Apply Leave',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Leave already taken in this day',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              }
                            } else {
                              _model.permissioncheckRes =
                                  await HymechApiGroupGroup.checkLeaveTakenCall
                                      .call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                                dateFrom: functions.convertDateFormatToSave(
                                    _model.datePicked4?.toString()),
                                dateTo: functions.convertDateFormatToSave(
                                    _model.datePicked4?.toString()),
                              );
                              _shouldSetState = true;
                              if ((_model.permissioncheckRes?.succeeded ??
                                  true)) {
                                if (HymechApiGroupGroup.checkLeaveTakenCall
                                        .leaveList(
                                          (_model.permissioncheckRes
                                                  ?.jsonBody ??
                                              ''),
                                        )
                                        .length <=
                                    0) {
                                  _model.permissionPostResult =
                                      await HymechApiGroupGroup.createLeaveCall
                                          .call(
                                    domainUrl: FFAppState().DomainUrl,
                                    authToken: FFAppState().accessToken,
                                    dateFrom: functions.convertDateFormatToSave(
                                        _model.datePicked4?.toString()),
                                    dateTo: functions.convertDateFormatToSave(
                                        _model.datePicked4?.toString()),
                                    holidayStatusId:
                                        functions.changeStringToInt(
                                            _model.optionValuesValue),
                                    holidayType: 'employee',
                                    notes: _model.reasonController.text,
                                    numberOfDays: functions.findHoursbetweentwo(
                                        _model.fromHourValue,
                                        _model.toHourValue),
                                    privateName: _model.reasonController.text,
                                    requestDateFrom:
                                        functions.convertDateFormatToSave(
                                            _model.datePicked4?.toString()),
                                    requestDateTo:
                                        functions.convertDateFormatToSave(
                                            _model.datePicked4?.toString()),
                                    requestHourFrom:
                                        _model.fromHourValue?.toString(),
                                    requestHourTo:
                                        _model.toHourValue?.toString(),
                                    requestUnitHours: true,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.permissionPostResult?.succeeded ??
                                      true)) {
                                    if (Navigator.of(context).canPop()) {
                                      context.pop();
                                    }
                                    context.pushNamed('LeaveList');

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Leave created successfully...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Error While Apply Leave',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Leave already taken in this day',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              }
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'js0t7si1' /* Apply Leave */,
                          ),
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).applyButton,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
