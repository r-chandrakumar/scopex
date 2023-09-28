import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/search_components/country_search/country_search_widget.dart';
import '/search_components/state_search/state_search_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactCreatePageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String imageBase64 = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for ContactPersonName widget.
  TextEditingController? contactPersonNameController;
  String? Function(BuildContext, String?)? contactPersonNameControllerValidator;
  String? _contactPersonNameControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r97ckzdu' /* Person Field is required */,
      );
    }

    return null;
  }

  // State field(s) for CustomerType widget.
  String? customerTypeValue;
  FormFieldController<String>? customerTypeValueController;
  // State field(s) for GST widget.
  TextEditingController? gstController;
  String? Function(BuildContext, String?)? gstControllerValidator;
  String? _gstControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3j5kb9gm' /* GST number field is required */,
      );
    }

    return null;
  }

  // State field(s) for TypeCustomer widget.
  bool? typeCustomerValue;
  // State field(s) for TypeVendor widget.
  bool? typeVendorValue;
  // State field(s) for MobileNumber widget.
  TextEditingController? mobileNumberController;
  String? Function(BuildContext, String?)? mobileNumberControllerValidator;
  String? _mobileNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9a31xr0b' /* Mobile  field is required */,
      );
    }

    return null;
  }

  // State field(s) for EmailText widget.
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'imktekzs' /* Email Field is required */,
      );
    }

    return null;
  }

  // State field(s) for WebsiteText widget.
  TextEditingController? websiteTextController;
  String? Function(BuildContext, String?)? websiteTextControllerValidator;
  String? _websiteTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r6fxfxa5' /* Website Field is required */,
      );
    }

    return null;
  }

  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  String? _addressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wa77sw4k' /* Address field is required */,
      );
    }

    return null;
  }

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8q5nahk1' /* Pincode field is required */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileTobase64] action in UploadButton widget.
  String? uploadfile;
  // Stores action output result for [Backend Call - API (Contacts Create)] action in Button widget.
  ApiCallResponse? contactCreate;
  // Stores action output result for [Backend Call - API (Contact Profile Upload)] action in Button widget.
  ApiCallResponse? contactProdileUpload;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    contactPersonNameControllerValidator =
        _contactPersonNameControllerValidator;
    gstControllerValidator = _gstControllerValidator;
    mobileNumberControllerValidator = _mobileNumberControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    websiteTextControllerValidator = _websiteTextControllerValidator;
    addressControllerValidator = _addressControllerValidator;
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    contactPersonNameController?.dispose();
    gstController?.dispose();
    mobileNumberController?.dispose();
    emailTextController?.dispose();
    websiteTextController?.dispose();
    addressController?.dispose();
    pinCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
