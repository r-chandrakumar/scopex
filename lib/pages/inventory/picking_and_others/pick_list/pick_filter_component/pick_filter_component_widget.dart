import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pick_filter_component_model.dart';
export 'pick_filter_component_model.dart';

class PickFilterComponentWidget extends StatefulWidget {
  const PickFilterComponentWidget({
    Key? key,
    this.state,
    required this.requisation,
  }) : super(key: key);

  final String? state;
  final int? requisation;

  @override
  _PickFilterComponentWidgetState createState() =>
      _PickFilterComponentWidgetState();
}

class _PickFilterComponentWidgetState extends State<PickFilterComponentWidget> {
  late PickFilterComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PickFilterComponentModel());

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
      alignment: AlignmentDirectional(-1.00, -1.00),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: AlignmentDirectional(0.00, 1.00),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'tp3b4i06' /* Filter */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 23.0,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'Grn_list_page',
                            queryParameters: {
                              'state': serializeParam(
                                'draft',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              widget.state == 'draft'
                                  ? FlutterFlowTheme.of(context)
                                      .floatingButtonColor
                                  : FlutterFlowTheme.of(context).lineColor,
                              FlutterFlowTheme.of(context).lineColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'wviqqg8f' /* Draft */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: valueOrDefault<Color>(
                                      widget.state == 'draft'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryBtnText
                                          : FlutterFlowTheme.of(context)
                                              .headingColor1,
                                      FlutterFlowTheme.of(context)
                                          .textDarkLightColor,
                                    ),
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'Grn_list_page',
                            queryParameters: {
                              'state': serializeParam(
                                'waiting',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              widget.state == 'waiting'
                                  ? FlutterFlowTheme.of(context)
                                      .floatingButtonColor
                                  : FlutterFlowTheme.of(context).lineColor,
                              FlutterFlowTheme.of(context).lineColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'xanqpw5x' /* Waiting Another operation */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: valueOrDefault<Color>(
                                      widget.state == 'waiting'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryBtnText
                                          : FlutterFlowTheme.of(context)
                                              .textDarkLightColor,
                                      FlutterFlowTheme.of(context)
                                          .textDarkLightColor,
                                    ),
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'Grn_list_page',
                            queryParameters: {
                              'state': serializeParam(
                                'confirmed',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              widget.state == 'confirmed'
                                  ? FlutterFlowTheme.of(context)
                                      .floatingButtonColor
                                  : FlutterFlowTheme.of(context).lineColor,
                              FlutterFlowTheme.of(context).lineColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '2q31pr1u' /* Waiting */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: valueOrDefault<Color>(
                                      widget.state == 'confirmed'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryBtnText
                                          : FlutterFlowTheme.of(context)
                                              .textDarkLightColor,
                                      FlutterFlowTheme.of(context)
                                          .textDarkLightColor,
                                    ),
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'Grn_list_page',
                            queryParameters: {
                              'state': serializeParam(
                                'assigned',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              widget.state == 'assigned'
                                  ? FlutterFlowTheme.of(context)
                                      .floatingButtonColor
                                  : FlutterFlowTheme.of(context).lineColor,
                              FlutterFlowTheme.of(context).lineColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'kp6x9a5d' /* Ready */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: valueOrDefault<Color>(
                                      widget.state == 'assigned'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryBtnText
                                          : FlutterFlowTheme.of(context)
                                              .textDarkLightColor,
                                      FlutterFlowTheme.of(context)
                                          .textDarkLightColor,
                                    ),
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'Grn_list_page',
                            queryParameters: {
                              'state': serializeParam(
                                'done',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              widget.state == 'done'
                                  ? FlutterFlowTheme.of(context)
                                      .floatingButtonColor
                                  : FlutterFlowTheme.of(context).lineColor,
                              FlutterFlowTheme.of(context).lineColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'bsahqagf' /* Done */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: valueOrDefault<Color>(
                                      widget.state == 'done'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryBtnText
                                          : FlutterFlowTheme.of(context)
                                              .textDarkLightColor,
                                      FlutterFlowTheme.of(context)
                                          .textDarkLightColor,
                                    ),
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'Grn_list_page',
                            queryParameters: {
                              'state': serializeParam(
                                'cancel',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              widget.state == 'cancel'
                                  ? FlutterFlowTheme.of(context)
                                      .floatingButtonColor
                                  : FlutterFlowTheme.of(context).lineColor,
                              FlutterFlowTheme.of(context).lineColor,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'nfnkod25' /* Cancelled */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: valueOrDefault<Color>(
                                      widget.state == 'cancel'
                                          ? FlutterFlowTheme.of(context)
                                              .primaryBtnText
                                          : FlutterFlowTheme.of(context)
                                              .textDarkLightColor,
                                      FlutterFlowTheme.of(context)
                                          .textDarkLightColor,
                                    ),
                                    fontSize: 18.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
