import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactEditPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String imageBase64 = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for Customer widget.
  bool? customerValue;
  // State field(s) for Vendor widget.
  bool? vendorValue;
  // State field(s) for mobileno widget.
  TextEditingController? mobilenoController;
  String? Function(BuildContext, String?)? mobilenoControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for websiteurl widget.
  TextEditingController? websiteurlController;
  String? Function(BuildContext, String?)? websiteurlControllerValidator;
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for street widget.
  TextEditingController? streetController;
  String? Function(BuildContext, String?)? streetControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileTobase64] action in UploadButton widget.
  String? uploadfile;
  // Stores action output result for [Backend Call - API (Contacts Update)] action in Button widget.
  ApiCallResponse? contactUpdateResponse;
  // Stores action output result for [Backend Call - API (Contact Profile Upload)] action in Button widget.
  ApiCallResponse? contactProdileUpload;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    mobilenoController?.dispose();
    emailController?.dispose();
    websiteurlController?.dispose();
    nameController?.dispose();
    streetController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
