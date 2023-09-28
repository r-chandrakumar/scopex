import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'request_part_add_widget.dart' show RequestPartAddWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RequestPartAddModel extends FlutterFlowModel<RequestPartAddWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for QtyText widget.
  TextEditingController? qtyTextController;
  String? Function(BuildContext, String?)? qtyTextControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    qtyTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
