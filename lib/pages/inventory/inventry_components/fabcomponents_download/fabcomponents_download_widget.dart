import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fabcomponents_download_model.dart';
export 'fabcomponents_download_model.dart';

class FabcomponentsDownloadWidget extends StatefulWidget {
  const FabcomponentsDownloadWidget({Key? key}) : super(key: key);

  @override
  _FabcomponentsDownloadWidgetState createState() =>
      _FabcomponentsDownloadWidgetState();
}

class _FabcomponentsDownloadWidgetState
    extends State<FabcomponentsDownloadWidget> {
  late FabcomponentsDownloadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FabcomponentsDownloadModel());

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
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Container(
                width: 55.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Icon(
                  Icons.file_download,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 25.0,
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
        ),
      ),
    );
  }
}
