import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/edit_view_product_line_items_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/search_components/customer_search_component/customer_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'r_f_q_edit_model.dart';
export 'r_f_q_edit_model.dart';

class RFQEditWidget extends StatefulWidget {
  const RFQEditWidget({
    Key? key,
    this.id,
  }) : super(key: key);

  final int? id;

  @override
  _RFQEditWidgetState createState() => _RFQEditWidgetState();
}

class _RFQEditWidgetState extends State<RFQEditWidget> {
  late RFQEditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RFQEditModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        _model.purchaseViewRes =
            await PurchaseApiGroupGroup.purchaseOrderViewCall.call(
          authToken: FFAppState().accessToken,
          domainUrl: FFAppState().DomainUrl,
          id: widget.id,
        );
        if ((_model.purchaseViewRes?.succeeded ?? true)) {
          setState(() {
            FFAppState().totalsJson = null;
            FFAppState().ProductEditItem = [];
            FFAppState().SupplierSearch = null;
          });
          setState(() {
            FFAppState().totalsJson = functions.totalsJson(
                'add',
                PurchaseApiGroupGroup.purchaseOrderViewCall
                    .purcahseOrderLineList(
                      (_model.purchaseViewRes?.jsonBody ?? ''),
                    )
                    ?.toList())!;
            FFAppState().ProductEditItem = functions
                .editItemProductList(
                    'purchase',
                    PurchaseApiGroupGroup.purchaseOrderViewCall
                        .lineJsons(
                          (_model.purchaseViewRes?.jsonBody ?? ''),
                        )
                        ?.toList())!
                .toList()
                .cast<dynamic>();
          });
          _model.partnerDetailResponse =
              await CommonApisGroupGroup.getCustomerDetailsCall.call(
            customerId: PurchaseApiGroupGroup.purchaseOrderViewCall.partnetId(
              (_model.purchaseViewRes?.jsonBody ?? ''),
            ),
            authToken: FFAppState().accessToken,
            domainUrl: FFAppState().DomainUrl,
          );
          if ((_model.partnerDetailResponse?.succeeded ?? true)) {
            FFAppState().update(() {
              FFAppState().SupplierSearch =
                  CommonApisGroupGroup.getCustomerDetailsCall.customerDetails(
                (_model.partnerDetailResponse?.jsonBody ?? ''),
              );
            });
          }
        }
      } else {
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                'yjgb5l20' /* RFQ Edit */,
              ),
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Outfit',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 15.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: PurchaseApiGroupGroup.purchaseOrderViewCall
                                .call(
                              authToken: FFAppState().accessToken,
                              domainUrl: FFAppState().DomainUrl,
                              id: widget.id,
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
                              final mobileViewColumnPurchaseOrderViewResponse =
                                  snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    desktop: false,
                                  ))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              1.0,
                                      decoration: BoxDecoration(),
                                      child: Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '5q5a2n1z' /* Select Supplier */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                enableDrag:
                                                                    false,
                                                                useSafeArea:
                                                                    true,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () => FocusScope.of(
                                                                            context)
                                                                        .requestFocus(
                                                                            _model.unfocusNode),
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          CustomerSearchComponentWidget(),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  setState(
                                                                      () {}));
                                                            },
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .hashColor,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.00,
                                                                          0.00),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                                    FFAppState().CustomerSearch,
                                                                                    r'''$.name''',
                                                                                  ) !=
                                                                                  null
                                                                              ? getJsonField(
                                                                                  FFAppState().CustomerSearch,
                                                                                  r'''$.name''',
                                                                                ).toString()
                                                                              : 'Select Customer',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).inputtextColor,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .inputtextColor,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 18.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'whcmjlk1' /* Payment Terms */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          FutureBuilder<
                                                              ApiCallResponse>(
                                                            future: CommonApisGroupGroup
                                                                .paymentTermListCall
                                                                .call(
                                                              authToken:
                                                                  FFAppState()
                                                                      .accessToken,
                                                              domainUrl:
                                                                  FFAppState()
                                                                      .DomainUrl,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 50.0,
                                                                  child:
                                                                      DropDownEmptyFullWidthWidget(),
                                                                );
                                                              }
                                                              final paymenttermsPaymentTermListResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return FlutterFlowDropDown<
                                                                  String>(
                                                                controller: _model
                                                                        .paymenttermsValueController ??=
                                                                    FormFieldController<
                                                                        String>(
                                                                  _model.paymenttermsValue ??=
                                                                      functions
                                                                          .convertIntToString(PurchaseApiGroupGroup
                                                                              .purchaseOrderViewCall
                                                                              .paymentTermId(
                                                                            mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                          ))
                                                                          ?.toString(),
                                                                ),
                                                                options:
                                                                    (getJsonField(
                                                                  paymenttermsPaymentTermListResponse
                                                                      .jsonBody,
                                                                  r'''$.account_payment_term..id''',
                                                                ) as List)
                                                                        .map<String>((s) =>
                                                                            s.toString())
                                                                        .toList()!,
                                                                optionLabels:
                                                                    (getJsonField(
                                                                  paymenttermsPaymentTermListResponse
                                                                      .jsonBody,
                                                                  r'''$.account_payment_term..name''',
                                                                ) as List)
                                                                        .map<String>((s) =>
                                                                            s.toString())
                                                                        .toList()!,
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.paymenttermsValue =
                                                                            val),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .inputtextColor,
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'htrtxxq5' /* Payment  Terms */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .inputtextColor,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 0.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .hashColor,
                                                                borderWidth:
                                                                    1.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 18.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '4hbsrmw9' /* RFQ Date */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .hashColor,
                                                                  width: 1.0,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          () {
                                                                            if (_model.datePicked1 !=
                                                                                null) {
                                                                              return functions.convertLeaveDateFormat(_model.datePicked1?.toString());
                                                                            } else if (PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                        .orderDate(
                                                                                          mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    null &&
                                                                                PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                        .orderDate(
                                                                                          mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    '') {
                                                                              return functions.convertLeaveDateFormat(PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                  .orderDate(
                                                                                    mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                  )
                                                                                  .toString());
                                                                            } else {
                                                                              return 'DD/MM/YY';
                                                                            }
                                                                          }(),
                                                                          'DD/MM/YY',
                                                                        ),
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: FlutterFlowTheme.of(context).inputtextColor,
                                                                              fontSize: 14.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        final _datePicked1Date =
                                                                            await showDatePicker(
                                                                          context:
                                                                              context,
                                                                          initialDate: functions.convertStringToDateTime(PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                          .orderDate(
                                                                                            mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      null &&
                                                                                  PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                          .orderDate(
                                                                                            mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      ''
                                                                              ? PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                  .orderDate(
                                                                                    mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                  )
                                                                                  .toString()
                                                                              : getCurrentTimestamp.toString())!,
                                                                          firstDate:
                                                                              DateTime(1900),
                                                                          lastDate:
                                                                              DateTime(2050),
                                                                        );

                                                                        if (_datePicked1Date !=
                                                                            null) {
                                                                          setState(
                                                                              () {
                                                                            _model.datePicked1 =
                                                                                DateTime(
                                                                              _datePicked1Date.year,
                                                                              _datePicked1Date.month,
                                                                              _datePicked1Date.day,
                                                                            );
                                                                          });
                                                                        }
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .calendar_today_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .inputtextColor,
                                                                        size:
                                                                            24.0,
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
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '4v38ef5e' /* Due Date */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: 50.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .hashColor,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        () {
                                                                          if (_model.datePicked2 !=
                                                                              null) {
                                                                            return functions.convertLeaveDateFormat(_model.datePicked2?.toString());
                                                                          } else if (PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                      .plannedDate(
                                                                                        mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                      )
                                                                                      .toString() !=
                                                                                  null &&
                                                                              PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                      .plannedDate(
                                                                                        mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                      )
                                                                                      .toString() !=
                                                                                  '') {
                                                                            return functions.convertLeaveDateFormat(PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                .plannedDate(
                                                                                  mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                )
                                                                                .toString());
                                                                          } else {
                                                                            return 'DD/MM/YY';
                                                                          }
                                                                        }(),
                                                                        'DD/MM/YY',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).inputtextColor,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      final _datePicked2Date =
                                                                          await showDatePicker(
                                                                        context:
                                                                            context,
                                                                        initialDate: functions.convertStringToDateTime(PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                        .plannedDate(
                                                                                          mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    null &&
                                                                                PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                        .plannedDate(
                                                                                          mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    ''
                                                                            ? PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                .plannedDate(
                                                                                  mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                )
                                                                                .toString()
                                                                            : getCurrentTimestamp.toString())!,
                                                                        firstDate: functions.convertStringToDateTime(PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                        .plannedDate(
                                                                                          mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    null &&
                                                                                PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                        .plannedDate(
                                                                                          mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    ''
                                                                            ? PurchaseApiGroupGroup.purchaseOrderViewCall
                                                                                .plannedDate(
                                                                                  mobileViewColumnPurchaseOrderViewResponse.jsonBody,
                                                                                )
                                                                                .toString()
                                                                            : getCurrentTimestamp.toString())!,
                                                                        lastDate:
                                                                            DateTime(2050),
                                                                      );

                                                                      if (_datePicked2Date !=
                                                                          null) {
                                                                        setState(
                                                                            () {
                                                                          _model.datePicked2 =
                                                                              DateTime(
                                                                            _datePicked2Date.year,
                                                                            _datePicked2Date.month,
                                                                            _datePicked2Date.day,
                                                                          );
                                                                        });
                                                                      }
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .calendar_today_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .inputtextColor,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 15.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            useSafeArea: true,
                                                            context: context,
                                                            builder: (context) {
                                                              return GestureDetector(
                                                                onTap: () => FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode),
                                                                child: Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      CommonEditProductSearchWidget(
                                                                    page: 'rfq',
                                                                    id: widget
                                                                        .id!,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'oxqst4bn' /* Add Items */,
                                                        ),
                                                        icon: Icon(
                                                          Icons.add,
                                                          size: 15.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 40.0,
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .addItemsButton,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .white,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 18.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .editViewProductLineItemsModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            EditViewProductLineItemsWidget(
                                                          page: 'rfq',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'gtyhzzud' /* Notes */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        18.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                      .textController ??=
                                                                  TextEditingController(
                                                                text: functions.isNull(
                                                                    PurchaseApiGroupGroup
                                                                        .purchaseOrderViewCall
                                                                        .notes(
                                                                          mobileViewColumnPurchaseOrderViewResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString()),
                                                              ),
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  '4ichqjji' /* Notes */,
                                                                ),
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .hashColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .hashColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .inputtextColor,
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                              maxLines: 3,
                                                              validator: _model
                                                                  .textControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 8.0, 0.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      if (getJsonField(
                                                            FFAppState()
                                                                .SupplierSearch,
                                                            r'''$.id''',
                                                          ) !=
                                                          null) {
                                                        _model.purchaseOrderUpdateRes =
                                                            await PurchaseApiGroupGroup
                                                                .purchaseOrderUpdateCall
                                                                .call(
                                                          authToken:
                                                              FFAppState()
                                                                  .accessToken,
                                                          id: widget.id,
                                                          partnerId:
                                                              getJsonField(
                                                            FFAppState()
                                                                .SupplierSearch,
                                                            r'''$.id''',
                                                          ),
                                                          paymentTermId: functions
                                                              .changeStringToInt(
                                                                  _model
                                                                      .paymenttermsValue),
                                                          dateOrder: _model
                                                                      .datePicked1 !=
                                                                  null
                                                              ? _model
                                                                  .datePicked1
                                                                  ?.toString()
                                                              : PurchaseApiGroupGroup
                                                                  .purchaseOrderViewCall
                                                                  .orderDate(
                                                                    mobileViewColumnPurchaseOrderViewResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString(),
                                                          datePlanned: _model
                                                                      .datePicked2 !=
                                                                  null
                                                              ? _model
                                                                  .datePicked2
                                                                  ?.toString()
                                                              : PurchaseApiGroupGroup
                                                                  .purchaseOrderViewCall
                                                                  .plannedDate(
                                                                    mobileViewColumnPurchaseOrderViewResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString(),
                                                          notes: _model
                                                              .textController
                                                              .text,
                                                          amountUntaxed:
                                                              getJsonField(
                                                            FFAppState()
                                                                .totalsJson,
                                                            r'''$.untaxtotal''',
                                                          ),
                                                          amountTax:
                                                              getJsonField(
                                                            FFAppState()
                                                                .totalsJson,
                                                            r'''$.taxtotal''',
                                                          ),
                                                          amountTotal:
                                                              getJsonField(
                                                            FFAppState()
                                                                .totalsJson,
                                                            r'''$.overalltotal''',
                                                          ),
                                                          domainUrl:
                                                              FFAppState()
                                                                  .DomainUrl,
                                                        );
                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .purchaseOrderUpdateRes
                                                                ?.succeeded ??
                                                            true)) {
                                                          context.pushNamed(
                                                            'purchase_rfq_view',
                                                            queryParameters: {
                                                              'name':
                                                                  serializeParam(
                                                                PurchaseApiGroupGroup
                                                                    .purchaseOrderViewCall
                                                                    .purchaseName(
                                                                      mobileViewColumnPurchaseOrderViewResponse
                                                                          .jsonBody,
                                                                    )
                                                                    .toString(),
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'id':
                                                                  serializeParam(
                                                                widget.id,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                          );

                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'RFQ edited successfully...',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Something Went Wrong',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Supplier is Required',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                          ),
                                                        );
                                                      }

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'lly5gziu' /* Save */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 150.0,
                                                      height: 40.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .saveButton,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      elevation: 1.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
