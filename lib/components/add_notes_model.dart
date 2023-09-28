import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/permissions_util.dart';
import 'add_notes_widget.dart' show AddNotesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';

class AddNotesModel extends FlutterFlowModel<AddNotesWidget> {
  ///  Local state fields for this component.

  bool newNotes = false;

  String attachmentType = 'empty';

  String? base64String = '';

  bool audioStatus = false;

  ///  State fields for stateful widgets in this component.

  Record? audioRecorder;
  String? recordedAudio;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
