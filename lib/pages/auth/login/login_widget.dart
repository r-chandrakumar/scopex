import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
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
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.9, 0.9),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
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
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
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
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textFieldOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 400.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 600.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: Offset(0.7, 0.7),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        context.pushNamed('Welcome');

        return;
      } else {
        return;
      }
    });

    _model.cinNumberController ??= TextEditingController();
    _model.urlController ??= TextEditingController();
    _model.webUrlController ??= TextEditingController();
    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).secondaryBackground,
                  FlutterFlowTheme.of(context).secondaryBackground
                ],
                stops: [0.3, 1.0],
                begin: AlignmentDirectional(1.0, -1.0),
                end: AlignmentDirectional(-1.0, 1.0),
              ),
            ),
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              maxWidth: 530.0,
                            ),
                            decoration: BoxDecoration(),
                            child: Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 50.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? 'assets/images/logo_W.png'
                                                : 'assets/images/logo_b.png',
                                            height: 60.0,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'rowOnPageLoadAnimation1']!),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'u0wonzhy' /* Use the form below to access y... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              useGoogleFonts: false,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation1']!),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Builder(
                                              builder: (context) {
                                                if (!isWeb) {
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            maxWidth: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.9,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .cinNumberController,
                                                              onChanged: (_) =>
                                                                  EasyDebounce
                                                                      .debounce(
                                                                '_model.cinNumberController',
                                                                Duration(
                                                                    milliseconds:
                                                                        2000),
                                                                () async {
                                                                  _model.checkURl =
                                                                      await UrlCheckCall
                                                                          .call();
                                                                  if ((_model
                                                                          .checkURl
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    if (functions.cinExistCheck(
                                                                            (UrlCheckCall.cin(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            (UrlCheckCall.graphUrl(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            _model.cinNumberController.text,
                                                                            (UrlCheckCall.url(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            'domain') !=
                                                                        'nodata') {
                                                                      setState(
                                                                          () {
                                                                        _model.cinexist =
                                                                            false;
                                                                      });
                                                                      FFAppState()
                                                                          .update(
                                                                              () {
                                                                        FFAppState().DomainUrl = functions.cinExistCheck(
                                                                            (UrlCheckCall.cin(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            (UrlCheckCall.graphUrl(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            _model.cinNumberController.text,
                                                                            (UrlCheckCall.url(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            'domain')!;
                                                                        FFAppState().WebUrl = functions.cinExistCheck(
                                                                            (UrlCheckCall.cin(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            (UrlCheckCall.graphUrl(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            _model.cinNumberController.text,
                                                                            (UrlCheckCall.url(
                                                                              (_model.checkURl?.jsonBody ?? ''),
                                                                            ) as List)
                                                                                .map<String>((s) => s.toString())
                                                                                .toList()
                                                                                ?.toList(),
                                                                            'web')!;
                                                                      });
                                                                    } else {
                                                                      setState(
                                                                          () {
                                                                        _model.cinexist =
                                                                            false;
                                                                      });
                                                                    }
                                                                  } else {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Error While CIN check',
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
                                                              ),
                                                              textCapitalization:
                                                                  TextCapitalization
                                                                      .characters,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'ytmeprr6' /* Enter CinNumber */,
                                                                ),
                                                                labelStyle:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'u3a077hb' /* Enter your CinNumber */,
                                                                ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.cinexist!
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .success
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                contentPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'outfit',
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                              validator: _model
                                                                  .cinNumberControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                              inputFormatters: [
                                                                FilteringTextInputFormatter
                                                                    .allow(RegExp(
                                                                        '[a-zA-Z]'))
                                                              ],
                                                            ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'textFieldOnPageLoadAnimation1']!),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                } else {
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 100.0,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .urlController,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.urlController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          2000),
                                                                  () async {
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                              .DomainUrl =
                                                                          _model
                                                                              .urlController
                                                                              .text;
                                                                    });
                                                                  },
                                                                ),
                                                                textCapitalization:
                                                                    TextCapitalization
                                                                        .none,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'hnyhxqto' /* Enter Url */,
                                                                  ),
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'mdo79t7q' /* Graphql Url */,
                                                                  ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          24.0,
                                                                          0.0,
                                                                          24.0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'outfit',
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                validator: _model
                                                                    .urlControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'textFieldOnPageLoadAnimation2']!),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 100.0,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                    .webUrlController,
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  '_model.webUrlController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          2000),
                                                                  () async {
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                              .WebUrl =
                                                                          _model
                                                                              .webUrlController
                                                                              .text;
                                                                    });
                                                                  },
                                                                ),
                                                                textCapitalization:
                                                                    TextCapitalization
                                                                        .none,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'zsja001a' /* Enter Url */,
                                                                  ),
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'pj35fp3p' /* Web Url */,
                                                                  ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          24.0,
                                                                          0.0,
                                                                          24.0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'outfit',
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                validator: _model
                                                                    .webUrlControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'textFieldOnPageLoadAnimation3']!),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 10.0)),
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (_model.cinexist ?? true)
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 1.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'c7635rcl' /* Company Not Registered */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily: 'outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  useGoogleFonts: false,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation2']!),
                                        ),
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.emailAddressController,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '090szzpn' /* Email Address */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'fu9h2cwk' /* Enter your email here... */,
                                                ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 24.0,
                                                            0.0, 24.0),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'outfit',
                                                        useGoogleFonts: false,
                                                      ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              validator: _model
                                                  .emailAddressControllerValidator
                                                  .asValidator(context),
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation4']!),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller:
                                                  _model.passwordController,
                                              obscureText:
                                                  !_model.passwordVisibility,
                                              decoration: InputDecoration(
                                                labelText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'z5ge64nk' /* Password */,
                                                ),
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '0f9ezf0n' /* Enter your password here... */,
                                                ),
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(16.0, 24.0,
                                                            24.0, 24.0),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => _model
                                                            .passwordVisibility =
                                                        !_model
                                                            .passwordVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _model.passwordVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 22.0,
                                                  ),
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                              validator: _model
                                                  .passwordControllerValidator
                                                  .asValidator(context),
                                            ).animateOnPageLoad(animationsMap[
                                                'textFieldOnPageLoadAnimation5']!),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: FFButtonWidget(
                                              onPressed: _model.cinexist!
                                                  ? null
                                                  : () async {
                                                      var _shouldSetState =
                                                          false;
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      if (!_model.cinexist!) {
                                                        _model.loginResult =
                                                            await HymechApiGroupGroup
                                                                .loginCall
                                                                .call(
                                                          email: _model
                                                              .emailAddressController
                                                              .text,
                                                          password: _model
                                                              .passwordController
                                                              .text,
                                                          domainUrl:
                                                              FFAppState()
                                                                  .DomainUrl,
                                                        );
                                                        _shouldSetState = true;
                                                        if (HymechApiGroupGroup
                                                                .loginCall
                                                                .loginResultData(
                                                              (_model.loginResult
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            null) {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState().email =
                                                                HymechApiGroupGroup
                                                                    .loginCall
                                                                    .email(
                                                                      (_model.loginResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    .toString();
                                                            FFAppState().name =
                                                                HymechApiGroupGroup
                                                                    .loginCall
                                                                    .userName(
                                                                      (_model.loginResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    .toString();
                                                            FFAppState()
                                                                    .accessToken =
                                                                HymechApiGroupGroup
                                                                    .loginCall
                                                                    .accessToken(
                                                                      (_model.loginResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    .toString();
                                                            FFAppState()
                                                                    .companyid =
                                                                HymechApiGroupGroup
                                                                    .loginCall
                                                                    .currentcompany(
                                                              (_model.loginResult
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            );
                                                            FFAppState()
                                                                    .RoleAccess =
                                                                functions
                                                                    .roleAccessPushSingleArray((HymechApiGroupGroup
                                                                            .loginCall
                                                                            .useraccess(
                                                                      (_model.loginResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ) as List)
                                                                        .map<String>((s) => s
                                                                            .toString())
                                                                        .toList()
                                                                        ?.toList())!
                                                                    .toList()
                                                                    .cast<
                                                                        String>();
                                                            FFAppState()
                                                                .currencySymbol = HymechApiGroupGroup
                                                                            .loginCall
                                                                            .currency(
                                                                              (_model.loginResult?.jsonBody ?? ''),
                                                                            )
                                                                            .toString() !=
                                                                        null &&
                                                                    HymechApiGroupGroup
                                                                            .loginCall
                                                                            .currency(
                                                                              (_model.loginResult?.jsonBody ?? ''),
                                                                            )
                                                                            .toString() !=
                                                                        ''
                                                                ? HymechApiGroupGroup
                                                                    .loginCall
                                                                    .currency(
                                                                      (_model.loginResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    .toString()
                                                                : '₹';
                                                            FFAppState()
                                                                .currencyId = HymechApiGroupGroup
                                                                        .loginCall
                                                                        .currencyId(
                                                                      (_model.loginResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ) !=
                                                                    null
                                                                ? HymechApiGroupGroup
                                                                    .loginCall
                                                                    .currencyId(
                                                                    (_model.loginResult
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                : 20;
                                                            FFAppState()
                                                                .RoleFullList = (HymechApiGroupGroup
                                                                    .loginCall
                                                                    .useraccess(
                                                              (_model.loginResult
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) as List)
                                                                .map<String>((s) =>
                                                                    s.toString())
                                                                .toList()!
                                                                .toList()
                                                                .cast<String>();
                                                            FFAppState()
                                                                    .LoginID =
                                                                HymechApiGroupGroup
                                                                    .loginCall
                                                                    .loginID(
                                                              (_model.loginResult
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            );
                                                          });
                                                          await requestPermission(
                                                              notificationsPermission);

                                                          context.pushNamed(
                                                              'CEO_Dashboard');

                                                          if (isAndroid ==
                                                              true) {
                                                            if (FFAppState()
                                                                        .onesignalId ==
                                                                    null ||
                                                                FFAppState()
                                                                        .onesignalId ==
                                                                    '') {
                                                              await actions
                                                                  .setOnesignal(
                                                                context,
                                                                'be6ba2a6-a8f9-4675-bee1-aaa93f046ad7',
                                                                FFAppState()
                                                                    .DomainUrl,
                                                                FFAppState()
                                                                    .accessToken,
                                                              );
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
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Invalid Credentials'),
                                                                content: Text(
                                                                    'Email Id Or Password invalid'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Company Not Found',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                        if (_shouldSetState)
                                                          setState(() {});
                                                        return;
                                                      }

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                    },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'qkt8uh1g' /* Login */,
                                              ),
                                              options: FFButtonOptions(
                                                height: 50.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .loginBtnColor1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'outfit',
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                                elevation: 2.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'buttonOnPageLoadAnimation1']!),
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'rowOnPageLoadAnimation2']!),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('forgetPassword');
                            },
                            text: FFLocalizations.of(context).getText(
                              'u05irbtd' /* Forgot Password? */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0x00FFFFFF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['buttonOnPageLoadAnimation2']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 80.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '95hnnlxz' /* Haven’t account please */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'outfit',
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ok60m8fq' /* Sign Up */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'outfit',
                                            color: FlutterFlowTheme.of(context)
                                                .orange,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
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
