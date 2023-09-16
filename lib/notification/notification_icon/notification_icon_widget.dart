import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reusable_component/f_a_b_empty_component_shimmer/f_a_b_empty_component_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_icon_model.dart';
export 'notification_icon_model.dart';

class NotificationIconWidget extends StatefulWidget {
  const NotificationIconWidget({Key? key}) : super(key: key);

  @override
  _NotificationIconWidgetState createState() => _NotificationIconWidgetState();
}

class _NotificationIconWidgetState extends State<NotificationIconWidget> {
  late NotificationIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationIconModel());

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

    return FutureBuilder<ApiCallResponse>(
      future: CommonApisGroupGroup.notificationListCall.call(
        authToken: FFAppState().accessToken,
        domainUrl: FFAppState().DomainUrl,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return FABEmptyComponentShimmerWidget();
        }
        final columnNotificationListResponse = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(-0.02, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                    child: Icon(
                      Icons.notifications_none,
                      color: FlutterFlowTheme.of(context).appBarTextColor,
                      size: 24.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.01, -0.14),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).blueBtnColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          valueOrDefault<String>(
                            CommonApisGroupGroup.notificationListCall
                                .totalCount(
                                  columnNotificationListResponse.jsonBody,
                                )
                                .toString(),
                            '0',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
