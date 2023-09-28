import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import '/pages/product_cataloge/add_to_opportunity/add_to_opportunity_widget.dart';
import '/pages/product_cataloge/catalouge_annexure/catalouge_annexure_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProductDetailsNewModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? productVariantId = 0;

  int? tabchange = 0;

  List<int> variants = [];
  void addToVariants(int item) => variants.add(item);
  void removeFromVariants(int item) => variants.remove(item);
  void removeAtIndexFromVariants(int index) => variants.removeAt(index);
  void updateVariantsAtIndex(int index, Function(int) updateFn) =>
      variants[index] = updateFn(variants[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButttonComponent component.
  late BackButttonComponentModel backButttonComponentModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - API (Add To Bookmark)] action in Icon widget.
  ApiCallResponse? addBookmarkResule1;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Remove BookMark)] action in Icon widget.
  ApiCallResponse? removeBookmarkResule;
  // Stores action output result for [Backend Call - API (Get Id By Variant Check)] action in Container widget.
  ApiCallResponse? variantIdResult;
  // Stores action output result for [Backend Call - API (Product Details)] action in Container widget.
  ApiCallResponse? productDetails;

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

  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
