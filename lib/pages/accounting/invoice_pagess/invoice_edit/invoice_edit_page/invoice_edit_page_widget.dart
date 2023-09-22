import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/reusable_component/edit_view_product_line_items/edit_view_product_line_items_widget.dart';
import '/search_components/customer_search_component/customer_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'invoice_edit_page_model.dart';
export 'invoice_edit_page_model.dart';

class InvoiceEditPageWidget extends StatefulWidget {
  const InvoiceEditPageWidget({
    Key? key,
    this.id,
  }) : super(key: key);

  final int? id;

  @override
  _InvoiceEditPageWidgetState createState() => _InvoiceEditPageWidgetState();
}

class _InvoiceEditPageWidgetState extends State<InvoiceEditPageWidget> {
  late InvoiceEditPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvoiceEditPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        _model.invoiceResview =
            await AccountingApiGroupGroup.invoiceViewCall.call(
          authToken: FFAppState().accessToken,
          domainUrl: FFAppState().DomainUrl,
          eq: widget.id,
        );
        if ((_model.invoiceResview?.succeeded ?? true)) {
          FFAppState().update(() {
            FFAppState().totalsJson = null;
            FFAppState().ProductEditItem = [];
            FFAppState().CustomerSearch = null;
          });
          FFAppState().update(() {
            FFAppState().totalsJson = functions.totalsJson(
                'account',
                AccountingApiGroupGroup.invoiceViewCall
                    .lineList(
                      (_model.invoiceResview?.jsonBody ?? ''),
                    )
                    ?.toList())!;
            FFAppState().ProductEditItem = functions
                .editItemProductList(
                    'invoice',
                    AccountingApiGroupGroup.invoiceViewCall
                        .lineList(
                          (_model.invoiceResview?.jsonBody ?? ''),
                        )
                        ?.toList())!
                .toList()
                .cast<dynamic>();
          });
          _model.partnerDetailResponse =
              await CommonApisGroupGroup.getCustomerDetailsCall.call(
            customerId: AccountingApiGroupGroup.invoiceViewCall.partnerId(
              (_model.invoiceResview?.jsonBody ?? ''),
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
        context.pushNamed('Login');
      }
    });

