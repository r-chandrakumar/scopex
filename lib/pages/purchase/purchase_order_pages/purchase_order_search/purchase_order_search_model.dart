import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/lead/lead_pages/lead_view/leadsshimmer/leadsshimmer_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class PurchaseOrderSearchModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String? orderSearch;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Models for ListPageContainer dynamic component.
  late FlutterFlowDynamicModels<ListPageContainerModel> listPageContainerModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listPageContainerModels =
        FlutterFlowDynamicModels(() => ListPageContainerModel());
  }

  void dispose() {
    textController?.dispose();
    listViewPagingController?.dispose();
    listPageContainerModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForOnePageForListView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(listViewPurchaseOrderSearchPage);
  }

  void listViewPurchaseOrderSearchPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker)
          .then((listViewPurchaseOrderSearchResponse) {
        final pageItems =
            (SearchApiGroupGroup.purchaseOrderSearchCall.purchaseordersearchapi(
                      listViewPurchaseOrderSearchResponse.jsonBody,
                    )! ??
                    [])
                .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.length > 0)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewPurchaseOrderSearchResponse,
                )
              : null,
        );
      });
}
