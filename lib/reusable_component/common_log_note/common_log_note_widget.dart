import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'common_log_note_model.dart';
export 'common_log_note_model.dart';

class CommonLogNoteWidget extends StatefulWidget {
  const CommonLogNoteWidget({
    Key? key,
    this.logmessage,
  }) : super(key: key);

  final List<dynamic>? logmessage;

  @override
  _CommonLogNoteWidgetState createState() => _CommonLogNoteWidgetState();
}

class _CommonLogNoteWidgetState extends State<CommonLogNoteWidget> {
  late CommonLogNoteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonLogNoteModel());

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          decoration: BoxDecoration(),
          child: Builder(
            builder: (context) {
              final logMessage = widget.logmessage?.toList() ?? [];
              return ListView.builder(
                padding: EdgeInsets.fromLTRB(
                  0,
                  15.0,
                  0,
                  15.0,
                ),
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: logMessage.length,
                itemBuilder: (context, logMessageIndex) {
                  final logMessageItem = logMessage[logMessageIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 26.0,
                                  height: 26.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .hashColor,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Icon(
                                      Icons.manage_history_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      size: 15.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 3.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ],
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          functions.taskLogFormat(getJsonField(
                                            logMessageItem,
                                            r'''$.date''',
                                          ).toString()),
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          functions.removeAllHtmlTags(
                                              functions.isNull(getJsonField(
                                            logMessageItem,
                                            r'''$.body''',
                                          ).toString())),
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .rgb,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
