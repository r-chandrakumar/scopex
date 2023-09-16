import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'purchase_dashboard_list_model.dart';
export 'purchase_dashboard_list_model.dart';

class PurchaseDashboardListWidget extends StatefulWidget {
  const PurchaseDashboardListWidget({
    Key? key,
    required this.startdate,
  }) : super(key: key);

  final String? startdate;

  @override
  _PurchaseDashboardListWidgetState createState() =>
      _PurchaseDashboardListWidgetState();
}

class _PurchaseDashboardListWidgetState
    extends State<PurchaseDashboardListWidget> {
  late PurchaseDashboardListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PurchaseDashboardListModel());

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
              context.safePop();
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: wrapWithModel(
                model: _model.backButttonComponentModel,
                updateCallback: () => setState(() {}),
                child: BackButttonComponentWidget(),
              ),
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Text(
              FFLocalizations.of(context).getText(
                '1x2eas42' /* Purchase */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).appBarTextColor,
                    fontSize: 23.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: OverallDashboardGroup.purchaseListDashCall.call(
              domainUrl: FFAppState().DomainUrl,
              authToken: FFAppState().accessToken,
              start: widget.startdate,
              end: functions.getTodayDate(),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 40.0,
                    height: 40.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Color(0xFF47E171),
                      ),
                    ),
                  ),
                );
              }
              final columnPurchaseListDashResponse = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'fchasb6p' /* Amount :  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .appBarTextColor,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      valueOrDefault<String>(
                                        functions.amountSymbol(
                                            OverallDashboardGroup
                                                .purchaseListDashCall
                                                .totalAmount(
                                                  columnPurchaseListDashResponse
                                                      .jsonBody,
                                                )
                                                .toString(),
                                            FFAppState().currencySymbol),
                                        '-',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .appBarTextColor,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '2kv4fbi4' /* Count :  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .appBarTextColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Text(
                                  OverallDashboardGroup.purchaseListDashCall
                                      .totalCount(
                                        columnPurchaseListDashResponse.jsonBody,
                                      )
                                      .toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .appBarTextColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(width: 5.0)),
                        ),
                      ),
                    ),
                    Container(
                      width: 400.0,
                      height: 350.0,
                      child: custom_widgets.BarChart(
                        width: 400.0,
                        height: 350.0,
                        dateWise: (getJsonField(
                          functions.dashboardXandYaxisCalculation(
                              OverallDashboardGroup.purchaseListDashCall
                                  .nodeList(
                                    columnPurchaseListDashResponse.jsonBody,
                                  )
                                  ?.toList()),
                          r'''$.xLabels''',
                        ) as List)
                            .map<String>((s) => s.toString())
                            .toList(),
                        amountWise: getJsonField(
                          functions.dashboardXandYaxisCalculation(
                              OverallDashboardGroup.purchaseListDashCall
                                  .nodeList(
                                    columnPurchaseListDashResponse.jsonBody,
                                  )
                                  ?.toList()),
                          r'''$.yValues''',
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 0.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '37rr6spj' /* Purchase List */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Roboto',
                                color:
                                    FlutterFlowTheme.of(context).caradTextColor,
                                fontSize: 16.0,
                              ),
                        ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final purchase =
                            OverallDashboardGroup.purchaseListDashCall
                                    .puchase(
                                      columnPurchaseListDashResponse.jsonBody,
                                    )
                                    ?.toList() ??
                                [];
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: purchase.length,
                          itemBuilder: (context, purchaseIndex) {
                            final purchaseItem = purchase[purchaseIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 10.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 60.0,
                                      color: Color(0x0F000000),
                                      offset: Offset(0.0, 10.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).hashColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 15.0, 15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 3.0),
                                                  child: Text(
                                                    getJsonField(
                                                      purchaseItem,
                                                      r'''$.res_partner.name''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    functions
                                                        .convertLeaveDateFormat(
                                                            getJsonField(
                                                      purchaseItem,
                                                      r'''$.date_order''',
                                                    ).toString()),
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 13.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              functions.amountSymbol(
                                                  getJsonField(
                                                    purchaseItem,
                                                    r'''$.amount_total''',
                                                  ).toString(),
                                                  FFAppState().currencySymbol),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ].addToStart(SizedBox(height: 15.0)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
