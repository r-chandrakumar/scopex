import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/search_components/customer_search_component/customer_search_component_widget.dart';
import '/search_components/supplier_search_component/supplier_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'account_payment_create_widget.dart' show AccountPaymentCreateWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPaymentCreateModel
    extends FlutterFlowModel<AccountPaymentCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PaymentType widget.
  String? paymentTypeValue;
  FormFieldController<String>? paymentTypeValueController;
  DateTime? datePicked;
  // State field(s) for amount widget.
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;
  String? _amountControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4z3tycu4' /* amount field is required */,
      );
    }

    return null;
  }

  // State field(s) for PaymentMode widget.
  String? paymentModeValue;
  FormFieldController<String>? paymentModeValueController;
  // State field(s) for Notes widget.
  TextEditingController? notesController;
  String? Function(BuildContext, String?)? notesControllerValidator;
  // Stores action output result for [Backend Call - API (Payment Create)] action in Button widget.
  ApiCallResponse? paymentCreateResult;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    amountControllerValidator = _amountControllerValidator;
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    amountController?.dispose();
    notesController?.dispose();
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
