import '/backend/api_requests/api_calls.dart';
import '/components/edit_view_product_line_items_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/reusable_component/common_edit_product_search/common_edit_product_search_widget.dart';
import '/search_components/supplier_search_component/supplier_search_component_widget.dart';
import '/shimmer/drop_down_empty_full_width/drop_down_empty_full_width_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vendor_bill_edit_model.dart';
export 'vendor_bill_edit_model.dart';

class VendorBillEditWidget extends StatefulWidget {
  const VendorBillEditWidget({
    Key? key,
    this.id,
  }) : super(key: key);

  final int? id;

  @override
  _VendorBillEditWidgetState createState() => _VendorBillEditWidgetState();
}

class _VendorBillEditWidgetState extends State<VendorBillEditWidget> {
  late VendorBillEditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorBillEditModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        _model.invoiceResview =
            await AccountingApiGroupGroup.vendorBillViewCall.call(
          authToken: FFAppState().accessToken,
          domainUrl: FFAppState().DomainUrl,
          id: widget.id,
        );
        if ((_model.invoiceResview?.succeeded ?? true)) {
          FFAppState().update(() {
            FFAppState().totalsJson = null;
            FFAppState().ProductEditItem = [];
            FFAppState().SupplierSearch = null;
          });
          FFAppState().update(() {
            FFAppState().totalsJson = functions.totalsJson(
                'account',
                AccountingApiGroupGroup.vendorBillViewCall
                    .lineJasons(
                      (_model.invoiceResview?.jsonBody ?? ''),
                    )
                    ?.toList())!;
            FFAppState().ProductEditItem = functions
                .editItemProductList(
                    'invoice',
                    AccountingApiGroupGroup.vendorBillViewCall
                        .lineJasons(
                          (_model.invoiceResview?.jsonBody ?? ''),
                        )
                        ?.toList())!
                .toList()
                .cast<dynamic>();
          });
          _model.partnerDetailResponse =
              await CommonApisGroupGroup.getCustomerDetailsCall.call(
            customerId: AccountingApiGroupGroup.vendorBillViewCall.partnerId(
              (_model.invoiceResview?.jsonBody ?? ''),
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
          leading: FlutterFlowIconButton(
            borderColor: Color(0x0023A8FF),
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            fillColor: Color(0x00616161),
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: FlutterFlowTheme.of(context).appBarTextColor,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Text(
              FFLocalizations.of(context).getText(
                'u05fhz5i' /* Bill edit */,
              ),
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Roboto',
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
                        child: FutureBuilder<ApiCallResponse>(
                          future:
                              AccountingApiGroupGroup.vendorBillViewCall.call(
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
                            final mobileViewColumnVendorBillViewResponse =
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 15.0, 15.0, 15.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(),
                                        child: Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
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
                                                                'e74c02fy' /* Select Supplier */,
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
                                                                        14.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          InkWell(
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
                                                                          SupplierSearchComponentWidget(),
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
                                                                                    FFAppState().SupplierSearch,
                                                                                    r'''$.name''',
                                                                                  ) !=
                                                                                  null
                                                                              ? getJsonField(
                                                                                  FFAppState().SupplierSearch,
                                                                                  r'''$.name''',
                                                                                ).toString()
                                                                              : 'Select Supplier',
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
                                                              '9pnj1cbl' /* Payment Terms */,
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
                                                                      functions
                                                                          .convertIntToString(AccountingApiGroupGroup
                                                                              .vendorBillViewCall
                                                                              .paymentTermId(
                                                                            mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                          ))
                                                                          ?.toString(),
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
                                                                  'bpb204qg' /* Payment  Terms */,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 18.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
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
                                                                  'xgojuger' /* Vendor Bill Date */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
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
                                                                            valueOrDefault<String>(
                                                                              () {
                                                                                if (_model.datePicked1 != null) {
                                                                                  return functions.changeDateFomat(_model.datePicked1?.toString());
                                                                                } else if (AccountingApiGroupGroup.vendorBillViewCall
                                                                                            .invoiceDate(
                                                                                              mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                            )
                                                                                            .toString() !=
                                                                                        null &&
                                                                                    AccountingApiGroupGroup.vendorBillViewCall
                                                                                            .invoiceDate(
                                                                                              mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                            )
                                                                                            .toString() !=
                                                                                        '') {
                                                                                  return functions.changeDateFomat(AccountingApiGroupGroup.vendorBillViewCall
                                                                                      .invoiceDate(
                                                                                        mobileViewColumnVendorBillViewResponse.jsonBody,
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
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).inputtextColor,
                                                                                  fontSize: 15.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            final _datePicked1Date =
                                                                                await showDatePicker(
                                                                              context: context,
                                                                              initialDate: functions.convertStringToDateTime(AccountingApiGroupGroup.vendorBillViewCall
                                                                                              .invoiceDate(
                                                                                                mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                              )
                                                                                              .toString() !=
                                                                                          null &&
                                                                                      AccountingApiGroupGroup.vendorBillViewCall
                                                                                              .invoiceDate(
                                                                                                mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                              )
                                                                                              .toString() !=
                                                                                          ''
                                                                                  ? AccountingApiGroupGroup.vendorBillViewCall
                                                                                      .invoiceDate(
                                                                                        mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                      )
                                                                                      .toString()
                                                                                  : getCurrentTimestamp.toString())!,
                                                                              firstDate: DateTime(1900),
                                                                              lastDate: DateTime(2050),
                                                                            );

                                                                            if (_datePicked1Date !=
                                                                                null) {
                                                                              setState(() {
                                                                                _model.datePicked1 = DateTime(
                                                                                  _datePicked1Date.year,
                                                                                  _datePicked1Date.month,
                                                                                  _datePicked1Date.day,
                                                                                );
                                                                              });
                                                                            }
                                                                          },
                                                                          child:
                                                                              Icon(
                                                                            Icons.calendar_today_outlined,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).inputtextColor,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
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
                                                                  'mhnq21jm' /* Due Date */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
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
                                                                            if (_model.datePicked2 !=
                                                                                null) {
                                                                              return functions.changeDateFomat(_model.datePicked2?.toString());
                                                                            } else if (AccountingApiGroupGroup.vendorBillViewCall
                                                                                        .dueDate(
                                                                                          mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    null &&
                                                                                AccountingApiGroupGroup.vendorBillViewCall
                                                                                        .dueDate(
                                                                                          mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                        )
                                                                                        .toString() !=
                                                                                    '') {
                                                                              return functions.changeDateFomat(AccountingApiGroupGroup.vendorBillViewCall
                                                                                  .dueDate(
                                                                                    mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                  )
                                                                                  .toString());
                                                                            } else {
                                                                              return 'DD/MM/YY';
                                                                            }
                                                                          }(),
                                                                          'DD/MM/YY',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: FlutterFlowTheme.of(context).inputtextColor,
                                                                              fontSize: 15.0,
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
                                                                        final _datePicked2Date =
                                                                            await showDatePicker(
                                                                          context:
                                                                              context,
                                                                          initialDate: functions.convertStringToDateTime(AccountingApiGroupGroup.vendorBillViewCall
                                                                                          .dueDate(
                                                                                            mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      null &&
                                                                                  AccountingApiGroupGroup.vendorBillViewCall
                                                                                          .dueDate(
                                                                                            mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      ''
                                                                              ? AccountingApiGroupGroup.vendorBillViewCall
                                                                                  .dueDate(
                                                                                    mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                  )
                                                                                  .toString()
                                                                              : getCurrentTimestamp.toString())!,
                                                                          firstDate: functions.convertStringToDateTime(AccountingApiGroupGroup.vendorBillViewCall
                                                                                          .dueDate(
                                                                                            mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      null &&
                                                                                  AccountingApiGroupGroup.vendorBillViewCall
                                                                                          .dueDate(
                                                                                            mobileViewColumnVendorBillViewResponse.jsonBody,
                                                                                          )
                                                                                          .toString() !=
                                                                                      ''
                                                                              ? AccountingApiGroupGroup.vendorBillViewCall
                                                                                  .dueDate(
                                                                                    mobileViewColumnVendorBillViewResponse.jsonBody,
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
                                                          ],
                                                        ),
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
                                                                        'vendorbill',
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
                                                          'w0j7oj4d' /* Add Items */,
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
                                                          elevation: 1.0,
                                                          borderSide:
                                                              BorderSide(
                                                            width: 1.0,
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
                                                        page: 'vendorbill',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 18.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
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
                                                          '3xi1mszi' /* Notes */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
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
                                                                  .textController,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                  'q3xtrwkc' /* Notes */,
                                                                ),
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
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
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontSize:
                                                                          16.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                                                    color: Color(
                                                                        0xFFD1E2EA),
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
                                                                        .caradTextColor,
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
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
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.00, 0.00),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    var _shouldSetState = false;
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
                                                      _model.vendorBillUpdateRes =
                                                          await AccountingApiGroupGroup
                                                              .vendorBillUpdateCall
                                                              .call(
                                                        authToken: FFAppState()
                                                            .accessToken,
                                                        domainUrl: FFAppState()
                                                            .DomainUrl,
                                                        id: widget.id,
                                                        partnerId: getJsonField(
                                                          FFAppState()
                                                              .SupplierSearch,
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
                                                                .vendorBillViewCall
                                                                .invoiceDate(
                                                                  mobileViewColumnVendorBillViewResponse
                                                                      .jsonBody,
                                                                )
                                                                .toString(),
                                                        invoiceDateDue: _model
                                                                    .datePicked2 !=
                                                                null
                                                            ? _model.datePicked2
                                                                ?.toString()
                                                            : AccountingApiGroupGroup
                                                                .vendorBillViewCall
                                                                .dueDate(
                                                                  mobileViewColumnVendorBillViewResponse
                                                                      .jsonBody,
                                                                )
                                                                .toString(),
                                                        narration: _model
                                                            .textController
                                                            .text,
                                                        invoicePaymentTermId: functions
                                                            .changeStringToInt(
                                                                _model
                                                                    .paymenttermsValue),
                                                      );
                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .vendorBillUpdateRes
                                                              ?.succeeded ??
                                                          true)) {
                                                        context.pushNamed(
                                                          'Vendorbill_list_page',
                                                          queryParameters: {
                                                            'state':
                                                                serializeParam(
                                                              'draft',
                                                              ParamType.String,
                                                            ),
                                                            'startdate':
                                                                serializeParam(
                                                              functions.beforeOneMonthDate(
                                                                  FFAppState()
                                                                      .initialMonth),
                                                              ParamType.String,
                                                            ),
                                                            'enddate':
                                                                serializeParam(
                                                              functions
                                                                  .getTodayDate(),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );

                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Vendor bill edit successfully...',
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

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '9acemt7v' /* Save */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 150.0,
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
                                                    elevation: 1.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
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
                                    ),
                                ],
                              ),
                            );
                          },
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
