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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'delivery_challen_list_model.dart';
export 'delivery_challen_list_model.dart';

class DeliveryChallenListWidget extends StatefulWidget {
  const DeliveryChallenListWidget({
    Key? key,
    this.state,
  }) : super(key: key);

  final String? state;

  @override
  _DeliveryChallenListWidgetState createState() =>
      _DeliveryChallenListWidgetState();
}

class _DeliveryChallenListWidgetState extends State<DeliveryChallenListWidget> {
  late DeliveryChallenListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryChallenListModel());

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
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              enableDrag: false,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_model.unfocusNode),
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      child: CommonFabComponentWidget(
                        id: 0,
                        name: 'test',
                        page: 'DcCreate',
                      ),
                    ),
                  ),
                );
              },
            ).then((value) => setState(() {}));
          },
          backgroundColor: FlutterFlowTheme.of(context).listPlusButton,
          elevation: 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: Icon(
              Icons.menu,
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
                'qryzwwcs' /* Delivery Challen List */,
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
                                child: DeliverychallanFilterComponentWidget(
                                  state: widget.state!,
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
                              child: DeliveryChallenSearchWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    },
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
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: DeliveryChallenSearchWidget(),
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
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
              (nextPageMarker) =>
                  InventoryApiGroupGroup.deliveryChallenListCall.call(
                authToken: FFAppState().accessToken,
                limit: 10,
                offset: nextPageMarker.numItems,
                eq: widget.state,
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
                  'assets/images/nodata-found.png',
                ),
              ),
              itemBuilder: (context, _, deliveryChallenListIndex) {
                final deliveryChallenListItem = _model.listViewPagingController!
                    .itemList![deliveryChallenListIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'delivery_challan_view',
                        queryParameters: {
                          'id': serializeParam(
                            getJsonField(
                              deliveryChallenListItem,
                              r'''$.id''',
                            ),
                            ParamType.int,
                          ),
                          'name': serializeParam(
                            getJsonField(
                              deliveryChallenListItem,
                              r'''$.res_partner.name''',
                            ).toString(),
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 60.0,
                            color: Color(0x0F000000),
                            offset: Offset(0.0, 10.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).hashColor,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: colorFromCssString(
                                    getJsonField(
                                      functions.statusChange(
                                          'inventory',
                                          getJsonField(
                                            deliveryChallenListItem,
                                            r'''$.state''',
                                          ).toString()),
                                      r'''$.color''',
                                    ).toString(),
                                    defaultColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6.0, 6.0, 6.0, 6.0),
                                    child: Text(
                                      getJsonField(
                                        functions.statusChange(
                                            'inventory',
                                            getJsonField(
                                              deliveryChallenListItem,
                                              r'''$.state''',
                                            ).toString()),
                                        r'''$.name''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 8.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      functions.isNull(getJsonField(
                                        deliveryChallenListItem,
                                        r'''$.name''',
                                      ).toString()),
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).rgb,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        functions.convertLeaveDateFormat(
                                            getJsonField(
                                          deliveryChallenListItem,
                                          r'''$.scheduled_date''',
                                        ).toString()),
                                        'null',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 5.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.00, 0.00),
                                  child: Text(
                                    valueOrDefault<String>(
                                      functions.isNull(getJsonField(
                                        deliveryChallenListItem,
                                        r'''$.res_partner.name''',
                                      ).toString()),
                                      '-',
                                    ),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 15.0,
                                        ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    functions.isNull(getJsonField(
                                      deliveryChallenListItem,
                                      r'''$.origin''',
                                    ).toString()),
                                    '-',
                                  ),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context).rgb,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
