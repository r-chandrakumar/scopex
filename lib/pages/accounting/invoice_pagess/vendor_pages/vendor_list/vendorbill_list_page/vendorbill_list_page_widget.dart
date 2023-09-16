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
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_list/accounting_vendorbill_fliter/accounting_vendorbill_fliter_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_list/vendor_bill_search/vendor_bill_search_widget.dart';
import '/pages/expenses/expshimmer/expshimmer_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'vendorbill_list_page_model.dart';
export 'vendorbill_list_page_model.dart';

class VendorbillListPageWidget extends StatefulWidget {
  const VendorbillListPageWidget({
    Key? key,
    required this.state,
    required this.startdate,
    required this.enddate,
  }) : super(key: key);

  final String? state;
  final String? startdate;
  final String? enddate;

  @override
  _VendorbillListPageWidgetState createState() =>
      _VendorbillListPageWidgetState();
}

class _VendorbillListPageWidgetState extends State<VendorbillListPageWidget> {
  late VendorbillListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorbillListPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().accessToken != null &&
          FFAppState().accessToken != '')) {
        context.goNamed('Login');
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
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

            context.pushNamed('Accoun_Vendor_create_page');
          },
          backgroundColor: FlutterFlowTheme.of(context).listPlusButton,
          elevation: 0.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).white,
            size: 24.0,
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
                'o3jk4idh' /* Vendor Bills */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 13.0),
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
                            onTap: () => FocusScope.of(context)
                                .requestFocus(_model.unfocusNode),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: NotificationListWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
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
                            onTap: () => FocusScope.of(context)
                                .requestFocus(_model.unfocusNode),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                child: AccountingVendorbillFliterWidget(
                                  state: widget.state!,
                                  startdate: widget.startdate!,
                                  enddate: widget.enddate!,
                                ),
                              ),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
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
                            onTap: () => FocusScope.of(context)
                                .requestFocus(_model.unfocusNode),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: VendorBillSearchWidget(
                                state: widget.state!,
                              ),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
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
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                RefreshIndicator(
                  onRefresh: () async {
                    setState(() => _model.listViewPagingController?.refresh());
                    await _model.waitForOnePageForListView();
                  },
                  child: PagedListView<ApiPagingParams, dynamic>.separated(
                    pagingController: _model.setListViewController(
                      (nextPageMarker) =>
                          AccountingApiGroupGroup.vendorBillListCall.call(
                        authToken: FFAppState().accessToken,
                        domainUrl: FFAppState().DomainUrl,
                        limit: 10,
                        offset: nextPageMarker.numItems,
                        start: widget.startdate,
                        end: widget.enddate,
                        status: widget.state,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(
                      0,
                      10.0,
                      0,
                      75.0,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (_, __) => SizedBox(height: 10.0),
                    builderDelegate: PagedChildBuilderDelegate<dynamic>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) =>
                          ExpshimmerWidget(),
                      // Customize what your widget looks like when it's loading another page.
                      newPageProgressIndicatorBuilder: (_) =>
                          ExpshimmerWidget(),
                      noItemsFoundIndicatorBuilder: (_) => Center(
                        child: Image.asset(
                          'assets/images/New_Project_(2).png',
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                        ),
                      ),
                      itemBuilder: (context, _, vendorBillListIndex) {
                        final vendorBillListItem = _model
                            .listViewPagingController!
                            .itemList![vendorBillListIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'vendor_bill_view',
                              queryParameters: {
                                'id': serializeParam(
                                  getJsonField(
                                    vendorBillListItem,
                                    r'''$.id''',
                                  ),
                                  ParamType.int,
                                ),
                                'name': serializeParam(
                                  getJsonField(
                                    vendorBillListItem,
                                    r'''$.name''',
                                  ).toString(),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.listPageContainerModels.getModel(
                              vendorBillListIndex.toString(),
                              vendorBillListIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: ListPageContainerWidget(
                              key: Key(
                                'Keynti_${vendorBillListIndex.toString()}',
                              ),
                              status: getJsonField(
                                vendorBillListItem,
                                r'''$.state''',
                              ).toString(),
                              number: getJsonField(
                                vendorBillListItem,
                                r'''$.name''',
                              ).toString(),
                              date: getJsonField(
                                vendorBillListItem,
                                r'''$.invoice_date''',
                              ).toString(),
                              partnername: getJsonField(
                                vendorBillListItem,
                                r'''$.res_partner.name''',
                              ).toString(),
                              amount: getJsonField(
                                vendorBillListItem,
                                r'''$.amount_total''',
                              ),
                              model: 'accounting',
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
      ),
    );
  }
}
