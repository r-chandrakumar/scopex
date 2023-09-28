import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/accounting/invoice_pagess/invoice_edit/invoice_edit_add_item/invoice_edit_add_item_widget.dart';
import '/pages/accounting/invoice_pagess/invoice_edit/invoice_edit_edit_item/invoice_edit_edit_item_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_edit/vendor_bill_edit_add_item/vendor_bill_edit_add_item_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_edit/vendor_bill_edit_edit_item/vendor_bill_edit_edit_item_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_edit/r_f_q_edit_edit_item/r_f_q_edit_edit_item_widget.dart';
import '/pages/purchase/purchase_rfq_pages/r_f_q_edit_add_item/r_f_q_edit_add_item_widget.dart';
import '/pages/sale/quotation/quotation_edit/quotation_edit_add_item/quotation_edit_add_item_widget.dart';
import '/pages/sale/quotation/quotation_edit/quotation_edit_edit_item/quotation_edit_edit_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'common_edit_product_search_model.dart';
export 'common_edit_product_search_model.dart';

class CommonEditProductSearchWidget extends StatefulWidget {
  const CommonEditProductSearchWidget({
    Key? key,
    required this.page,
    required this.id,
  }) : super(key: key);

  final String? page;
  final int? id;

  @override
  _CommonEditProductSearchWidgetState createState() =>
      _CommonEditProductSearchWidgetState();
}

class _CommonEditProductSearchWidgetState
    extends State<CommonEditProductSearchWidget> with TickerProviderStateMixin {
  late CommonEditProductSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonEditProductSearchModel());

    _model.textController ??= TextEditingController();
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
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF1F4F8),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textController',
                          Duration(milliseconds: 1000),
                          () async {
                            setState(() {});
                            setState(() => _model.apiRequestCompleter = null);
                            await _model.waitForApiRequestCompleted();
                          },
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'zkxvjb3h' /* Search */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFF1F4F8),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4B39EF),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF5963),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFFF5963),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF1F4F8),
                          suffixIcon: _model.textController!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.textController?.clear();
                                    setState(() {});
                                    setState(() =>
                                        _model.apiRequestCompleter = null);
                                    await _model.waitForApiRequestCompleted();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Color(0xFF757575),
                                    size: 22.0,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color:
                                  FlutterFlowTheme.of(context).inputtextColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        maxLines: null,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
              child: FutureBuilder<ApiCallResponse>(
                future: (_model
                        .apiRequestCompleter ??= Completer<ApiCallResponse>()
                      ..complete(CommonApisGroupGroup.productSearchCall.call(
                        authToken: FFAppState().accessToken,
                        domainUrl: FFAppState().DomainUrl,
                        regex: functions
                            .emptyStringReturn(_model.textController.text),
                      )))
                    .future,
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
                  final searchListProductSearchResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final productLIst = CommonApisGroupGroup.productSearchCall
                              .productList(
                                searchListProductSearchResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: productLIst.length,
                        itemBuilder: (context, productLIstIndex) {
                          final productLIstItem = productLIst[productLIstIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                                FFAppState().update(() {
                                  FFAppState().taxJson = null;
                                });
                                if (widget.page == 'quote') {
                                  if (getJsonField(
                                    functions.checkProductExist(
                                        getJsonField(
                                          productLIstItem,
                                          r'''$.id''',
                                        ),
                                        FFAppState().ProductEditItem.toList()),
                                    r'''$.status''',
                                  )) {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: QuotationEditEditItemWidget(
                                            id: getJsonField(
                                              functions.checkProductExist(
                                                  getJsonField(
                                                    productLIstItem,
                                                    r'''$.id''',
                                                  ),
                                                  FFAppState()
                                                      .ProductEditItem
                                                      .toList()),
                                              r'''$.id''',
                                            ),
                                            exist: true,
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: QuotationEditAddItemWidget(
                                            orderid: widget.id!,
                                            productid: getJsonField(
                                              productLIstItem,
                                              r'''$.id''',
                                            ),
                                            productname: getJsonField(
                                              productLIstItem,
                                              r'''$.product_template.name''',
                                            ).toString(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }
                                } else if (widget.page == 'rfq') {
                                  if (getJsonField(
                                    functions.checkProductExist(
                                        getJsonField(
                                          productLIstItem,
                                          r'''$.id''',
                                        ),
                                        FFAppState().ProductEditItem.toList()),
                                    r'''$.status''',
                                  )) {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: RFQEditEditItemWidget(
                                            id: getJsonField(
                                              functions.checkProductExist(
                                                  getJsonField(
                                                    productLIstItem,
                                                    r'''$.id''',
                                                  ),
                                                  FFAppState()
                                                      .ProductEditItem
                                                      .toList()),
                                              r'''$.id''',
                                            ),
                                            exist: true,
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: RFQEditAddItemWidget(
                                            orderid: widget.id!,
                                            productid: getJsonField(
                                              productLIstItem,
                                              r'''$.id''',
                                            ),
                                            productname: getJsonField(
                                              productLIstItem,
                                              r'''$.product_template.name''',
                                            ).toString(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }
                                } else if (widget.page == 'invoice') {
                                  if (getJsonField(
                                    functions.checkProductExist(
                                        getJsonField(
                                          productLIstItem,
                                          r'''$.id''',
                                        ),
                                        FFAppState().ProductEditItem.toList()),
                                    r'''$.status''',
                                  )) {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: InvoiceEditEditItemWidget(
                                            id: getJsonField(
                                              functions.checkProductExist(
                                                  getJsonField(
                                                    productLIstItem,
                                                    r'''$.id''',
                                                  ),
                                                  FFAppState()
                                                      .ProductEditItem
                                                      .toList()),
                                              r'''$.id''',
                                            ),
                                            exist: true,
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: InvoiceEditAddItemWidget(
                                            orderid: widget.id!,
                                            productid: getJsonField(
                                              productLIstItem,
                                              r'''$.id''',
                                            ),
                                            productname: getJsonField(
                                              productLIstItem,
                                              r'''$.product_template.name''',
                                            ).toString(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }
                                } else if (widget.page == 'vendorbill') {
                                  if (getJsonField(
                                    functions.checkProductExist(
                                        getJsonField(
                                          productLIstItem,
                                          r'''$.id''',
                                        ),
                                        FFAppState().ProductEditItem.toList()),
                                    r'''$.status''',
                                  )) {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: VendorBillEditEditItemWidget(
                                            id: getJsonField(
                                              functions.checkProductExist(
                                                  getJsonField(
                                                    productLIstItem,
                                                    r'''$.id''',
                                                  ),
                                                  FFAppState()
                                                      .ProductEditItem
                                                      .toList()),
                                              r'''$.id''',
                                            ),
                                            exist: true,
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  } else {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      useSafeArea: true,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: VendorBillEditAddItemWidget(
                                            orderid: widget.id!,
                                            productid: getJsonField(
                                              productLIstItem,
                                              r'''$.id''',
                                            ),
                                            productname: getJsonField(
                                              productLIstItem,
                                              r'''$.product_template.name''',
                                            ).toString(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }
                                }
                              },
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 0.0,
                                      color: Color(0xFFE0E3E7),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                getJsonField(
                                                  productLIstItem,
                                                  r'''$.product_display''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Color(0xFF14181B),
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
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