    _model.textController ??= TextEditingController();
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
                '0n25ee6i' /* Invoice Edit */,
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                        Expanded(
                          child: FutureBuilder<ApiCallResponse>(
                            future:
                                AccountingApiGroupGroup.invoiceViewCall.call(
                              authToken: FFAppState().accessToken,
                              domainUrl: FFAppState().DomainUrl,
                              eq: widget.id,
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
                              final mobileViewColumnInvoiceViewResponse =
                                  snapshot.data!;
                              return SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      desktop: false,
                                    ))
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                        child: Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
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
                                                              'ftdgyxsq' /*  Customer */,
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
                                                                      18.0),
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
                                                                  safeSetState(
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
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
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
                                                              'wc974bfo' /* Payment Terms */,
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
                                                                      18.0),
                                                          child: FutureBuilder<
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
                                                                      '',
                                                                ),
                                                                options: (CommonApisGroupGroup
                                                                        .paymentTermListCall
                                                                        .paymentTermId(
                                                                  paymenttermsPaymentTermListResponse
                                                                      .jsonBody,
                                                                ) as List)
                                                                    .map<String>(
                                                                        (s) => s
                                                                            .toString())
                                                                    .toList()!
                                                                    .map((e) =>
                                                                        e.toString())
                                                                    .toList(),
                                                                optionLabels: (CommonApisGroupGroup
                                                                        .paymentTermListCall
                                                                        .paymentTermName(
                                                                  paymenttermsPaymentTermListResponse
                                                                      .jsonBody,
                                                                ) as List)
                                                                    .map<String>(
                                                                        (s) => s
                                                                            .toString())
                                                                    .toList()!
                                                                    .map((e) =>
                                                                        e.toString())
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        _model.paymenttermsValue =
                                                                            val),
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 50.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
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
                                                                  'ppgn16qc' /* Payment  Terms */,
                                                                ),
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 0.0,
                                                                borderColor: Color(
                                                                    0xFFD1E2EA),
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
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                                                              'wqzi63sr' /* Invoice Date */,
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
                                                                      18.0),
                                                          child: Container(
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
                                                                color: Color(
                                                                    0xFFD1E2EA),
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          1.0),
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
                                                                            } else if (AccountingApiGroupGroup.invoiceViewCall
                                                                                        .invoiceDate(
                                                                                          mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    null &&
                                                                                AccountingApiGroupGroup.invoiceViewCall
                                                                                        .invoiceDate(
                                                                                          mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    '') {
                                                                              return functions.convertLeaveDateFormat(AccountingApiGroupGroup.invoiceViewCall
                                                                                  .invoiceDate(
                                                                                    mobileViewColumnInvoiceViewResponse.jsonBody,
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
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              fontWeight: FontWeight.normal,
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
                                                                          initialDate: functions.convertStringToDateTime(AccountingApiGroupGroup.invoiceViewCall
                                                                                          .invoiceDate(
                                                                                            mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      null &&
                                                                                  AccountingApiGroupGroup.invoiceViewCall
                                                                                          .invoiceDate(
                                                                                            mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      ''
                                                                              ? AccountingApiGroupGroup.invoiceViewCall
                                                                                  .invoiceDate(
                                                                                    mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                  )
                                                                                  .toString()
                                                                              : getCurrentTimestamp.toString())!,
                                                                          firstDate: functions.convertStringToDateTime(AccountingApiGroupGroup.invoiceViewCall
                                                                                          .invoiceDate(
                                                                                            mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      null &&
                                                                                  AccountingApiGroupGroup.invoiceViewCall
                                                                                          .invoiceDate(
                                                                                            mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      ''
                                                                              ? AccountingApiGroupGroup.invoiceViewCall
                                                                                  .invoiceDate(
                                                                                    mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                  )
                                                                                  .toString()
                                                                              : getCurrentTimestamp.toString())!,
                                                                          lastDate:
                                                                              DateTime(2050),
                                                                        );

                                                                        if (_datePicked1Date !=
                                                                            null) {
                                                                          safeSetState(
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
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
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
                                                              '1id0esqe' /* Due Date */,
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
                                                                      18.0),
                                                          child: Container(
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
                                                                color: Color(
                                                                    0xFFD1E2EA),
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
                                                                          } else if (AccountingApiGroupGroup.invoiceViewCall
                                                                                      .invoiceDueDate(
                                                                                        mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                      )
                                                                                      .toString() !=
                                                                                  null &&
                                                                              AccountingApiGroupGroup.invoiceViewCall
                                                                                      .invoiceDueDate(
                                                                                        mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                      )
                                                                                      .toString() !=
                                                                                  '') {
                                                                            return functions.convertLeaveDateFormat(AccountingApiGroupGroup.invoiceViewCall
                                                                                .invoiceDueDate(
                                                                                  mobileViewColumnInvoiceViewResponse.jsonBody,
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
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
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
                                                                        initialDate: functions.convertStringToDateTime(AccountingApiGroupGroup.invoiceViewCall
                                                                                        .invoiceDueDate(
                                                                                          mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    null &&
                                                                                AccountingApiGroupGroup.invoiceViewCall
                                                                                        .invoiceDueDate(
                                                                                          mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    ''
                                                                            ? AccountingApiGroupGroup.invoiceViewCall
                                                                                .invoiceDueDate(
                                                                                  mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                )
                                                                                .toString()
                                                                            : getCurrentTimestamp.toString())!,
                                                                        firstDate: functions.convertStringToDateTime(AccountingApiGroupGroup.invoiceViewCall
                                                                                        .invoiceDueDate(
                                                                                          mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    null &&
                                                                                AccountingApiGroupGroup.invoiceViewCall
                                                                                        .invoiceDueDate(
                                                                                          mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    ''
                                                                            ? AccountingApiGroupGroup.invoiceViewCall
                                                                                .invoiceDueDate(
                                                                                  mobileViewColumnInvoiceViewResponse.jsonBody,
                                                                                )
                                                                                .toString()
                                                                            : getCurrentTimestamp.toString())!,
                                                                        lastDate:
                                                                            DateTime(2050),
                                                                      );

                                                                      if (_datePicked2Date !=
                                                                          null) {
                                                                        safeSetState(
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
                                                                          .secondaryText,
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
                                                ].divide(SizedBox(width: 10.0)),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 18.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                                    page:
                                                                        'invoice',
                                                                    id: widget
                                                                        .id!,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          's7bn43e2' /* Add Items */,
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
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .editViewProductLineItemsModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          EditViewProductLineItemsWidget(
                                                        page: 'invoice',
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  18.0,
                                                                  0.0,
                                                                  18.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
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
                                                                'okzvx27m' /* Notes */,
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
                                                          TextFormField(
                                                            controller: _model
                                                                .textController,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              hintText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                '0sndumu6' /* Notes */,
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.00, 0.00),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
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
                                                              .CustomerSearch,
                                                          r'''$.id''',
                                                        ) !=
                                                        null) {
                                                      _model.invoiceUpdate =
                                                          await AccountingApiGroupGroup
                                                              .invoiceUpdateCall
                                                              .call(
                                                        authToken: FFAppState()
                                                            .accessToken,
                                                        domainUrl: FFAppState()
                                                            .DomainUrl,
                                                        id: widget.id,
                                                        narration: _model
                                                            .textController
                                                            .text,
                                                        invoicePaymentTermId: functions
                                                            .changeStringToInt(
                                                                _model
                                                                    .paymenttermsValue),
                                                        partnerId: getJsonField(
                                                          FFAppState()
                                                              .CustomerSearch,
                                                          r'''$.id''',
                                                        ),
                                                        amountTax: getJsonField(
                                                          FFAppState()
                                                              .totalsJson,
                                                          r'''$.taxtotal''',
                                                        ),
                                                        amountUntaxed:
                                                            getJsonField(
                                                          FFAppState()
                                                              .totalsJson,
                                                          r'''$.untaxtotal''',
                                                        ),
                                                        amountTotal:
                                                            getJsonField(
                                                          FFAppState()
                                                              .totalsJson,
                                                          r'''$.overalltotal''',
                                                        ),
                                                        invoiceDate: _model
                                                                    .datePicked1 !=
                                                                null
                                                            ? _model.datePicked1
                                                                ?.toString()
                                                            : AccountingApiGroupGroup
                                                                .invoiceViewCall
                                                                .invoiceDate(
                                                                  mobileViewColumnInvoiceViewResponse
                                                                      .jsonBody,
                                                                )
                                                                .toString(),
                                                        invoiceDateDue: _model
                                                                    .datePicked2 !=
                                                                null
                                                            ? _model.datePicked2
                                                                ?.toString()
                                                            : AccountingApiGroupGroup
                                                                .invoiceViewCall
                                                                .invoiceDueDate(
                                                                  mobileViewColumnInvoiceViewResponse
                                                                      .jsonBody,
                                                                )
                                                                .toString(),
                                                      );
                                                      if ((_model.invoiceUpdate
                                                              ?.succeeded ??
                                                          true)) {
                                                        context.pushNamed(
                                                          'invoice_view_page',
                                                          queryParameters: {
                                                            'name':
                                                                serializeParam(
                                                              AccountingApiGroupGroup
                                                                  .invoiceViewCall
                                                                  .partnerName(
                                                                    mobileViewColumnInvoiceViewResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString(),
                                                              ParamType.String,
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
                                                              'Invoice edit successfully...',
                                                              style: TextStyle(
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
                                                      } else {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Somethingwent wrong',
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
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
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
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    }

                                                    setState(() {});
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'epidc29q' /* Save */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .saveButton,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.white,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
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
    );
  }
}
