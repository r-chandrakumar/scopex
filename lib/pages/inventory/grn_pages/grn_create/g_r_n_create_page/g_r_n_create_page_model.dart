import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reusable_component/common_create_product_search/common_create_product_search_widget.dart';
import '/search_components/customer_search_component/customer_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'g_r_n_create_page_widget.dart' show GRNCreatePageWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GRNCreatePageModel extends FlutterFlowModel<GRNCreatePageWidget> {
  ///  Local state fields for this page.

  dynamic grnitems;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Location widget.
  String? locationValue;
  FormFieldController<String>? locationValueController;
  // State field(s) for DestLocation widget.
  String? destLocationValue;
  FormFieldController<String>? destLocationValueController;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (GRN Create)] action in Button widget.
  ApiCallResponse? gRNCreate;
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    backButttonComponentModel =
        createModel(context, () => BackButttonComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    backButttonComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
