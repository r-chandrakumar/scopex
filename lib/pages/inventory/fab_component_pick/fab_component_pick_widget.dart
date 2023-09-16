import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fab_component_pick_model.dart';
export 'fab_component_pick_model.dart';

class FabComponentPickWidget extends StatefulWidget {
  const FabComponentPickWidget({
    Key? key,
    required this.id,
    this.name,
  }) : super(key: key);

  final int? id;
  final String? name;

  @override
  _FabComponentPickWidgetState createState() => _FabComponentPickWidgetState();
}

class _FabComponentPickWidgetState extends State<FabComponentPickWidget> {
  late FabComponentPickModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FabComponentPickModel());

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
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await actions.downloadPdfFromUrl(
                      context,
                      'https://scopexwebb.mo.vc/api/transfer_print?transferid=${widget.id?.toString()}',
                      '${widget.name}${getCurrentTimestamp.toString()}',
                    );
                  },
                  child: Icon(
                    Icons.file_download,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 25.0,
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
        ),
      ),
    );
  }
}
