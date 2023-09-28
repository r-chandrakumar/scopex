import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/notification/notification_shimmer/notification_shimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'notification_list_model.dart';
export 'notification_list_model.dart';

class NotificationListWidget extends StatefulWidget {
  const NotificationListWidget({Key? key}) : super(key: key);

  @override
  _NotificationListWidgetState createState() => _NotificationListWidgetState();
}

class _NotificationListWidgetState extends State<NotificationListWidget>
    with TickerProviderStateMixin {
  late NotificationListModel _model;

  final animationsMap = {
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'f2pkuzuc' /* Notifications */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.apiResult0crCopy = await CommonApisGroupGroup
                              .notificationMarkAllCall
                              .call(
                            authToken: FFAppState().accessToken,
                            domainUrl: FFAppState().DomainUrl,
                          );
                          if ((_model.apiResult0crCopy?.succeeded ?? true)) {
                            setState(() =>
                                _model.listViewPagingController?.refresh());
                            await _model.waitForOnePageForListView();
                          }

                          setState(() {});
                        },
                        child: Icon(
                          Icons.check_box,
                          color: FlutterFlowTheme.of(context).changeButton,
                          size: 28.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: RefreshIndicator(
              onRefresh: () async {
                setState(() => _model.listViewPagingController?.refresh());
                await _model.waitForOnePageForListView();
              },
              child: PagedListView<ApiPagingParams, dynamic>(
                pagingController: _model.setListViewController(
                  (nextPageMarker) =>
                      CommonApisGroupGroup.notificationListCall.call(
                    authToken: FFAppState().accessToken,
                    domainUrl: FFAppState().DomainUrl,
                    limit: 10,
                    offset: nextPageMarker.numItems,
                  ),
                ),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                reverse: false,
                scrollDirection: Axis.vertical,
                builderDelegate: PagedChildBuilderDelegate<dynamic>(
                  // Customize what your widget looks like when it's loading the first page.
                  firstPageProgressIndicatorBuilder: (_) =>
                      NotificationShimmerWidget(),
                  // Customize what your widget looks like when it's loading another page.
                  newPageProgressIndicatorBuilder: (_) =>
                      NotificationShimmerWidget(),
                  noItemsFoundIndicatorBuilder: (_) => Center(
                    child: Image.asset(
                      'assets/images/3009287.jpg',
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                  itemBuilder: (context, _, notificationListsIndex) {
                    final notificationListsItem = _model
                        .listViewPagingController!
                        .itemList![notificationListsIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.notificaitonUpdateResult =
                            await CommonApisGroupGroup.notificationUpdateCall
                                .call(
                          domainUrl: FFAppState().DomainUrl,
                          eq: getJsonField(
                            notificationListsItem,
                            r'''$.id''',
                          ),
                          authToken: FFAppState().accessToken,
                        );
                        if ((_model.notificaitonUpdateResult?.succeeded ??
                            true)) {
                          if (getJsonField(
                                notificationListsItem,
                                r'''$.module_name''',
                              ) !=
                              null) {
                            if (functions.jsonToString(getJsonField(
                                  notificationListsItem,
                                  r'''$.module_name''',
                                )) ==
                                'sale') {
                              context.pushNamed(
                                'quotation_view_page',
                                queryParameters: {
                                  'id': serializeParam(
                                    getJsonField(
                                      notificationListsItem,
                                      r'''$.sale_orders.id''',
                                    ),
                                    ParamType.int,
                                  ),
                                  'name': serializeParam(
                                    getJsonField(
                                      notificationListsItem,
                                      r'''$.sale_orders.name''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            } else if (functions.jsonToString(getJsonField(
                                  notificationListsItem,
                                  r'''$.module_name''',
                                )) ==
                                'purchase') {
                              context.pushNamed(
                                'purchase_rfq_view',
                                queryParameters: {
                                  'name': serializeParam(
                                    getJsonField(
                                      notificationListsItem,
                                      r'''$.purchase_orders.name''',
                                    ).toString(),
                                    ParamType.String,
                                  ),
                                  'id': serializeParam(
                                    getJsonField(
                                      notificationListsItem,
                                      r'''$.purchase_orders.id''',
                                    ),
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            } else if (functions.jsonToString(getJsonField(
                                  notificationListsItem,
                                  r'''$.module_name''',
                                )) ==
                                'leave') {
                            } else if (functions.jsonToString(getJsonField(
                                  notificationListsItem,
                                  r'''$.module_name''',
                                )) ==
                                'crm') {
                            } else if (functions.jsonToString(getJsonField(
                                  notificationListsItem,
                                  r'''$.module_name''',
                                )) ==
                                'account') {
                            } else if (functions.jsonToString(getJsonField(
                                  notificationListsItem,
                                  r'''$.module_name''',
                                )) ==
                                'task') {
                            } else if (functions.jsonToString(getJsonField(
                                  notificationListsItem,
                                  r'''$.module_name''',
                                )) ==
                                'project') {}
                          } else {
                            setState(() =>
                                _model.listViewPagingController?.refresh());
                            await _model.waitForOnePageForListView();
                          }
                        }

                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: functions.equalValueCheckString(
                                  getJsonField(
                                    notificationListsItem,
                                    r'''$.read_status''',
                                  ).toString(),
                                  'un_read')!
                              ? Color(0xFFCDE2EB)
                              : Color(0x00C2DEE9),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 60.0,
                              color: Color(0x0F000000),
                              offset: Offset(0.0, 10.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(0.0),
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
                                        valueOrDefault<String>(
                                          functions.taskLogFormat(getJsonField(
                                            notificationListsItem,
                                            r'''$.create_date''',
                                          ).toString()),
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                                  10.0, 0.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/notification.png',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              notificationListsItem,
                                              r'''$.name''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.removeAllHtmlTags(
                                                  getJsonField(
                                                notificationListsItem,
                                                r'''$.description''',
                                              ).toString()),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .rgb,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 0.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ).animateOnPageLoad(animationsMap['listViewOnPageLoadAnimation']!),
          ),
        ],
      ),
    );
  }
}
