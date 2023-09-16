import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class PDFViewModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

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
