import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_component_model.dart';
export 'menu_component_model.dart';

class MenuComponentWidget extends StatefulWidget {
  const MenuComponentWidget({Key? key}) : super(key: key);

  @override
  _MenuComponentWidgetState createState() => _MenuComponentWidgetState();
}

class _MenuComponentWidgetState extends State<MenuComponentWidget> {
  late MenuComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuComponentModel());

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
      Icons.menu_rounded,
      color: FlutterFlowTheme.of(context).appBarTextColor,
      size: 24.0,
    );
  }
}
