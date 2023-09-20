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
import 'quotation_edit_page_model.dart';
export 'quotation_edit_page_model.dart';

class QuotationEditPageWidget extends StatefulWidget {
  const QuotationEditPageWidget({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int? id;

  @override
  _QuotationEditPageWidgetState createState() =>
      _QuotationEditPageWidgetState();
}

class _QuotationEditPageWidgetState extends State<QuotationEditPageWidget> {
  late QuotationEditPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuotationEditPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        _model.saleViewRes = await SalesApiGroupGroup.saleOrderViewCall.call(
          authToken: FFAppState().accessToken,
          eq: widget.id,
          domainUrl: FFAppState().DomainUrl,
        );
        if ((_model.saleViewRes?.succeeded ?? true)) {
          FFAppState().update(() {
            FFAppState().totalsJson = null;
            FFAppState().ProductEditItem = [];
            FFAppState().CustomerSearch = null;
          });
          FFAppState().update(() {
            FFAppState().totalsJson = functions.totalsJson(
                'add',
                SalesApiGroupGroup.saleOrderViewCall
                    .lineJsons(
                      (_model.saleViewRes?.jsonBody ?? ''),
                    )
                    ?.toList())!;
            FFAppState().ProductEditItem = functions
                .editItemProductList(
                    'sales',
                    SalesApiGroupGroup.saleOrderViewCall
                        .lineJsons(
                          (_model.saleViewRes?.jsonBody ?? ''),
                        )
                        ?.toList())!
                .toList()
                .cast<dynamic>();
          });
          _model.partnerDetailResponse =
              await CommonApisGroupGroup.getCustomerDetailsCall.call(
            customerId: SalesApiGroupGroup.saleOrderViewCall.partnerId(
              (_model.saleViewRes?.jsonBody ?? ''),
            ),
            authToken: FFAppState().accessToken,
            domainUrl: FFAppState().DomainUrl,
          );
          if ((_model.partnerDetailResponse?.succeeded ?? true)) {
            FFAppState().update(() {
              FFAppState().CustomerSearch =
                  CommonApisGroupGroup.getCustomerDetailsCall.customerDetails(
                (_model.partnerDetailResponse?.jsonBody ?? ''),
              );
            });
          }
        }
      } else {
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.safePop();
              },
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
                'yjsz6efs' /* Edit Quotations */,
              ),
              style: FlutterFlowTheme.of(context).displayMedium.override(
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
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              desktop: false,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
              child: FutureBuilder<ApiCallResponse>(
                future: _model.test(
                  requestFn: () => SalesApiGroupGroup.saleOrderViewCall.call(
                    authToken: FFAppState().accessToken,
                    eq: widget.id,
                    domainUrl: FFAppState().DomainUrl,
                  ),
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
                  final mobileViewColumnSaleOrderViewResponse = snapshot.data!;
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 18.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        's57ljd7v' /* Customer */,
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
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      useSafeArea: true,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(_model
                                                                  .unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                CustomerSearchComponentWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                          FFAppState()
                                                                              .CustomerSearch,
                                                                          r'''$.name''',
                                                                        ) !=
                                                                        null
                                                                    ? getJsonField(
                                                                        FFAppState()
                                                                            .CustomerSearch,
                                                                        r'''$.name''',
                                                                      ).toString()
                                                                    : 'Select Customer',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_down_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.00, 0.00),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o6jz65rl' /* Payment Terms */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 14.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              FutureBuilder<ApiCallResponse>(
                                                future: CommonApisGroupGroup
                                                    .paymentTermListCall
                                                    .call(
                                                  authToken:
                                                      FFAppState().accessToken,
                                                  domainUrl:
                                                      FFAppState().DomainUrl,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: 48.0,
                                                      child:
                                                          DropDownEmptyFullWidthWidget(),
                                                    );
                                                  }
                                                  final paymenttermsPaymentTermListResponse =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .paymenttermsValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.paymenttermsValue ??=
                                                          functions
                                                              .convertIntToString(
                                                                  SalesApiGroupGroup
                                                                      .saleOrderViewCall
                                                                      .paymentTermId(
                                                                mobileViewColumnSaleOrderViewResponse
                                                                    .jsonBody,
                                                              ))
                                                              .toString(),
                                                    ),
                                                    options: (CommonApisGroupGroup
                                                            .paymentTermListCall
                                                            .paymentTermId(
                                                      paymenttermsPaymentTermListResponse
                                                          .jsonBody,
                                                    ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()!
                                                        .map(
                                                            (e) => e.toString())
                                                        .toList(),
                                                    optionLabels:
                                                        (CommonApisGroupGroup
                                                                .paymentTermListCall
                                                                .paymentTermName(
                                                      paymenttermsPaymentTermListResponse
                                                          .jsonBody,
                                                    ) as List)
                                                            .map<String>((s) =>
                                                                s.toString())
                                                            .toList()!
                                                            .map((e) =>
                                                                e.toString())
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .paymenttermsValue =
                                                            val),
                                                    height: 50.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ee0glszt' /* Payment  Terms */,
                                                    ),
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 0.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .hashColor,
                                                    borderWidth: 1.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 18.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zkc9v1vv' /* Quotation Date */,
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
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .hashColor,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                () {
                                                                  if (_model
                                                                          .datePicked1 !=
                                                                      null) {
                                                                    return functions.convertLeaveDateFormat(_model
                                                                        .datePicked1
                                                                        ?.toString());
                                                                  } else if (SalesApiGroupGroup
                                                                              .saleOrderViewCall
                                                                              .orderDate(
                                                                                mobileViewColumnSaleOrderViewResponse.jsonBody,
                                                                              )
                                                                              .toString() !=
                                                                          null &&
                                                                      SalesApiGroupGroup
                                                                              .saleOrderViewCall
                                                                              .orderDate(
                                                                                mobileViewColumnSaleOrderViewResponse.jsonBody,
                                                                              )
                                                                              .toString() !=
                                                                          '') {
                                                                    return functions.convertLeaveDateFormat(SalesApiGroupGroup
                                                                        .saleOrderViewCall
                                                                        .orderDate(
                                                                          mobileViewColumnSaleOrderViewResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString());
                                                                  } else {
                                                                    return 'DD/MM/YY';
                                                                  }
                                                                }(),
                                                                'DD/MM/YY',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
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
                                                              final _datePicked1Date =
                                                                  await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDate: functions.convertStringToDateTime(
                                                                    SalesApiGroupGroup
                                                                        .saleOrderViewCall
                                                                        .orderDate(
                                                                          mobileViewColumnSaleOrderViewResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString())!,
                                                                firstDate:
                                                                    DateTime(
                                                                        1900),
                                                                lastDate:
                                                                    DateTime(
                                                                        2050),
                                                              );

                                                              if (_datePicked1Date !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked1 =
                                                                      DateTime(
                                                                    _datePicked1Date
                                                                        .year,
                                                                    _datePicked1Date
                                                                        .month,
                                                                    _datePicked1Date
                                                                        .day,
                                                                  );
                                                                });
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .calendar_today_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
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
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4312oc6o' /* Due Date */,
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
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .hashColor,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                () {
                                                                  if (_model
                                                                          .datePicked2 !=
                                                                      null) {
                                                                    return functions.convertLeaveDateFormat(_model
                                                                        .datePicked2
                                                                        ?.toString());
                                                                  } else if (SalesApiGroupGroup
                                                                              .saleOrderViewCall
                                                                              .orderDate(
                                                                                mobileViewColumnSaleOrderViewResponse.jsonBody,
                                                                              )
                                                                              .toString() !=
                                                                          null &&
                                                                      SalesApiGroupGroup
                                                                              .saleOrderViewCall
                                                                              .orderDate(
                                                                                mobileViewColumnSaleOrderViewResponse.jsonBody,
                                                                              )
                                                                              .toString() !=
                                                                          '') {
                                                                    return functions.convertLeaveDateFormat(SalesApiGroupGroup
                                                                        .saleOrderViewCall
                                                                        .orderExpiryDate(
                                                                          mobileViewColumnSaleOrderViewResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString());
                                                                  } else {
                                                                    return 'DD/MM/YY';
                                                                  }
                                                                }(),
                                                                'DD/MM/YY',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
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
                                                              final _datePicked2Date =
                                                                  await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDate: functions.convertStringToDateTime(SalesApiGroupGroup
                                                                            .saleOrderViewCall
                                                                            .orderExpiryDate(
                                                                              mobileViewColumnSaleOrderViewResponse.jsonBody,
                                                                            )
                                                                            .toString() !=
                                                                        'null'
                                                                    ? SalesApiGroupGroup
                                                                        .saleOrderViewCall
                                                                        .orderExpiryDate(
                                                                          mobileViewColumnSaleOrderViewResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString()
                                                                    : getCurrentTimestamp
                                                                        .toString())!,
                                                                firstDate: functions.convertStringToDateTime(SalesApiGroupGroup
                                                                            .saleOrderViewCall
                                                                            .orderExpiryDate(
                                                                              mobileViewColumnSaleOrderViewResponse.jsonBody,
                                                                            )
                                                                            .toString() !=
                                                                        'null'
                                                                    ? SalesApiGroupGroup
                                                                        .saleOrderViewCall
                                                                        .orderExpiryDate(
                                                                          mobileViewColumnSaleOrderViewResponse
                                                                              .jsonBody,
                                                                        )
                                                                        .toString()
                                                                    : getCurrentTimestamp
                                                                        .toString())!,
                                                                lastDate:
                                                                    DateTime(
                                                                        2050),
                                                              );

                                                              if (_datePicked2Date !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked2 =
                                                                      DateTime(
                                                                    _datePicked2Date
                                                                        .year,
                                                                    _datePicked2Date
                                                                        .month,
                                                                    _datePicked2Date
                                                                        .day,
                                                                  );
                                                                });
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .calendar_today_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
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
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 25.0, 0.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => FocusScope
                                                              .of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            CommonEditProductSearchWidget(
                                                          page: 'quote',
                                                          id: widget.id!,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'u4xx8ae3' /* Add Items */,
                                              ),
                                              icon: Icon(
                                                Icons.add,
                                                size: 15.0,
                                              ),
                                              options: FFButtonOptions(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .addItemsButton,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                borderSide: BorderSide(
                                                  width: 0.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .editViewProductLineItemsModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      EditViewProductLineItemsWidget(
                                                    page: 'quote',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 18.0, 0.0, 0.0),
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
                                                            '4l0q1c5r' /* Note */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                fontSize: 14.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                    .textController ??=
                                                                TextEditingController(
                                                              text: functions.isNull(
                                                                  SalesApiGroupGroup
                                                                      .saleOrderViewCall
                                                                      .note(
                                                                        mobileViewColumnSaleOrderViewResponse
                                                                            .jsonBody,
                                                                      )
                                                                      .toString()),
                                                            ),
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .caradTextColor,
                                                                        fontSize:
                                                                            15.0,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .inputtextColor,
                                                                        fontSize:
                                                                            16.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
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
                                                                      .inputFieldColor,
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
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
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
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 15.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                var _shouldSetState = false;
                                                if (_model.formKey
                                                            .currentState ==
                                                        null ||
                                                    !_model
                                                        .formKey.currentState!
                                                        .validate()) {
                                                  return;
                                                }
                                                if (_model.paymenttermsValue ==
                                                    null) {
                                                  return;
                                                }
                                                if (getJsonField(
                                                      FFAppState()
                                                          .CustomerSearch,
                                                      r'''$.id''',
                                                    ) !=
                                                    null) {
                                                  _model.saleorderupdateresponse =
                                                      await SalesApiGroupGroup
                                                          .saleOrderUpdateCall
                                                          .call(
                                                    authToken: FFAppState()
                                                        .accessToken,
                                                    id: widget.id,
                                                    partnerId: getJsonField(
                                                      FFAppState()
                                                          .CustomerSearch,
                                                      r'''$.id''',
                                                    ),
                                                    paymentTermId: functions
                                                        .changeStringToInt(_model
                                                            .paymenttermsValue),
                                                    dateOrder: _model
                                                                .datePicked1 !=
                                                            null
                                                        ? _model.datePicked1
                                                            ?.toString()
                                                        : SalesApiGroupGroup
                                                            .saleOrderViewCall
                                                            .orderDate(
                                                              mobileViewColumnSaleOrderViewResponse
                                                                  .jsonBody,
                                                            )
                                                            .toString(),
                                                    commitmentDate: _model
                                                                .datePicked2 !=
                                                            null
                                                        ? _model.datePicked2
                                                            ?.toString()
                                                        : SalesApiGroupGroup
                                                            .saleOrderViewCall
                                                            .orderExpiryDate(
                                                              mobileViewColumnSaleOrderViewResponse
                                                                  .jsonBody,
                                                            )
                                                            .toString(),
                                                    note: _model
                                                        .textController.text,
                                                    domainUrl:
                                                        FFAppState().DomainUrl,
                                                    amountUntaxed: getJsonField(
                                                      FFAppState().totalsJson,
                                                      r'''$.untaxtotal''',
                                                    ),
                                                    amountTax: getJsonField(
                                                      FFAppState().totalsJson,
                                                      r'''$.taxtotal''',
                                                    ),
                                                    amountTotal: getJsonField(
                                                      FFAppState().totalsJson,
                                                      r'''$.overalltotal''',
                                                    ),
                                                  );
                                                  _shouldSetState = true;
                                                  if (mobileViewColumnSaleOrderViewResponse
                                                      .succeeded) {
                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamed(
                                                      'quotation_view_page',
                                                      queryParameters: {
                                                        'id': serializeParam(
                                                          widget.id,
                                                          ParamType.int,
                                                        ),
                                                        'name': serializeParam(
                                                          SalesApiGroupGroup
                                                              .saleOrderViewCall
                                                              .orderName(
                                                                mobileViewColumnSaleOrderViewResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString(),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Quotation edited successfully...',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .white,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
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
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: Duration(
                                                            milliseconds: 4000),
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
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Customer is Required',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
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
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'wt45w1qj' /* Save */,
                                              ),
                                              options: FFButtonOptions(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .saveButton,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                elevation: 1.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
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
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
