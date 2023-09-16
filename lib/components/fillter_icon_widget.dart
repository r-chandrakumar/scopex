import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fillter_icon_model.dart';
export 'fillter_icon_model.dart';

class FillterIconWidget extends StatefulWidget {
  const FillterIconWidget({Key? key}) : super(key: key);

  @override
  _FillterIconWidgetState createState() => _FillterIconWidgetState();
}

class _FillterIconWidgetState extends State<FillterIconWidget> {
  late FillterIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FillterIconModel());

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

    return Icon(
      Icons.filter_list,
      color: FlutterFlowTheme.of(context).textDarkLightColor,
      size: 24.0,
    );
  }
}
