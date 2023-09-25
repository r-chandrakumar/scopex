import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/expenses/expshimmer/expshimmer_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'list_view_check_model.dart';
export 'list_view_check_model.dart';

class ListViewCheckWidget extends StatefulWidget {
  const ListViewCheckWidget({
    Key? key,
    required this.startdate,
    required this.enddate,
    required this.state,
  }) : super(key: key);

  final String? startdate;
  final String? enddate;
  final String? state;

  @override
  _ListViewCheckWidgetState createState() => _ListViewCheckWidgetState();
}

class _ListViewCheckWidgetState extends State<ListViewCheckWidget> {
  late ListViewCheckModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListViewCheckModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 55.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: wrapWithModel(
                      model: _model.backButttonComponentModel,
                      updateCallback: () => setState(() {}),
                      child: BackButttonComponentWidget(),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '0q1duhqa' /* Add Items */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .appBarTextColor,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: RefreshIndicator(
            onRefresh: () async {
              setState(() => _model.listViewPagingController?.refresh());
              await _model.waitForOnePageForListView();
            },
            child: PagedListView<ApiPagingParams, dynamic>.separated(
              pagingController: _model.setListViewController(
                (nextPageMarker) => SalesApiGroupGroup.saleOrderListCall.call(
                  authToken: FFAppState().accessToken,
                  state: widget.state,
                  domainUrl: FFAppState().DomainUrl,
                  limit: 10,
                  offset: nextPageMarker.numItems,
                  start: widget.startdate,
                  end: widget.enddate,
                ),
              ),
              padding: EdgeInsets.fromLTRB(
                0,
                15.0,
                0,
                70.0,
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
                itemBuilder: (context, _, saleOrderListsIndex) {
                  final saleOrderListsItem = _model
                      .listViewPagingController!.itemList![saleOrderListsIndex];
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'sale_order_view_page',
                        queryParameters: {
                          'id': serializeParam(
                            getJsonField(
                              saleOrderListsItem,
                              r'''$.id''',
                            ),
                            ParamType.int,
                          ),
                          'name': serializeParam(
                            getJsonField(
                              saleOrderListsItem,
                              r'''$.name''',
                            ).toString(),
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: wrapWithModel(
                      model: _model.listPageContainerModels.getModel(
                        saleOrderListsIndex.toString(),
                        saleOrderListsIndex,
                      ),
                      updateCallback: () => setState(() {}),
                      child: ListPageContainerWidget(
                        key: Key(
                          'Keyt1u_${saleOrderListsIndex.toString()}',
                        ),
                        status: getJsonField(
                          saleOrderListsItem,
                          r'''$.state''',
                        ).toString(),
                        number: getJsonField(
                          saleOrderListsItem,
                          r'''$.name''',
                        ).toString(),
                        date: getJsonField(
                          saleOrderListsItem,
                          r'''$.date_order''',
                        ).toString(),
                        partnername: getJsonField(
                          saleOrderListsItem,
                          r'''$.res_partner.name''',
                        ).toString(),
                        amount: getJsonField(
                          saleOrderListsItem,
                          r'''$.amount_total''',
                        ),
                        model: 'saleorder',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
