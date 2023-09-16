import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_common_model.dart';
export 'filter_common_model.dart';

class FilterCommonWidget extends StatefulWidget {
  const FilterCommonWidget({Key? key}) : super(key: key);

  @override
  _FilterCommonWidgetState createState() => _FilterCommonWidgetState();
}

class _FilterCommonWidgetState extends State<FilterCommonWidget> {
  late FilterCommonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterCommonModel());

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
      color: FlutterFlowTheme.of(context).appBarTextColor,
      size: 24.0,
    );
  }
}
