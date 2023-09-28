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
import '/pages/inventory/delivery_chellan_pages/delivery_chellan_list/delivery_challen_search/delivery_challen_search_widget.dart';
import '/pages/inventory/delivery_chellan_pages/delivery_chellan_list/deliverychallan_filter_component/deliverychallan_filter_component_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'delivery_challen_list_widget.dart' show DeliveryChallenListWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class DeliveryChallenListModel
    extends FlutterFlowModel<DeliveryChallenListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuComponent component.
  late MenuComponentModel menuComponentModel;
  // Model for notification_icon component.
  late NotificationIconModel notificationIconModel;
  // Model for fillter_icon component.
  late FillterIconModel fillterIconModel;
  // Model for search_Icon component.
  late SearchIconModel searchIconModel;
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuComponentModel = createModel(context, () => MenuComponentModel());
    notificationIconModel = createModel(context, () => NotificationIconModel());
    fillterIconModel = createModel(context, () => FillterIconModel());
    searchIconModel = createModel(context, () => SearchIconModel());
    sideBarNewModel = createModel(context, () => SideBarNewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuComponentModel.dispose();
    notificationIconModel.dispose();
    fillterIconModel.dispose();
    searchIconModel.dispose();
    sideBarNewModel.dispose();
    listViewPagingController?.dispose();
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
    return controller..addPageRequestListener(listViewDeliveryChallenListPage);
  }

  void listViewDeliveryChallenListPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker)
          .then((listViewDeliveryChallenListResponse) {
        final pageItems =
            (InventoryApiGroupGroup.deliveryChallenListCall.fulldataapi(
                      listViewDeliveryChallenListResponse.jsonBody,
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
                  lastResponse: listViewDeliveryChallenListResponse,
                )
              : null,
        );
      });
}
