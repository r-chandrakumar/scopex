import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/expenses/expshimmer/expshimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inventory_forecast_quantity_model.dart';
export 'inventory_forecast_quantity_model.dart';

class InventoryForecastQuantityWidget extends StatefulWidget {
  const InventoryForecastQuantityWidget({
    Key? key,
    this.id,
  }) : super(key: key);

  final int? id;

  @override
  _InventoryForecastQuantityWidgetState createState() =>
      _InventoryForecastQuantityWidgetState();
}

class _InventoryForecastQuantityWidgetState
    extends State<InventoryForecastQuantityWidget>
    with TickerProviderStateMixin {
  late InventoryForecastQuantityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
  void initState() {
    super.initState();
    _model = createModel(context, () => InventoryForecastQuantityModel());

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
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'mapp7xbg' /* Forecasted Quantity */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).blackcolor,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: InventoryApiGroupGroup.forecastQuantityCall.call(
              id: widget.id,
              authToken: FFAppState().accessToken,
              domainUrl: FFAppState().DomainUrl,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return ExpshimmerWidget();
              }
              final listViewForecastQuantityResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final forecastQuantityList =
                      InventoryApiGroupGroup.forecastQuantityCall
                          .quantitylists(
                            listViewForecastQuantityResponse.jsonBody,
                          )
                          .toList();
                  if (forecastQuantityList.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/New_Project_(2).png',
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: forecastQuantityList.length,
                    itemBuilder: (context, forecastQuantityListIndex) {
                      final forecastQuantityListItem =
                          forecastQuantityList[forecastQuantityListIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
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
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    13.0, 13.0, 13.0, 13.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.isNull(getJsonField(
                                                forecastQuantityListItem,
                                                r'''$.product_template.res_company.name''',
                                              ).toString()),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.convertLeaveDateFormat(
                                                  getJsonField(
                                                forecastQuantityListItem,
                                                r'''$.forecast_quantity.date''',
                                              ).toString()),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .appBarTextColor,
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '6qj60ntg' /* Qty :  */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Flexible(
                                            child: Text(
                                              valueOrDefault<String>(
                                                functions.isNull(getJsonField(
                                                  forecastQuantityListItem,
                                                  r'''$.forecast_quantity.product_qty''',
                                                ).toString()),
                                                '-',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ).animateOnPageLoad(
                      animationsMap['listViewOnPageLoadAnimation']!);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
