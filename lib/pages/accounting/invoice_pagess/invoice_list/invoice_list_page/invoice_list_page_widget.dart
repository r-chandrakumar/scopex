import '/backend/api_requests/api_calls.dart';
import '/components/image_simmer_widget.dart';
import '/components/menu_component_widget.dart';
import '/components/search_icon_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/notification/notification_icon/notification_icon_widget.dart';
import '/notification/notification_list/notification_list_widget.dart';
import '/pages/accounting/invoice_pagess/invoice_list/accounting_invoice_fliter/accounting_invoice_fliter_widget.dart';
import '/pages/accounting/invoice_pagess/invoice_list/invoice_list_search/invoice_list_search_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'invoice_list_page_model.dart';
export 'invoice_list_page_model.dart';

class InvoiceListPageWidget extends StatefulWidget {
  const InvoiceListPageWidget({
    Key? key,
    required this.state,
    required this.statedate,
    required this.enddate,
  }) : super(key: key);

  final String? state;
  final String? statedate;
  final String? enddate;

  @override
  _InvoiceListPageWidgetState createState() => _InvoiceListPageWidgetState();
}

class _InvoiceListPageWidgetState extends State<InvoiceListPageWidget> {
  late InvoiceListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvoiceListPageModel());

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
            setState(() {
              FFAppState().productAddItem = [];
              FFAppState().taxJson = null;
              FFAppState().CustomerSearch = null;
            });

            context.pushNamed('Account_invoice_create_page');
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
                'le8rb86v' /* Invoice */,
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
                            onTap: () => _model.unfocusNode.canRequestFocus
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
                            onTap: () => _model.unfocusNode.canRequestFocus
                                ? FocusScope.of(context)
                                    .requestFocus(_model.unfocusNode)
                                : FocusScope.of(context).unfocus(),
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                child: AccountingInvoiceFliterWidget(
                                  state: widget.state!,
                                  startdate: widget.statedate!,
                                  enddate: widget.enddate!,
                                ),
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_list,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
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
                                onTap: () => _model.unfocusNode.canRequestFocus
                                    ? FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode)
                                    : FocusScope.of(context).unfocus(),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: InvoiceListSearchWidget(
                                    state: widget.state!,
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: wrapWithModel(
                          model: _model.searchIconModel,
                          updateCallback: () => setState(() {}),
                          child: SearchIconWidget(),
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
          child: PagedListView<ApiPagingParams, dynamic>.separated(
            pagingController: _model.setListViewController(
              (nextPageMarker) => AccountingApiGroupGroup.invoiceListCall.call(
                authToken: FFAppState().accessToken,
                limit: 10,
                offset: nextPageMarker.numItems,
                start: widget.statedate,
                end: widget.enddate,
                status: widget.state,
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
              firstPageProgressIndicatorBuilder: (_) => ImageSimmerWidget(),
              // Customize what your widget looks like when it's loading another page.
              newPageProgressIndicatorBuilder: (_) => ImageSimmerWidget(),
              noItemsFoundIndicatorBuilder: (_) => Center(
                child: Image.asset(
                  'assets/images/New_Project_(2).png',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                ),
              ),
              itemBuilder: (context, _, invoiceListIndex) {
                final invoiceListItem = _model
                    .listViewPagingController!.itemList![invoiceListIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'invoice_view_page',
                      queryParameters: {
                        'name': serializeParam(
                          getJsonField(
                            invoiceListItem,
                            r'''$.name''',
                          ).toString(),
                          ParamType.String,
                        ),
                        'id': serializeParam(
                          getJsonField(
                            invoiceListItem,
                            r'''$.id''',
                          ),
                          ParamType.int,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: wrapWithModel(
                    model: _model.listPageContainerModels.getModel(
                      invoiceListIndex.toString(),
                      invoiceListIndex,
                    ),
                    updateCallback: () => setState(() {}),
                    child: ListPageContainerWidget(
                      key: Key(
                        'Keyseu_${invoiceListIndex.toString()}',
                      ),
                      status: getJsonField(
                        invoiceListItem,
                        r'''$.state''',
                      ).toString(),
                      number: getJsonField(
                        invoiceListItem,
                        r'''$.name''',
                      ).toString(),
                      date: getJsonField(
                        invoiceListItem,
                        r'''$.invoice_date''',
                      ).toString(),
                      partnername: getJsonField(
                        invoiceListItem,
                        r'''$.res_partner.name''',
                      ).toString(),
                      amount: getJsonField(
                        invoiceListItem,
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
      ),
    );
  }
}
