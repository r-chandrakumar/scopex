import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filtertask_project_model.dart';
export 'filtertask_project_model.dart';

class FiltertaskProjectWidget extends StatefulWidget {
  const FiltertaskProjectWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.stageid,
  }) : super(key: key);

  final int? id;
  final String? name;
  final int? stageid;

  @override
  _FiltertaskProjectWidgetState createState() =>
      _FiltertaskProjectWidgetState();
}

class _FiltertaskProjectWidgetState extends State<FiltertaskProjectWidget> {
  late FiltertaskProjectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FiltertaskProjectModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primarybgwhite,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: FutureBuilder<ApiCallResponse>(
          future: HymechApiGroupGroup.listStageTypesCall.call(
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
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFF47E171),
                    ),
                  ),
                ),
              );
            }
            final statusListListStageTypesResponse = snapshot.data!;
            return Builder(
              builder: (context) {
                final statusList = getJsonField(
                  statusListListStageTypesResponse.jsonBody,
                  r'''$.project_task_type''',
                ).toList();
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(statusList.length, (statusListIndex) {
                    final statusListItem = statusList[statusListIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            FFAppState().projecttaskstatus = getJsonField(
                              statusListItem,
                              r'''$.id''',
                            );
                          });
                          if (Navigator.of(context).canPop()) {
                            context.pop();
                          }
                          context.pushNamed(
                            'ProjectsDetails',
                            queryParameters: {
                              'projectid': serializeParam(
                                widget.id,
                                ParamType.int,
                              ),
                              'projectname': serializeParam(
                                widget.name,
                                ParamType.String,
                              ),
                              'stageid': serializeParam(
                                getJsonField(
                                  statusListItem,
                                  r'''$.id''',
                                ),
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: widget.stageid ==
                                    getJsonField(
                                      statusListItem,
                                      r'''$.id''',
                                    )
                                ? FlutterFlowTheme.of(context).tertiary
                                : FlutterFlowTheme.of(context).accent3,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  getJsonField(
                                    statusListItem,
                                    r'''$.name''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 16.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
