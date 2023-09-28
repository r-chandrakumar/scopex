import '/backend/api_requests/api_calls.dart';
import '/components/menu_component_widget.dart';
import '/components/search_icon_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/notification/notification_icon/notification_icon_widget.dart';
import '/notification/notification_list/notification_list_widget.dart';
import '/pages/lead/lead_pages/lead_list/search_lead/search_lead_widget.dart';
import '/pages/lead/lead_pages/lead_view/leadsshimmer/leadsshimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'leadlist_widget.dart' show LeadlistWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class LeadlistModel extends FlutterFlowModel<LeadlistWidget> {
  ///  Local state fields for this page.

  int? stageid;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideBar_new component.
  late SideBarNewModel sideBarNewModel;
  // Model for menuComponent component.
  late MenuComponentModel menuComponentModel;
  // Model for notification_icon component.
  late NotificationIconModel notificationIconModel;
  // Model for search_Icon component.
  late SearchIconModel searchIconModel;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarNewModel = createModel(context, () => SideBarNewModel());
    menuComponentModel = createModel(context, () => MenuComponentModel());
    notificationIconModel = createModel(context, () => NotificationIconModel());
    searchIconModel = createModel(context, () => SearchIconModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideBarNewModel.dispose();
    menuComponentModel.dispose();
    notificationIconModel.dispose();
    searchIconModel.dispose();
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
    return controller..addPageRequestListener(listViewListCRMPage);
  }

  void listViewListCRMPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker).then((listViewListCRMResponse) {
        final pageItems = (HymechApiGroupGroup.listCRMCall.crmList(
                  listViewListCRMResponse.jsonBody,
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
                  lastResponse: listViewListCRMResponse,
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
