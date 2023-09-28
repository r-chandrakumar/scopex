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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'purchase_rfq_lists_model.dart';
export 'purchase_rfq_lists_model.dart';

class PurchaseRfqListsWidget extends StatefulWidget {
  const PurchaseRfqListsWidget({
    Key? key,
    required this.state,
    required this.date,
    required this.endDate,
  }) : super(key: key);

  final String? state;
  final String? date;
  final String? endDate;

  @override
  _PurchaseRfqListsWidgetState createState() => _PurchaseRfqListsWidgetState();
}

class _PurchaseRfqListsWidgetState extends State<PurchaseRfqListsWidget> {
  late PurchaseRfqListsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PurchaseRfqListsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().accessToken != null &&
          FFAppState().accessToken != '')) {
        context.pushNamed('Login');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            FFAppState().update(() {
              FFAppState().productAddItem = [];
              FFAppState().taxJson = null;
              FFAppState().SupplierSearch = null;
            });

            context.pushNamed('Purchase_Rfq_create_new');
          },
          backgroundColor: FlutterFlowTheme.of(context).listPlusButton,
          elevation: 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Icon(
              Icons.add,
              color: FlutterFlowTheme.of(context).white,
              size: 24.0,
            ),
          ),
        ),
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.sideBarNewModel,
            updateCallback: () => setState(() {}),
            child: SideBarNewWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBarColor,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: wrapWithModel(
                model: _model.menuComponentModel,
                updateCallback: () => setState(() {}),
                child: MenuComponentWidget(),
              ),
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Text(
              FFLocalizations.of(context).getText(
                '9q7qrvs6' /* RFQ'S  List */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).appBarTextColor,
                    fontSize: 23.0,
                  ),
            ),
          ),
          actions: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 10.0, 13.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: NotificationListWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.notificationIconModel,
                                updateCallback: () => setState(() {}),
                                child: NotificationIconWidget(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.5,
                                      child: FilterRfqWidget(
                                        state: widget.state!,
                                        startdate: widget.date,
                                        enddate: widget.endDate,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.fillterIconModel,
                                updateCallback: () => setState(() {}),
                                child: FillterIconWidget(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: RfqSearchComponentWidget(
                                      state: widget.state!,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.searchIconModel,
                                updateCallback: () => setState(() {}),
                                child: SearchIconWidget(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              RefreshIndicator(
                onRefresh: () async {
                  setState(() => _model.listViewPagingController?.refresh());
                  await _model.waitForOnePageForListView();
                },
                child: PagedListView<ApiPagingParams, dynamic>.separated(
                  pagingController: _model.setListViewController(
                    (nextPageMarker) => PurchaseApiGroupGroup.rFQListCall.call(
                      authToken: FFAppState().accessToken,
                      limit: 10,
                      offset: nextPageMarker.numItems,
                      start: widget.date,
                      end: widget.endDate,
                      state: widget.state,
                      domainUrl: FFAppState().DomainUrl,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(
                    0,
                    15.0,
                    0,
                    79.0,
                  ),
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (_, __) => SizedBox(height: 10.0),
                  builderDelegate: PagedChildBuilderDelegate<dynamic>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) =>
                        ExpshimmerWidget(),
                    // Customize what your widget looks like when it's loading another page.
                    newPageProgressIndicatorBuilder: (_) => ExpshimmerWidget(),
                    noItemsFoundIndicatorBuilder: (_) => Center(
                      child: Image.asset(
                        'assets/images/New_Project_(2).png',
                      ),
                    ),
                    itemBuilder: (context, _, purchaseRfqListsIndex) {
                      final purchaseRfqListsItem = _model
                          .listViewPagingController!
                          .itemList![purchaseRfqListsIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'purchase_rfq_view',
                            queryParameters: {
                              'name': serializeParam(
                                getJsonField(
                                  purchaseRfqListsItem,
                                  r'''$.name''',
                                ).toString(),
                                ParamType.String,
                              ),
                              'id': serializeParam(
                                getJsonField(
                                  purchaseRfqListsItem,
                                  r'''$.id''',
                                ),
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: wrapWithModel(
                          model: _model.listPageContainerModels.getModel(
                            purchaseRfqListsIndex.toString(),
                            purchaseRfqListsIndex,
                          ),
                          updateCallback: () => setState(() {}),
                          child: ListPageContainerWidget(
                            key: Key(
                              'Keyhld_${purchaseRfqListsIndex.toString()}',
                            ),
                            status: getJsonField(
                              purchaseRfqListsItem,
                              r'''$.state''',
                            ).toString(),
                            number: getJsonField(
                              purchaseRfqListsItem,
                              r'''$.name''',
                            ).toString(),
                            date: getJsonField(
                              purchaseRfqListsItem,
                              r'''$.date_order''',
                            ).toString(),
                            partnername: getJsonField(
                              purchaseRfqListsItem,
                              r'''$.res_partner.name''',
                            ).toString(),
                            amount: getJsonField(
                              purchaseRfqListsItem,
                              r'''$.amount_total''',
                            ),
                            model: 'rfq',
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
