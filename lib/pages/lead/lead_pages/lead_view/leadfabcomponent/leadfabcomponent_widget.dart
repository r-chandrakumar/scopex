import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reusable_component/f_a_b_empty_component_shimmer/f_a_b_empty_component_shimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'leadfabcomponent_model.dart';
export 'leadfabcomponent_model.dart';

class LeadfabcomponentWidget extends StatefulWidget {
  const LeadfabcomponentWidget({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int? id;

  @override
  _LeadfabcomponentWidgetState createState() => _LeadfabcomponentWidgetState();
}

class _LeadfabcomponentWidgetState extends State<LeadfabcomponentWidget> {
  late LeadfabcomponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeadfabcomponentModel());

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
      alignment: AlignmentDirectional(1.00, 1.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 16.0, 16.0),
        child: FutureBuilder<ApiCallResponse>(
          future: HymechApiGroupGroup.crmViewCall.call(
            authToken: FFAppState().accessToken,
            domainUrl: FFAppState().DomainUrl,
            leadId: widget.id,
            startDate: valueOrDefault<String>(
              functions.calculateLastweekStartDate(),
              '-',
            ),
            endDate: valueOrDefault<String>(
              functions.getTodayDate(),
              '-',
            ),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return FABEmptyComponentShimmerWidget();
            }
            final columnCrmViewResponse = snapshot.data!;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                        if (isiOS) {
                          await launchUrl(Uri.parse(
                              "sms:${HymechApiGroupGroup.crmViewCall.mobile(
                                    columnCrmViewResponse.jsonBody,
                                  ).toString()}&body=${Uri.encodeComponent('')}"));
                        } else {
                          await launchUrl(Uri(
                            scheme: 'sms',
                            path: HymechApiGroupGroup.crmViewCall
                                .mobile(
                                  columnCrmViewResponse.jsonBody,
                                )
                                .toString(),
                          ));
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'f98m56bs' /* Send SMS */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Container(
                            width: 55.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Icon(
                              Icons.message,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                        await launchUrl(Uri(
                          scheme: 'mailto',
                          path: HymechApiGroupGroup.crmViewCall
                              .email(
                                columnCrmViewResponse.jsonBody,
                              )
                              .toString(),
                        ));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'jx9p3nfj' /* Send Mail */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Container(
                            width: 55.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Icon(
                              Icons.mail_outline_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                        if (HymechApiGroupGroup.crmViewCall
                                    .mobile(
                                      columnCrmViewResponse.jsonBody,
                                    )
                                    .toString() !=
                                null &&
                            HymechApiGroupGroup.crmViewCall
                                    .mobile(
                                      columnCrmViewResponse.jsonBody,
                                    )
                                    .toString() !=
                                '') {
                          await launchUrl(Uri(
                            scheme: 'tel',
                            path: HymechApiGroupGroup.crmViewCall
                                .mobile(
                                  columnCrmViewResponse.jsonBody,
                                )
                                .toString(),
                          ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'No Mobile Number Available',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'fdnm0diw' /* Call Phone */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Container(
                            width: 55.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Icon(
                              Icons.call,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        var _shouldSetState = false;
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Opportunity'),
                                  content:
                                      Text('Do you want convert opportunity'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
                                      child: Text('Confirm'),
                                    ),
                                  ],
                                );
                              },
                            ) ??
                            false;
                        if (confirmDialogResponse) {
                          _model.convertOpportunityCopy =
                              await HymechApiGroupGroup.convertOpportunityCall
                                  .call(
                            authToken: FFAppState().accessToken,
                            leadId: widget.id,
                            domainUrl: FFAppState().DomainUrl,
                          );
                          _shouldSetState = true;
                          if ((_model.convertOpportunityCopy?.succeeded ??
                              true)) {
                            context.goNamed('LeadDashboardOpportunity');

                            if (_shouldSetState) setState(() {});
                            return;
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Something went wrong',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                            if (_shouldSetState) setState(() {});
                            return;
                          }
                        } else {
                          if (_shouldSetState) setState(() {});
                          return;
                        }

                        if (_shouldSetState) setState(() {});
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'zczxqzve' /* Convert To Stages */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Container(
                            width: 55.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Icon(
                              Icons.telegram,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);

                        context.pushNamed(
                          'Leadedit',
                          queryParameters: {
                            'leadid': serializeParam(
                              widget.id,
                              ParamType.int,
                            ),
                            'leadname': serializeParam(
                              HymechApiGroupGroup.crmViewCall
                                  .leadname(
                                    columnCrmViewResponse.jsonBody,
                                  )
                                  .toString(),
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'ia5xi05t' /* Edit */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Container(
                            width: 55.0,
                            height: 55.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: FaIcon(
                                FontAwesomeIcons.edit,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 55.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).menuBarButton,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 25.0,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
