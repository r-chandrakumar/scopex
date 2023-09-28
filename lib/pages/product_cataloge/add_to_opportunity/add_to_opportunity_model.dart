import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_to_opportunity_widget.dart' show AddToOpportunityWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddToOpportunityModel extends FlutterFlowModel<AddToOpportunityWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for CustomerName widget.
  TextEditingController? customerNameController;
  String? Function(BuildContext, String?)? customerNameControllerValidator;
  // State field(s) for LeadFrom widget.
  String? leadFromValue;
  FormFieldController<String>? leadFromValueController;
  // State field(s) for PhoneNumber widget.
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Address widget.
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for EnquiryDetails widget.
  TextEditingController? enquiryDetailsController;
  String? Function(BuildContext, String?)? enquiryDetailsControllerValidator;
  // Stores action output result for [Backend Call - API (CRM Post)] action in Button widget.
  ApiCallResponse? addToOppotunityResult;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    backButttonComponentModel.dispose();
    customerNameController?.dispose();
    phoneNumberController?.dispose();
    emailController?.dispose();
    addressController?.dispose();
    enquiryDetailsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
