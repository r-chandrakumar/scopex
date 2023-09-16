import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExpenseUpdateModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double? total;

  double? unit;

  double? qty;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for ExpenseCategoryProduct widget.
  String? expenseCategoryProductValue;
  FormFieldController<String>? expenseCategoryProductValueController;
  // State field(s) for ExpenseName widget.
  TextEditingController? expenseNameController;
  String? Function(BuildContext, String?)? expenseNameControllerValidator;
  String? _expenseNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ol9arex1' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for PriceText widget.
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jdp6v97h' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for QuantityText widget.
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f1reem04' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TotalText widget.
  TextEditingController? totalTextController;
  String? Function(BuildContext, String?)? totalTextControllerValidator;
  String? _totalTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yq75sazu' /* Field is required */,
      );
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for PaidBySelect widget.
  String? paidBySelectValue;
  FormFieldController<String>? paidBySelectValueController;
  // State field(s) for AccountsDropDown widget.
  String? accountsDropDownValue;
  FormFieldController<String>? accountsDropDownValueController;
  // State field(s) for Notes widget.
  TextEditingController? notesController;
  String? Function(BuildContext, String?)? notesControllerValidator;
  String? _notesControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '73h6jap8' /* Field is required */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Expense Update)] action in SaveButton widget.
  ApiCallResponse? update;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
    expenseNameControllerValidator = _expenseNameControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
    totalTextControllerValidator = _totalTextControllerValidator;
    notesControllerValidator = _notesControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
    expenseNameController?.dispose();
    priceTextController?.dispose();
    quantityTextController?.dispose();
    totalTextController?.dispose();
    notesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
