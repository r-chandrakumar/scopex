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
import 'quotation_dashboard_model.dart';
export 'quotation_dashboard_model.dart';

class QuotationDashboardWidget extends StatefulWidget {
  const QuotationDashboardWidget({
    Key? key,
    required this.startdate,
  }) : super(key: key);

  final String? startdate;

  @override
  _QuotationDashboardWidgetState createState() =>
      _QuotationDashboardWidgetState();
}

class _QuotationDashboardWidgetState extends State<QuotationDashboardWidget> {
  late QuotationDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuotationDashboardModel());

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
                'itq2qm95' /* Quotation */,
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
            future: OverallDashboardGroup.quotationListDashCall.call(
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
              final columnQuotationListDashResponse = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
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
                                  'po9kljjr' /* Amount :  */,
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
                                            .quotationListDashCall
                                            .totalAmount(
                                              columnQuotationListDashResponse
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
                                'h8phh7yo' /* Count :  */,
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
                              OverallDashboardGroup.quotationListDashCall
                                  .totalCount(
                                    columnQuotationListDashResponse.jsonBody,
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
                  Container(
                    width: 330.0,
                    height: 350.0,
                    child: custom_widgets.BarChart(
                      width: 330.0,
                      height: 350.0,
                      dateWise: (getJsonField(
                        functions.dashboardXandYaxisCalculation(
                            OverallDashboardGroup.quotationListDashCall
                                .nodeList(
                                  columnQuotationListDashResponse.jsonBody,
                                )
                                ?.toList()),
                        r'''$.xLabels''',
                        true,
                      ) as List)
                          .map<String>((s) => s.toString())
                          .toList(),
                      amountWise: getJsonField(
                        functions.dashboardXandYaxisCalculation(
                            OverallDashboardGroup.quotationListDashCall
                                .nodeList(
                                  columnQuotationListDashResponse.jsonBody,
                                )
                                ?.toList()),
                        r'''$.yValues''',
                        true,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.00, 0.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 10.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'aewrvj96' /* Quotation List */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).caradTextColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Builder(
                            builder: (context) {
                              final quotation =
                                  OverallDashboardGroup.quotationListDashCall
                                          .quotation(
                                            columnQuotationListDashResponse
                                                .jsonBody,
                                          )
                                          ?.toList() ??
                                      [];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: quotation.length,
                                itemBuilder: (context, quotationIndex) {
                                  final quotationItem =
                                      quotation[quotationIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 10.0),
                                    child: InkWell(
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
                                                quotationItem,
                                                r'''$.id''',
                                              ),
                                              ParamType.int,
                                            ),
                                            'name': serializeParam(
                                              getJsonField(
                                                quotationItem,
                                                r'''$.name''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .hashColor,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 15.0, 15.0, 15.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      valueOrDefault<String>(
                                                        functions.isNull(
                                                            getJsonField(
                                                          quotationItem,
                                                          r'''$.res_partner.name''',
                                                        ).toString()),
                                                        '-',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 16.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Text(
                                                      valueOrDefault<String>(
                                                        functions
                                                            .convertLeaveDateFormat(
                                                                getJsonField(
                                                          quotationItem,
                                                          r'''$.date_order''',
                                                        ).toString()),
                                                        '-',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 14.0,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 5.0)),
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  functions.amountSymbol(
                                                      getJsonField(
                                                        quotationItem,
                                                        r'''$.amount_total''',
                                                      ).toString(),
                                                      FFAppState()
                                                          .currencySymbol),
                                                  '-',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 5.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ].addToStart(SizedBox(height: 15.0)),
              );
            },
          ),
        ),
      ),
    );
  }
}
