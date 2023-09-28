import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateLeadModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for listsource widget.
  String? listsourceValue;
  FormFieldController<String>? listsourceValueController;
  // State field(s) for leadname widget.
  TextEditingController? leadnameController;
  String? Function(BuildContext, String?)? leadnameControllerValidator;
  String? _leadnameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tjvm0j7d' /* Lead Name required */,
      );
    }

    return null;
  }

  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2x9g281x' /* Email required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '16hb4kj6' /* Enter Valid Email */,
      );
    }
    return null;
  }

  // State field(s) for number widget.
  TextEditingController? numberController;
  String? Function(BuildContext, String?)? numberControllerValidator;
  String? _numberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'sk81o7yb' /* Mobile Number required */,
      );
    }

    return null;
  }

  // State field(s) for priority widget.
  String? priorityValue;
  FormFieldController<String>? priorityValueController;
  // State field(s) for CustomerPerson widget.
  TextEditingController? customerPersonController;
  String? Function(BuildContext, String?)? customerPersonControllerValidator;
  String? _customerPersonControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'naykj1rc' /* Customer Person required */,
      );
    }

    return null;
  }

  // State field(s) for expectedrevenue widget.
  TextEditingController? expectedrevenueController;
  String? Function(BuildContext, String?)? expectedrevenueControllerValidator;
  String? _expectedrevenueControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ilbmcedc' /* Expected Revenue required */,
      );
    }

    return null;
  }

  // State field(s) for Probability widget.
  TextEditingController? probabilityController;
  String? Function(BuildContext, String?)? probabilityControllerValidator;
  // State field(s) for street widget.
  TextEditingController? streetController;
  String? Function(BuildContext, String?)? streetControllerValidator;
  // State field(s) for city widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for zip widget.
  TextEditingController? zipController;
  String? Function(BuildContext, String?)? zipControllerValidator;
  // State field(s) for Notes widget.
  TextEditingController? notesController;
  String? Function(BuildContext, String?)? notesControllerValidator;
  // Stores action output result for [Backend Call - API (CRM Post)] action in Button widget.
  ApiCallResponse? leadCreateResult;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    leadnameControllerValidator = _leadnameControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    numberControllerValidator = _numberControllerValidator;
    customerPersonControllerValidator = _customerPersonControllerValidator;
    expectedrevenueControllerValidator = _expectedrevenueControllerValidator;
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    leadnameController?.dispose();
    emailController?.dispose();
    numberController?.dispose();
    customerPersonController?.dispose();
    expectedrevenueController?.dispose();
    probabilityController?.dispose();
    streetController?.dispose();
    cityController?.dispose();
    zipController?.dispose();
    notesController?.dispose();
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
