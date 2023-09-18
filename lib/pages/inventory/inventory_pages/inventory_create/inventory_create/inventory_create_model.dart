import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InventoryCreateModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? base64String;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for Name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'x36rx852' /* Product Name is required */,
      );
    }

    return null;
  }

  // State field(s) for Type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for Measures widget.
  String? measuresValue;
  FormFieldController<String>? measuresValueController;
  // State field(s) for HSNcode widget.
  TextEditingController? hSNcodeController;
  String? Function(BuildContext, String?)? hSNcodeControllerValidator;
  // State field(s) for Sold widget.
  bool? soldValue;
  // State field(s) for Purchase widget.
  bool? purchaseValue;
  // State field(s) for SoldPrice widget.
  TextEditingController? soldPriceController;
  String? Function(BuildContext, String?)? soldPriceControllerValidator;
  String? _soldPriceControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'g6e0wit2' /* Field is required */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileTobase64] action in Button widget.
  String? uploadFileResult;
  // Stores action output result for [Backend Call - API (Inventory Create)] action in Button widget.
  ApiCallResponse? inventoryCreateResult;
  // Stores action output result for [Backend Call - API (Inventory Image)] action in Button widget.
  ApiCallResponse? uploadInventoryFile;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    nameControllerValidator = _nameControllerValidator;
    soldPriceControllerValidator = _soldPriceControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    nameController?.dispose();
    hSNcodeController?.dispose();
    soldPriceController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
