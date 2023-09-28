import '/backend/api_requests/api_calls.dart';
import '/components/menu_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/product_cataloge/bookmarked_product/bookmarked_product_widget.dart';
import '/pages/product_cataloge/category_menu_shimmer/category_menu_shimmer_widget.dart';
import '/pages/product_cataloge/category_view_shimmer/category_view_shimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'categories_with_product_widget.dart' show CategoriesWithProductWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoriesWithProductModel
    extends FlutterFlowModel<CategoriesWithProductWidget> {
  ///  Local state fields for this page.

  int? categoryid = 0;

  List<int> emptyVariant = [];
  void addToEmptyVariant(int item) => emptyVariant.add(item);
  void removeFromEmptyVariant(int item) => emptyVariant.remove(item);
  void removeAtIndexFromEmptyVariant(int index) => emptyVariant.removeAt(index);
  void insertAtIndexInEmptyVariant(int index, int item) =>
      emptyVariant.insert(index, item);
  void updateEmptyVariantAtIndex(int index, Function(int) updateFn) =>
      emptyVariant[index] = updateFn(emptyVariant[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<ApiCallResponse>? apiRequestCompleter1;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - API (Product Details)] action in Column widget.
  ApiCallResponse? productDetails;
  // Model for menuComponent component.
  late MenuComponentModel menuComponentModel;
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuComponentModel = createModel(context, () => MenuComponentModel());
    sideBarNewModel = createModel(context, () => SideBarNewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuComponentModel.dispose();
    sideBarNewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
