// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:hasura_connect/hasura_connect.dart';

class AttendanceStatus extends StatefulWidget {
  const AttendanceStatus({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _AttendanceStatusState createState() => _AttendanceStatusState();
}

class _AttendanceStatusState extends State<AttendanceStatus> {
  bool attendancestatus = false;
  bool taskon = false;
  late int taskid;
  late String taskname;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Builder(
                builder: (context) {
                  if (attendancestatus) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).success,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        Text(
                          'IN',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).error,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                          child: Text(
                            'OUT',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ),
          if (checkArrayValue(FFAppState().RoleAccess.toList(), 'Project') ??
              true)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
              child: Builder(
                builder: (context) {
                  if (taskon) {
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (taskid != null) {
                          Navigator.pop(context);
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.task_alt,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 18,
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                taskname.maybeHandleOverflow(
                                  maxChars: 10,
                                  replacement: '…',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.task_alt,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 18,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Text(
                            'Not Started',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 14,
                                ),
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  checkArrayValue(List<dynamic> array, String value) {
    if (array.contains(value)) {
      return true;
    } else {
      return false;
    }
  }

  attendancesubscribtion() async {
    String domainUrl = FFAppState().DomainUrl;
    String authtoken = FFAppState().accessToken;
    if (authtoken != "" || authtoken != 'null') {
      String url = 'https://$domainUrl/v1/graphql';
      HasuraConnect hasuraConnect = HasuraConnect(url, headers: {
        "x-hasura-admin-secret": authtoken,
        // Add any other headers if needed
      });
      String docSubscription = """
    subscription attendanceSubscription {
      hr_attendance(order_by: {id: desc}, where: {check_out: {_is_null: true}}) {
        check_in
        check_out
        id
      }
    }
""";

      Snapshot snapshot = await hasuraConnect.subscription(docSubscription);
      snapshot.listen((data) {
        print(data);
      }).onError((err) {
        print(err);
      });
    }
  }
}
