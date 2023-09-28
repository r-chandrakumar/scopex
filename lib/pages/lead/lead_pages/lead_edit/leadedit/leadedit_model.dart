import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/customers/lead_createshimmer/lead_createshimmer_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'leadedit_widget.dart' show LeadeditWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeadeditModel extends FlutterFlowModel<LeadeditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Crm Edit Data)] action in Leadedit widget.
  ApiCallResponse? leadEditresult;
  // Stores action output result for [Backend Call - API (Get Customer Details)] action in Leadedit widget.
  ApiCallResponse? getCustomerDataReslut;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for leadname widget.
  TextEditingController? leadnameController;
  String? Function(BuildContext, String?)? leadnameControllerValidator;
  // State field(s) for listsource widget.
  String? listsourceValue;
  FormFieldController<String>? listsourceValueController;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bg2eh2zh' /* Email is  required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'xb91pbrh' /* Enter Valid Email */,
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
        '6e6xiizk' /* Mobile number required */,
      );
    }

    return null;
  }

  // State field(s) for priority widget.
  String? priorityValue;
  FormFieldController<String>? priorityValueController;
  // State field(s) for ContactPesron widget.
  TextEditingController? contactPesronController;
  String? Function(BuildContext, String?)? contactPesronControllerValidator;
  String? _contactPesronControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'i11uz1k7' /* Customer person required */,
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
        'dq38jbmn' /* Expected Revenue required */,
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
  // Stores action output result for [Backend Call - API (CRM Update)] action in Button widget.
  ApiCallResponse? leadUpdateResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    emailControllerValidator = _emailControllerValidator;
    numberControllerValidator = _numberControllerValidator;
    contactPesronControllerValidator = _contactPesronControllerValidator;
    expectedrevenueControllerValidator = _expectedrevenueControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    leadnameController?.dispose();
    emailController?.dispose();
    numberController?.dispose();
    contactPesronController?.dispose();
    expectedrevenueController?.dispose();
    probabilityController?.dispose();
    streetController?.dispose();
    cityController?.dispose();
    zipController?.dispose();
    notesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
