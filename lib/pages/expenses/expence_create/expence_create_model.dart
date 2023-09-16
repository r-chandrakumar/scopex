import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExpenceCreateModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  double? unit;

  double? qty;

  double? total;

  List<String> attachmentType = [];
  void addToAttachmentType(String item) => attachmentType.add(item);
  void removeFromAttachmentType(String item) => attachmentType.remove(item);
  void removeAtIndexFromAttachmentType(int index) =>
      attachmentType.removeAt(index);
  void updateAttachmentTypeAtIndex(int index, Function(String) updateFn) =>
      attachmentType[index] = updateFn(attachmentType[index]);

  List<String> name = [];
  void addToName(String item) => name.add(item);
  void removeFromName(String item) => name.remove(item);
  void removeAtIndexFromName(int index) => name.removeAt(index);
  void updateNameAtIndex(int index, Function(String) updateFn) =>
      name[index] = updateFn(name[index]);

  List<String> listBase64 = [];
  void addToListBase64(String item) => listBase64.add(item);
  void removeFromListBase64(String item) => listBase64.remove(item);
  void removeAtIndexFromListBase64(int index) => listBase64.removeAt(index);
  void updateListBase64AtIndex(int index, Function(String) updateFn) =>
      listBase64[index] = updateFn(listBase64[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for projectname widget.
  String? projectnameValue;
  FormFieldController<String>? projectnameValueController;
  // State field(s) for taskname widget.
  String? tasknameValue;
  FormFieldController<String>? tasknameValueController;
  // State field(s) for ExpenseCategoryProduct widget.
  String? expenseCategoryProductValue;
  FormFieldController<String>? expenseCategoryProductValueController;
  // State field(s) for vendorname widget.
  String? vendornameValue;
  FormFieldController<String>? vendornameValueController;
  // State field(s) for ExpenseName widget.
  TextEditingController? expenseNameController;
  String? Function(BuildContext, String?)? expenseNameControllerValidator;
  String? _expenseNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '252y73lf' /* Field is required */,
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
        '4acw0hhf' /* Field is required */,
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
        'ojf0j72m' /* Field is required */,
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
        'j8tnbex3' /* Field is required */,
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
        'eavyz9bc' /* Field is required */,
      );
    }

    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileTobase64] action in Button widget.
  String? uploadImageFile;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - uploadFileTobase64] action in Button widget.
  String? uploadedPdfFile;
  // Stores action output result for [Backend Call - API (Expense Store)] action in SaveButton widget.
  ApiCallResponse? expenseCreateResult;
  // Stores action output result for [Backend Call - API (ExpenseFile Attach)] action in SaveButton widget.
  ApiCallResponse? fileUpload;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    expenseNameControllerValidator = _expenseNameControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
    totalTextControllerValidator = _totalTextControllerValidator;
    notesControllerValidator = _notesControllerValidator;
  }

  void dispose() {
    expenseNameController?.dispose();
    priceTextController?.dispose();
    quantityTextController?.dispose();
    totalTextController?.dispose();
    notesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
