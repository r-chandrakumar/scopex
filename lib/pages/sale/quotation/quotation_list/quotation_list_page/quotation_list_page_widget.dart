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
import '/pages/sale/quotation/quotation_list/filter_quotations/filter_quotations_widget.dart';
import '/pages/sale/quotation/quotation_search/quotation_search_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'quotation_list_page_model.dart';
export 'quotation_list_page_model.dart';

class QuotationListPageWidget extends StatefulWidget {
  const QuotationListPageWidget({
    Key? key,
    this.startdate,
    this.state,
    this.enddate,
  }) : super(key: key);

  final String? startdate;
  final String? state;
  final String? enddate;

  @override
  _QuotationListPageWidgetState createState() =>
      _QuotationListPageWidgetState();
}

class _QuotationListPageWidgetState extends State<QuotationListPageWidget> {
  late QuotationListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuotationListPageModel());

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
              FFAppState().CustomerSearch = null;
            });

            context.pushNamed('quotation_create_page');
          },
          backgroundColor: FlutterFlowTheme.of(context).listPlusButton,
          elevation: 0.0,
          child: Icon(
            Icons.add_sharp,
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
                'dymsc4mu' /* Quotation */,
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 13.0),
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
                          mainAxisSize: MainAxisSize.min,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
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
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    child: FilterQuotationsWidget(
                                      state: widget.state!,
                                      startdate: widget.startdate,
                                      enddate: widget.enddate,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
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
                                  child: QuotationSearchWidget(
                                    state: widget.state,
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
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
              ],
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            setState(() => _model.listViewPagingController?.refresh());
            await _model.waitForOnePageForListView();
          },
          child: PagedListView<ApiPagingParams, dynamic>.separated(
            pagingController: _model.setListViewController(
              (nextPageMarker) => SalesApiGroupGroup.quotationListCall.call(
                authToken: FFAppState().accessToken,
                limit: 20,
                offset: nextPageMarker.numItems,
                state: widget.state,
                start: widget.startdate,
                end: widget.enddate,
                domainUrl: FFAppState().DomainUrl,
              ),
            ),
            padding: EdgeInsets.fromLTRB(
              0,
              15.0,
              0,
              75.0,
            ),
            shrinkWrap: true,
            reverse: false,
            scrollDirection: Axis.vertical,
            separatorBuilder: (_, __) => SizedBox(height: 10.0),
            builderDelegate: PagedChildBuilderDelegate<dynamic>(
              // Customize what your widget looks like when it's loading the first page.
              firstPageProgressIndicatorBuilder: (_) => ExpshimmerWidget(),
              // Customize what your widget looks like when it's loading another page.
              newPageProgressIndicatorBuilder: (_) => ExpshimmerWidget(),
              noItemsFoundIndicatorBuilder: (_) => Center(
                child: Image.asset(
                  'assets/images/New_Project_(2).png',
                  fit: BoxFit.cover,
                ),
              ),
              itemBuilder: (context, _, quotationListsIndex) {
                final quotationListsItem = _model
                    .listViewPagingController!.itemList![quotationListsIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'quotation_view_page',
                      queryParameters: {
                        'id': serializeParam(
                          getJsonField(
                            quotationListsItem,
                            r'''$.id''',
                          ),
                          ParamType.int,
                        ),
                        'name': serializeParam(
                          getJsonField(
                            quotationListsItem,
                            r'''$.name''',
                          ).toString(),
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: wrapWithModel(
                    model: _model.listPageContainerModels.getModel(
                      quotationListsIndex.toString(),
                      quotationListsIndex,
                    ),
                    updateCallback: () => setState(() {}),
                    child: ListPageContainerWidget(
                      key: Key(
                        'Keym36_${quotationListsIndex.toString()}',
                      ),
                      status: getJsonField(
                        quotationListsItem,
                        r'''$.state''',
                      ).toString(),
                      model: 'quotation',
                      number: getJsonField(
                        quotationListsItem,
                        r'''$.name''',
                      ).toString(),
                      date: getJsonField(
                        quotationListsItem,
                        r'''$.date_order''',
                      ).toString(),
                      partnername: getJsonField(
                        quotationListsItem,
                        r'''$.res_partner.name''',
                      ).toString(),
                      amount: getJsonField(
                        quotationListsItem,
                        r'''$.amount_total''',
                      ),
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
