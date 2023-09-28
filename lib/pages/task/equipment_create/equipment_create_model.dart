import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/search_components/product_search/product_search_widget.dart';
import '/search_components/project_search/project_search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'equipment_create_widget.dart' show EquipmentCreateWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EquipmentCreateModel extends FlutterFlowModel<EquipmentCreateWidget> {
  ///  Local state fields for this page.

  List<dynamic> equipmentLineList = [];
  void addToEquipmentLineList(dynamic item) => equipmentLineList.add(item);
  void removeFromEquipmentLineList(dynamic item) =>
      equipmentLineList.remove(item);
  void removeAtIndexFromEquipmentLineList(int index) =>
      equipmentLineList.removeAt(index);
  void insertAtIndexInEquipmentLineList(int index, dynamic item) =>
      equipmentLineList.insert(index, item);
  void updateEquipmentLineListAtIndex(int index, Function(dynamic) updateFn) =>
      equipmentLineList[index] = updateFn(equipmentLineList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for QtyText widget.
  TextEditingController? qtyTextController;
  String? Function(BuildContext, String?)? qtyTextControllerValidator;
  String? _qtyTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jco2rpxi' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Equipment Create)] action in Button widget.
  ApiCallResponse? equipmentCreateProject;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    qtyTextControllerValidator = _qtyTextControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    qtyTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
