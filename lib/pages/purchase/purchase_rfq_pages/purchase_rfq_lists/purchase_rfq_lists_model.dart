import '/backend/api_requests/api_calls.dart';
import '/components/fillter_icon_widget.dart';
import '/components/menu_component_widget.dart';
import '/components/search_icon_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/notification/notification_icon/notification_icon_widget.dart';
import '/notification/notification_list/notification_list_widget.dart';
import '/pages/expenses/expshimmer/expshimmer_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_list/filter_rfq/filter_rfq_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_list/rfq_search_component/rfq_search_component_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'dart:async';
import 'purchase_rfq_lists_widget.dart' show PurchaseRfqListsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class PurchaseRfqListsModel extends FlutterFlowModel<PurchaseRfqListsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  // Models for ListPageContainer dynamic component.
  late FlutterFlowDynamicModels<ListPageContainerModel> listPageContainerModels;
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;
  // Model for menuComponent component.
  late MenuComponentModel menuComponentModel;
  // Model for notification_icon component.
  late NotificationIconModel notificationIconModel;
  // Model for fillter_icon component.
  late FillterIconModel fillterIconModel;
  // Model for search_Icon component.
  late SearchIconModel searchIconModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    listPageContainerModels =
        FlutterFlowDynamicModels(() => ListPageContainerModel());
    sideBarNewModel = createModel(context, () => SideBarNewModel());
    menuComponentModel = createModel(context, () => MenuComponentModel());
    notificationIconModel = createModel(context, () => NotificationIconModel());
    fillterIconModel = createModel(context, () => FillterIconModel());
    searchIconModel = createModel(context, () => SearchIconModel());
  }

  void dispose() {
    unfocusNode.dispose();
    listViewPagingController?.dispose();
    listPageContainerModels.dispose();
    sideBarNewModel.dispose();
    menuComponentModel.dispose();
    notificationIconModel.dispose();
    fillterIconModel.dispose();
    searchIconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

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
    return controller..addPageRequestListener(listViewRFQListPage);
  }

  void listViewRFQListPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewRFQListResponse) {
        final pageItems = (PurchaseApiGroupGroup.rFQListCall.purchaseorder(
                  listViewRFQListResponse.jsonBody,
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
                  lastResponse: listViewRFQListResponse,
                )
              : null,
        );
      });

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
}
