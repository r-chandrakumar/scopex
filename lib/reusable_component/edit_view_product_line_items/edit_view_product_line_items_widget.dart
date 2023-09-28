import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/accounting/invoice_pagess/invoice_edit/invoice_edit_edit_item/invoice_edit_edit_item_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_edit/vendor_bill_edit_edit_item/vendor_bill_edit_edit_item_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_edit/r_f_q_edit_edit_item/r_f_q_edit_edit_item_widget.dart';
import '/pages/sale/quotation/quotation_edit/quotation_edit_edit_item/quotation_edit_edit_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_view_product_line_items_model.dart';
export 'edit_view_product_line_items_model.dart';

class EditViewProductLineItemsWidget extends StatefulWidget {
  const EditViewProductLineItemsWidget({
    Key? key,
    required this.page,
  }) : super(key: key);

  final String? page;

  @override
  _EditViewProductLineItemsWidgetState createState() =>
      _EditViewProductLineItemsWidgetState();
}

class _EditViewProductLineItemsWidgetState
    extends State<EditViewProductLineItemsWidget> {
  late EditViewProductLineItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditViewProductLineItemsModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).hashColor,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(
            builder: (context) {
              final editItemProductList = FFAppState().ProductEditItem.toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: editItemProductList.length,
                itemBuilder: (context, editItemProductListIndex) {
                  final editItemProductListItem =
                      editItemProductList[editItemProductListIndex];
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Text(
                                  getJsonField(
                                    editItemProductListItem,
                                    r'''$.product_name''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .appBarTextColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        functions.amountSymbol(
                                            getJsonField(
                                              editItemProductListItem,
                                              r'''$.total''',
                                            ).toString(),
                                            FFAppState().currencySymbol),
                                        '-',
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .appBarTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .appBarTextColor,
                                        fontSize: 14.0,
                                      ),
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'b6wuaohx' /* Qty :  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .inputtextColor,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                  TextSpan(
                                    text: getJsonField(
                                      editItemProductListItem,
                                      r'''$.qty''',
                                    ).toString(),
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).rgb,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'gtj0hnen' /*    */,
                                    ),
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: functions.isNull(getJsonField(
                                      editItemProductListItem,
                                      r'''$.unit''',
                                    ).toString())!,
                                    style: TextStyle(
                                      color:
                                          FlutterFlowTheme.of(context).zambezi,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().update(() {
                                      FFAppState().taxJson = null;
                                    });
                                    if (widget.page == 'invoice') {
                                      _model.moveLineItemInvoiceDetailRes =
                                          await AccountingApiGroupGroup
                                              .accountingLineProductDetailsCall
                                              .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                        eq: getJsonField(
                                          editItemProductListItem,
                                          r'''$.line_id''',
                                        ),
                                      );
                                      if ((_model.moveLineItemInvoiceDetailRes
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'update',
                                                  0,
                                                  'null',
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                  0,
                                                  AccountingApiGroupGroup
                                                      .accountingLineProductDetailsCall
                                                      .accountMoveLine(
                                                    (_model.moveLineItemInvoiceDetailRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'invoice')!;
                                        });
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'tax_total',
                                                  0,
                                                  'null',
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .quantity(
                                                                (_model.moveLineItemInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .priceperUnit(
                                                                (_model.moveLineItemInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'tax',
                                                      AccountingApiGroupGroup
                                                          .accountingLineProductDetailsCall
                                                          .accountMoveLine(
                                                        (_model.moveLineItemInvoiceDetailRes
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'invoice'),
                                                  0.0,
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .quantity(
                                                                (_model.moveLineItemInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .priceperUnit(
                                                                (_model.moveLineItemInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'total',
                                                      AccountingApiGroupGroup
                                                          .accountingLineProductDetailsCall
                                                          .accountMoveLine(
                                                        (_model.moveLineItemInvoiceDetailRes
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'invoice'),
                                                  0,
                                                  AccountingApiGroupGroup
                                                      .accountingLineProductDetailsCall
                                                      .accountMoveLine(
                                                    (_model.moveLineItemInvoiceDetailRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'update')!;
                                        });
                                      }
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: InvoiceEditEditItemWidget(
                                              id: getJsonField(
                                                editItemProductListItem,
                                                r'''$.line_id''',
                                              ),
                                              exist: false,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    } else if (widget.page == 'vendorbill') {
                                      _model.moveLineInvoiceDetailRes =
                                          await AccountingApiGroupGroup
                                              .accountingLineProductDetailsCall
                                              .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                        eq: getJsonField(
                                          editItemProductListItem,
                                          r'''$.line_id''',
                                        ),
                                      );
                                      if ((_model.moveLineInvoiceDetailRes
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'update',
                                                  0,
                                                  'null',
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                  0,
                                                  AccountingApiGroupGroup
                                                      .accountingLineProductDetailsCall
                                                      .accountMoveLine(
                                                    (_model.moveLineInvoiceDetailRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'invoice')!;
                                        });
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'tax_total',
                                                  0,
                                                  'null',
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .quantity(
                                                                (_model.moveLineInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .priceperUnit(
                                                                (_model.moveLineInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'tax',
                                                      AccountingApiGroupGroup
                                                          .accountingLineProductDetailsCall
                                                          .accountMoveLine(
                                                        (_model.moveLineInvoiceDetailRes
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'invoice'),
                                                  0.0,
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .quantity(
                                                                (_model.moveLineInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          AccountingApiGroupGroup
                                                              .accountingLineProductDetailsCall
                                                              .priceperUnit(
                                                                (_model.moveLineInvoiceDetailRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'total',
                                                      AccountingApiGroupGroup
                                                          .accountingLineProductDetailsCall
                                                          .accountMoveLine(
                                                        (_model.moveLineInvoiceDetailRes
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'invoice'),
                                                  0,
                                                  AccountingApiGroupGroup
                                                      .accountingLineProductDetailsCall
                                                      .accountMoveLine(
                                                    (_model.moveLineInvoiceDetailRes
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'update')!;
                                        });
                                      }
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: VendorBillEditEditItemWidget(
                                              id: getJsonField(
                                                editItemProductListItem,
                                                r'''$.line_id''',
                                              ),
                                              exist: false,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    } else if (widget.page == 'rfq') {
                                      _model.orderLineProductDataResponse =
                                          await PurchaseApiGroupGroup
                                              .purchaseOrderLineProductDetailCall
                                              .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                        eq: getJsonField(
                                          editItemProductListItem,
                                          r'''$.line_id''',
                                        ),
                                      );
                                      if ((_model.orderLineProductDataResponse
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'update',
                                                  0,
                                                  'null',
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                  0,
                                                  PurchaseApiGroupGroup
                                                      .purchaseOrderLineProductDetailCall
                                                      .orderLineData(
                                                    (_model.orderLineProductDataResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'purchase')!;
                                        });
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'tax_total',
                                                  0,
                                                  'null',
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          PurchaseApiGroupGroup
                                                              .purchaseOrderLineProductDetailCall
                                                              .productUOMQty(
                                                                (_model.orderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          PurchaseApiGroupGroup
                                                              .purchaseOrderLineProductDetailCall
                                                              .pricePerUnit(
                                                                (_model.orderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'tax',
                                                      PurchaseApiGroupGroup
                                                          .purchaseOrderLineProductDetailCall
                                                          .orderLineData(
                                                        (_model.orderLineProductDataResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'purchase'),
                                                  0.0,
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          PurchaseApiGroupGroup
                                                              .purchaseOrderLineProductDetailCall
                                                              .productUOMQty(
                                                                (_model.orderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          PurchaseApiGroupGroup
                                                              .purchaseOrderLineProductDetailCall
                                                              .pricePerUnit(
                                                                (_model.orderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'total',
                                                      PurchaseApiGroupGroup
                                                          .purchaseOrderLineProductDetailCall
                                                          .orderLineData(
                                                        (_model.orderLineProductDataResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'purchase'),
                                                  0,
                                                  PurchaseApiGroupGroup
                                                      .purchaseOrderLineProductDetailCall
                                                      .orderLineData(
                                                    (_model.orderLineProductDataResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'update')!;
                                        });
                                      }
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: RFQEditEditItemWidget(
                                              id: getJsonField(
                                                editItemProductListItem,
                                                r'''$.line_id''',
                                              ),
                                              exist: false,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    } else if (widget.page == 'quote') {
                                      _model.quoteOrderLineProductDataResponse =
                                          await SalesApiGroupGroup
                                              .saleOrderLineProductDetailCall
                                              .call(
                                        authToken: FFAppState().accessToken,
                                        domainUrl: FFAppState().DomainUrl,
                                        eq: getJsonField(
                                          editItemProductListItem,
                                          r'''$.line_id''',
                                        ),
                                      );
                                      if ((_model
                                              .quoteOrderLineProductDataResponse
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'update',
                                                  0,
                                                  'null',
                                                  0.0,
                                                  0.0,
                                                  0.0,
                                                  0,
                                                  SalesApiGroupGroup
                                                      .saleOrderLineProductDetailCall
                                                      .saleorderList(
                                                    (_model.quoteOrderLineProductDataResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'sales')!;
                                        });
                                        FFAppState().update(() {
                                          FFAppState().taxJson =
                                              functions.taxjson(
                                                  FFAppState().taxJson,
                                                  'tax_total',
                                                  0,
                                                  'null',
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          SalesApiGroupGroup
                                                              .saleOrderLineProductDetailCall
                                                              .productUomQty(
                                                                (_model.quoteOrderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          SalesApiGroupGroup
                                                              .saleOrderLineProductDetailCall
                                                              .pricePerUnit(
                                                                (_model.quoteOrderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'tax',
                                                      SalesApiGroupGroup
                                                          .saleOrderLineProductDetailCall
                                                          .saleorderList(
                                                        (_model.quoteOrderLineProductDataResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'sale'),
                                                  0.0,
                                                  functions.findTotalamount(
                                                      functions.findSubTotal(
                                                          SalesApiGroupGroup
                                                              .saleOrderLineProductDetailCall
                                                              .productUomQty(
                                                                (_model.quoteOrderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble(),
                                                          SalesApiGroupGroup
                                                              .saleOrderLineProductDetailCall
                                                              .pricePerUnit(
                                                                (_model.quoteOrderLineProductDataResponse
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toDouble()),
                                                      'total',
                                                      SalesApiGroupGroup
                                                          .saleOrderLineProductDetailCall
                                                          .saleorderList(
                                                        (_model.quoteOrderLineProductDataResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      'update',
                                                      'sale'),
                                                  0,
                                                  SalesApiGroupGroup
                                                      .saleOrderLineProductDetailCall
                                                      .saleorderList(
                                                    (_model.quoteOrderLineProductDataResponse
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                  'update')!;
                                        });
                                      }
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: QuotationEditEditItemWidget(
                                              id: getJsonField(
                                                editItemProductListItem,
                                                r'''$.line_id''',
                                              ),
                                              exist: false,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }

                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.edit_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 18.0,
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Delete'),
                                                  content: Text(
                                                      'Do you want to remove this Line Item?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: Text('Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: Text('Confirm'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      if (widget.page == 'rfq') {
                                        _model.deleteRfqRes =
                                            await PurchaseApiGroupGroup
                                                .purchaseOrderLineProductDeleteCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                          id: getJsonField(
                                            editItemProductListItem,
                                            r'''$.line_id''',
                                          ),
                                        );
                                        _shouldSetState = true;
                                        if ((_model.deleteRfqRes?.succeeded ??
                                            true)) {
                                          _model.deleteRfqLineRes =
                                              await PurchaseApiGroupGroup
                                                  .purchaseOrderViewCall
                                                  .call(
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                            id: PurchaseApiGroupGroup
                                                .purchaseOrderLineProductDeleteCall
                                                .orderId(
                                              (_model.deleteRfqRes?.jsonBody ??
                                                  ''),
                                            ),
                                          );
                                          _shouldSetState = true;
                                          if ((_model.deleteRfqLineRes
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState().update(() {
                                              FFAppState().totalsJson =
                                                  functions.totalsJson(
                                                      'update',
                                                      PurchaseApiGroupGroup
                                                          .purchaseOrderViewCall
                                                          .lineJsons(
                                                            (_model.deleteRfqLineRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toList())!;
                                              FFAppState().ProductEditItem =
                                                  functions
                                                      .editItemProductList(
                                                          'purchase',
                                                          PurchaseApiGroupGroup
                                                              .purchaseOrderViewCall
                                                              .lineJsons(
                                                                (_model.deleteRfqLineRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toList())!
                                                      .toList()
                                                      .cast<dynamic>();
                                            });
                                          }
                                          Navigator.pop(context);
                                        } else {
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Something went wrong',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else if (widget.page == 'quote') {
                                        _model.deleteQuoteRes =
                                            await SalesApiGroupGroup
                                                .saleOrderLineProductDeleteCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                          id: getJsonField(
                                            editItemProductListItem,
                                            r'''$.line_id''',
                                          ),
                                        );
                                        _shouldSetState = true;
                                        if ((_model.deleteQuoteRes?.succeeded ??
                                            true)) {
                                          _model.deleteViewRes =
                                              await SalesApiGroupGroup
                                                  .saleOrderViewCall
                                                  .call(
                                            eq: SalesApiGroupGroup
                                                .saleOrderLineProductDeleteCall
                                                .orderId(
                                              (_model.deleteQuoteRes
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                          );
                                          _shouldSetState = true;
                                          if ((_model
                                                  .deleteViewRes?.succeeded ??
                                              true)) {
                                            FFAppState().update(() {
                                              FFAppState().totalsJson =
                                                  functions.totalsJson(
                                                      'Update',
                                                      SalesApiGroupGroup
                                                          .saleOrderViewCall
                                                          .lineJsons(
                                                            (_model.deleteViewRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toList())!;
                                              FFAppState().ProductEditItem =
                                                  functions
                                                      .editItemProductList(
                                                          'sales',
                                                          SalesApiGroupGroup
                                                              .saleOrderViewCall
                                                              .lineJsons(
                                                                (_model.deleteViewRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toList())!
                                                      .toList()
                                                      .cast<dynamic>();
                                            });
                                          }
                                          Navigator.pop(context);
                                        } else {
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Something went wrong',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else if (widget.page == 'invoice') {
                                        _model.deleteInvoiceRes =
                                            await AccountingApiGroupGroup
                                                .accountingLineProductDeleteCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                          id: getJsonField(
                                            editItemProductListItem,
                                            r'''$.line_id''',
                                          ),
                                        );
                                        _shouldSetState = true;
                                        if ((_model
                                                .deleteInvoiceRes?.succeeded ??
                                            true)) {
                                          _model.deleteInvoLineRes =
                                              await AccountingApiGroupGroup
                                                  .invoiceViewCall
                                                  .call(
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                            eq: AccountingApiGroupGroup
                                                .accountingLineProductDeleteCall
                                                .orderId(
                                              (_model.deleteInvoiceRes
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                          );
                                          _shouldSetState = true;
                                          if ((_model.deleteInvoLineRes
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState().update(() {
                                              FFAppState().totalsJson =
                                                  functions.totalsJson(
                                                      'account',
                                                      AccountingApiGroupGroup
                                                          .invoiceViewCall
                                                          .lineList(
                                                            (_model.deleteInvoLineRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toList())!;
                                              FFAppState().ProductEditItem =
                                                  functions
                                                      .editItemProductList(
                                                          'invoice',
                                                          AccountingApiGroupGroup
                                                              .invoiceViewCall
                                                              .lineList(
                                                                (_model.deleteInvoLineRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toList())!
                                                      .toList()
                                                      .cast<dynamic>();
                                            });
                                          }
                                          Navigator.pop(context);
                                        } else {
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Something went wrong',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else if (widget.page == 'vendorbill') {
                                        _model.deleteVendorbillRes =
                                            await AccountingApiGroupGroup
                                                .accountingLineProductDeleteCall
                                                .call(
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                          id: getJsonField(
                                            editItemProductListItem,
                                            r'''$.line_id''',
                                          ),
                                        );
                                        _shouldSetState = true;
                                        if ((_model.deleteVendorbillRes
                                                ?.succeeded ??
                                            true)) {
                                          _model.deleteVendorbillLineRes =
                                              await AccountingApiGroupGroup
                                                  .vendorBillViewCall
                                                  .call(
                                            authToken: FFAppState().accessToken,
                                            domainUrl: FFAppState().DomainUrl,
                                            id: AccountingApiGroupGroup
                                                .accountingLineProductDeleteCall
                                                .orderId(
                                              (_model.deleteVendorbillRes
                                                      ?.jsonBody ??
                                                  ''),
                                            ),
                                          );
                                          _shouldSetState = true;
                                          if ((_model.deleteVendorbillLineRes
                                                  ?.succeeded ??
                                              true)) {
                                            FFAppState().update(() {
                                              FFAppState().totalsJson =
                                                  functions.totalsJson(
                                                      'account',
                                                      AccountingApiGroupGroup
                                                          .vendorBillViewCall
                                                          .lineJasons(
                                                            (_model.deleteVendorbillLineRes
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toList())!;
                                              FFAppState().ProductEditItem =
                                                  functions
                                                      .editItemProductList(
                                                          'invoice',
                                                          AccountingApiGroupGroup
                                                              .vendorBillViewCall
                                                              .lineJasons(
                                                                (_model.deleteVendorbillLineRes
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              ?.toList())!
                                                      .toList()
                                                      .cast<dynamic>();
                                            });
                                          }
                                          Navigator.pop(context);
                                        } else {
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Something went wrong',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                            ),
                                          );
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            ' Deleted Successfully',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                    } else {
                                      Navigator.pop(context);
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                  child: Icon(
                                    Icons.delete_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 18.0,
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 3.0, 8.0, 0.0),
                        child: RichText(
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'xlftntnh' /* Rate :  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .inputtextColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  functions.amountSymbol(
                                      getJsonField(
                                        editItemProductListItem,
                                        r'''$.amount''',
                                      ).toString(),
                                      FFAppState().currencySymbol),
                                  '-',
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).rgb,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 3.0, 8.0, 0.0),
                        child: RichText(
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'qr4rx7b3' /* Sub Total :  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .inputtextColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  functions.amountSymbol(
                                      getJsonField(
                                        editItemProductListItem,
                                        r'''$.subtotal''',
                                      ).toString(),
                                      FFAppState().currencySymbol),
                                  '-',
                                ),
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).rgb,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.0,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                      if (getJsonField(
                        functions.taxNamesDisplaySequencial((getJsonField(
                          editItemProductListItem,
                          r'''$.taxnames''',
                          true,
                        ) as List)
                            .map<String>((s) => s.toString())
                            .toList()),
                        r'''$.exist''',
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 3.0, 8.0, 8.0),
                          child: RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'i3uy30cf' /* Taxes :  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .inputtextColor,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                TextSpan(
                                  text: getJsonField(
                                    functions.taxNamesDisplaySequencial(
                                        (getJsonField(
                                      editItemProductListItem,
                                      r'''$.taxnames''',
                                      true,
                                    ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList()),
                                    r'''$.name''',
                                  ).toString(),
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).rgb,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).hashColor,
                      ),
                    ],
                  );
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 13.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'hk22ue76' /* Net Amount */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    functions.amountSymbol(
                        getJsonField(
                          FFAppState().totalsJson,
                          r'''$.overalltotal''',
                        ).toString(),
                        FFAppState().currencySymbol),
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
