import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'g_r_n_filter_component_model.dart';
export 'g_r_n_filter_component_model.dart';

class GRNFilterComponentWidget extends StatefulWidget {
  const GRNFilterComponentWidget({
    Key? key,
    this.state,
  }) : super(key: key);

  final String? state;

  @override
  _GRNFilterComponentWidgetState createState() =>
      _GRNFilterComponentWidgetState();
}

class _GRNFilterComponentWidgetState extends State<GRNFilterComponentWidget> {
  late GRNFilterComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GRNFilterComponentModel());

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
                        'cbtu7aac' /* Filter */,
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
                                'zvmb3pme' /* Draft */,
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
                                'vuhlz5vr' /* Waiting Another operation */,
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
                                'cdx53pn7' /* Waiting */,
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
                                '3vs9kume' /* Ready */,
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
                                'z6gq06si' /* Done */,
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
                                'tnz2xp3b' /* Cancelled */,
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
