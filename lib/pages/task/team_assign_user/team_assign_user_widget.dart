import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/search_components/non_project_user_search/non_project_user_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'team_assign_user_model.dart';
export 'team_assign_user_model.dart';

class TeamAssignUserWidget extends StatefulWidget {
  const TeamAssignUserWidget({
    Key? key,
    required this.projectid,
    required this.projectname,
    required this.userid,
  }) : super(key: key);

  final int? projectid;
  final String? projectname;
  final List<int>? userid;

  @override
  _TeamAssignUserWidgetState createState() => _TeamAssignUserWidgetState();
}

class _TeamAssignUserWidgetState extends State<TeamAssignUserWidget> {
  late TeamAssignUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamAssignUserModel());

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
      height: 200.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '5c5st8e7' /* Assign Team */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).inputFieldColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  useSafeArea: true,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.viewInsetsOf(context),
                      child: NonProjectUserSearchWidget(
                        userid: widget.userid!,
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).hashColor,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            getJsonField(
                                      FFAppState().ResUserSearch,
                                      r'''$.res_partner.name''',
                                    ) !=
                                    null
                                ? getJsonField(
                                    FFAppState().ResUserSearch,
                                    r'''$.res_partner.name''',
                                  ).toString()
                                : 'Select User',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .inputtextColor,
                                ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  _model.projectUserUpdateRes =
                      await HymechApiGroupGroup.projectUserAssignCall.call(
                    domainUrl: FFAppState().DomainUrl,
                    authToken: FFAppState().accessToken,
                    projectId: widget.projectid,
                    userId: getJsonField(
                      FFAppState().ResUserSearch,
                      r'''$.id''',
                    ),
                  );
                  if ((_model.projectUserUpdateRes?.succeeded ?? true)) {
                    Navigator.pop(context);
                    if (Navigator.of(context).canPop()) {
                      context.pop();
                    }
                    context.pushNamed(
                      'ProjectsDetails',
                      queryParameters: {
                        'projectid': serializeParam(
                          widget.projectid,
                          ParamType.int,
                        ),
                        'projectname': serializeParam(
                          widget.projectname,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Error while assign user on team'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  }

                  setState(() {});
                },
                text: FFLocalizations.of(context).getText(
                  'avxukghx' /* Submit */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
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
    );
  }
}
