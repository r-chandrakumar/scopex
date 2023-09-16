import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/accounting/invoice_pagess/invoice_edit/invoice_edit_edit_item/invoice_edit_edit_item_widget.dart';
import '/pages/accounting/invoice_pagess/vendor_pages/vendor_edit/vendor_bill_edit_edit_item/vendor_bill_edit_edit_item_widget.dart';
import '/pages/purchase/purchase_rfq_pages/purchase_rfq_edit/r_f_q_edit_edit_item/r_f_q_edit_edit_item_widget.dart';
import '/pages/sale/quotation/quotation_edit/quotation_edit_edit_item/quotation_edit_edit_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'more_for_edit_model.dart';
export 'more_for_edit_model.dart';

class MoreForEditWidget extends StatefulWidget {
  const MoreForEditWidget({
    Key? key,
    this.id,
    required this.page,
  }) : super(key: key);

  final int? id;
  final String? page;

  @override
  _MoreForEditWidgetState createState() => _MoreForEditWidgetState();
}

class _MoreForEditWidgetState extends State<MoreForEditWidget> {
  late MoreForEditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreForEditModel());

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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                          if (widget.page == 'invoice') {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: InvoiceEditEditItemWidget(
                                    id: widget.id!,
                                    exist: false,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          } else if (widget.page == 'vendorbill') {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: VendorBillEditEditItemWidget(
                                    id: widget.id!,
                                    exist: false,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          } else if (widget.page == 'rfq') {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: RFQEditEditItemWidget(
                                    id: widget.id!,
                                    exist: false,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          } else if (widget.page == 'quote') {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: QuotationEditEditItemWidget(
                                    id: widget.id!,
                                    exist: false,
                                  ),
                                );
                              },
                            ).then((value) => setState(() {}));
                          }
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'v32wcmit' /* Edit */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          var _shouldSetState = false;
                          var confirmDialogResponse = await showDialog<bool>(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Delete'),
                                    content: Text(
                                        'Do you want to remove this Line Item?'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, false),
                                        child: Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () => Navigator.pop(
                                            alertDialogContext, true),
                                        child: Text('Confirm'),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              false;
                          if (confirmDialogResponse) {
                            if (widget.page == 'rfq') {
                              _model.deleteRfqRes = await PurchaseApiGroupGroup
                                  .purchaseOrderLineProductDeleteCall
                                  .call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                                id: widget.id,
                              );
                              _shouldSetState = true;
                              if ((_model.deleteRfqRes?.succeeded ?? true)) {
                                _model.deleteRfqLineRes =
                                    await PurchaseApiGroupGroup
                                        .purchaseOrderViewCall
                                        .call(
                                  authToken: FFAppState().accessToken,
                                  domainUrl: FFAppState().DomainUrl,
                                  id: PurchaseApiGroupGroup
                                      .purchaseOrderLineProductDeleteCall
                                      .orderId(
                                    (_model.deleteRfqRes?.jsonBody ?? ''),
                                  ),
                                );
                                _shouldSetState = true;
                                if ((_model.deleteRfqLineRes?.succeeded ??
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
                                    FFAppState().ProductEditItem = functions
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
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Something went wrong',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            } else if (widget.page == 'quote') {
                              _model.deleteQuoteRes = await SalesApiGroupGroup
                                  .saleOrderLineProductDeleteCall
                                  .call(
                                authToken: FFAppState().accessToken,
                                domainUrl: FFAppState().DomainUrl,
                                id: widget.id,
                              );
                              _shouldSetState = true;
                              if ((_model.deleteQuoteRes?.succeeded ?? true)) {
                                _model.deleteViewRes = await SalesApiGroupGroup
                                    .saleOrderViewCall
                                    .call(
                                  eq: SalesApiGroupGroup
                                      .saleOrderLineProductDeleteCall
                                      .orderId(
                                    (_model.deleteQuoteRes?.jsonBody ?? ''),
                                  ),
                                  authToken: FFAppState().accessToken,
                                  domainUrl: FFAppState().DomainUrl,
                                );
                                _shouldSetState = true;
                                if ((_model.deleteViewRes?.succeeded ?? true)) {
                                  FFAppState().update(() {
                                    FFAppState().totalsJson =
                                        functions.totalsJson(
                                            'Update',
                                            SalesApiGroupGroup.saleOrderViewCall
                                                .lineJsons(
                                                  (_model.deleteViewRes
                                                          ?.jsonBody ??
                                                      ''),
                                                )
                                                ?.toList())!;
                                    FFAppState().ProductEditItem = functions
                                        .editItemProductList(
                                            'sales',
                                            SalesApiGroupGroup.saleOrderViewCall
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
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Something went wrong',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
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
                                id: widget.id,
                              );
                              _shouldSetState = true;
                              if ((_model.deleteInvoiceRes?.succeeded ??
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
                                    (_model.deleteInvoiceRes?.jsonBody ?? ''),
                                  ),
                                );
                                _shouldSetState = true;
                                if ((_model.deleteInvoLineRes?.succeeded ??
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
                                    FFAppState().ProductEditItem = functions
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
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Something went wrong',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
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
                                id: widget.id,
                              );
                              _shouldSetState = true;
                              if ((_model.deleteVendorbillRes?.succeeded ??
                                  true)) {
                                _model.deleteVendorbillLineRes =
                                    await AccountingApiGroupGroup
                                        .vendorBillViewCall
                                        .call(
                                  authToken: FFAppState().accessToken,
                                  domainUrl: FFAppState().DomainUrl,
                                  id: widget.id,
                                );
                                _shouldSetState = true;
                                if ((_model
                                        .deleteVendorbillLineRes?.succeeded ??
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
                                    FFAppState().ProductEditItem = functions
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
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Something went wrong',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).error,
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  ' Deleted Successfully',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          } else {
                            Navigator.pop(context);
                            if (_shouldSetState) setState(() {});
                            return;
                          }

                          if (_shouldSetState) setState(() {});
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.delete_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'a2jz77in' /* Delete */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 16.0,
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
      ],
    );
  }
}
