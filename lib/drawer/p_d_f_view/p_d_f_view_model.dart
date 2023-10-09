import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'p_d_f_view_widget.dart' show PDFViewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PDFViewModel extends FlutterFlowModel<PDFViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // Stores action output result for [Custom Action - share] action in Row widget.
  bool? shareOutput;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
