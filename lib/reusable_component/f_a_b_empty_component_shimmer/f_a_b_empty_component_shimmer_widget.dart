import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_a_b_empty_component_shimmer_model.dart';
export 'f_a_b_empty_component_shimmer_model.dart';

class FABEmptyComponentShimmerWidget extends StatefulWidget {
  const FABEmptyComponentShimmerWidget({Key? key}) : super(key: key);

  @override
  _FABEmptyComponentShimmerWidgetState createState() =>
      _FABEmptyComponentShimmerWidgetState();
}

class _FABEmptyComponentShimmerWidgetState
    extends State<FABEmptyComponentShimmerWidget> {
  late FABEmptyComponentShimmerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FABEmptyComponentShimmerModel());

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

    return Container();
  }
}
