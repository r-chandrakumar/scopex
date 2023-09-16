import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'back_buttton_component_model.dart';
export 'back_buttton_component_model.dart';

class BackButttonComponentWidget extends StatefulWidget {
  const BackButttonComponentWidget({Key? key}) : super(key: key);

  @override
  _BackButttonComponentWidgetState createState() =>
      _BackButttonComponentWidgetState();
}

class _BackButttonComponentWidgetState
    extends State<BackButttonComponentWidget> {
  late BackButttonComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackButttonComponentModel());

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
      Icons.arrow_back_ios_rounded,
      color: FlutterFlowTheme.of(context).appBarTextColor,
      size: 24.0,
    );
  }
}
