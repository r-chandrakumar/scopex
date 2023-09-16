import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'changelead_model.dart';
export 'changelead_model.dart';

class ChangeleadWidget extends StatefulWidget {
  const ChangeleadWidget({
    Key? key,
    required this.leadid,
    required this.stage,
  }) : super(key: key);

  final int? leadid;
  final int? stage;

  @override
  _ChangeleadWidgetState createState() => _ChangeleadWidgetState();
}

class _ChangeleadWidgetState extends State<ChangeleadWidget> {
  late ChangeleadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeleadModel());

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

    return Align(
      alignment: AlignmentDirectional(0.00, 1.00),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 311.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 45.0,
                      height: 3.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).inputtextColor,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 20.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'p0pcjbje' /* Change Opportunity Status */,
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      color: FlutterFlowTheme.of(context).appBarTextColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: FutureBuilder<ApiCallResponse>(
                                  future:
                                      HymechApiGroupGroup.listCRMStageCall.call(
                                    authToken: FFAppState().accessToken,
                                    domainUrl: FFAppState().DomainUrl,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              Color(0xFF47E171),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final stagesListCRMStageResponse =
                                        snapshot.data!;
                                    return FlutterFlowDropDown<String>(
                                      controller:
                                          _model.stagesValueController ??=
                                              FormFieldController<String>(
                                        _model.stagesValue ??=
                                            widget.stage?.toString(),
                                      ),
                                      options: (getJsonField(
                                        stagesListCRMStageResponse.jsonBody,
                                        r'''$.crm_stage[:].id''',
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!,
                                      optionLabels: (getJsonField(
                                        stagesListCRMStageResponse.jsonBody,
                                        r'''$.crm_stage[:].name''',
                                      ) as List)
                                          .map<String>((s) => s.toString())
                                          .toList()!,
                                      onChanged: (val) => setState(
                                          () => _model.stagesValue = val),
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'yai05fs3' /* Please select */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .hashColor,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  _model.crmStageUpdate =
                                      await HymechApiGroupGroup
                                          .cRMStageUpdateCall
                                          .call(
                                    authToken: FFAppState().accessToken,
                                    leadId: widget.leadid,
                                    stageId: functions
                                        .changeStringToInt(_model.stagesValue),
                                    domainUrl: FFAppState().DomainUrl,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.crmStageUpdate?.succeeded ??
                                      true)) {
                                    context.safePop();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Opportunity Status updated',
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
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Error'),
                                          content:
                                              Text('Error While Update Status'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  's9lwynir' /* Change */,
                                ),
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 48.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color:
                                      FlutterFlowTheme.of(context).changeButton,
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
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
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
          ],
        ),
      ),
    );
  }
}
