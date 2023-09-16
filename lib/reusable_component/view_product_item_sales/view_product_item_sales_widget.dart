import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_product_item_sales_model.dart';
export 'view_product_item_sales_model.dart';

class ViewProductItemSalesWidget extends StatefulWidget {
  const ViewProductItemSalesWidget({
    Key? key,
    this.productItems,
  }) : super(key: key);

  final List<dynamic>? productItems;

  @override
  _ViewProductItemSalesWidgetState createState() =>
      _ViewProductItemSalesWidgetState();
}

class _ViewProductItemSalesWidgetState
    extends State<ViewProductItemSalesWidget> {
  late ViewProductItemSalesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewProductItemSalesModel());

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
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Builder(
        builder: (context) {
          final purchaseView = widget.productItems?.toList() ?? [];
          return ListView.builder(
            padding: EdgeInsets.zero,
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: purchaseView.length,
            itemBuilder: (context, purchaseViewIndex) {
              final purchaseViewItem = purchaseView[purchaseViewIndex];
              return Container(
                width: 100.0,
                decoration: BoxDecoration(
                  color: (purchaseViewIndex % 2).toString() == '0'
                      ? FlutterFlowTheme.of(context).secondaryBackground
                      : FlutterFlowTheme.of(context).hashColor,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 7.0, 15.0, 7.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          functions.isNull(getJsonField(
                            purchaseViewItem,
                            r'''$.product_product.product_display''',
                          ).toString()),
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).caradTextColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: RichText(
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '0c9aovgc' /* Qty :  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              TextSpan(
                                text: getJsonField(
                                  purchaseViewItem,
                                  r'''$.product_uom_qty''',
                                ).toString(),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).tdetailText,
                                  fontSize: 15.0,
                                ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'uz1yqs9l' /*    */,
                                ),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  functions.isNull(getJsonField(
                                    purchaseViewItem,
                                    r'''$.uom_uom.name''',
                                  ).toString()),
                                  '-',
                                ),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).tdetailText,
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
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: RichText(
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'snfcpp0i' /* Rate :  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  functions.amountSymbol(
                                      getJsonField(
                                        purchaseViewItem,
                                        r'''$.price_unit''',
                                      ).toString(),
                                      FFAppState().currencySymbol),
                                  '-',
                                ),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).tdetailText,
                                  fontSize: 15.0,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(),
                                child: Builder(
                                  builder: (context) {
                                    final taxlist = getJsonField(
                                      purchaseViewItem,
                                      r'''$.account_tax_sale_order_line_rels''',
                                    ).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: taxlist.length,
                                      itemBuilder: (context, taxlistIndex) {
                                        final taxlistItem =
                                            taxlist[taxlistIndex];
                                        return Text(
                                          getJsonField(
                                            taxlistItem,
                                            r'''$.account_tax.name''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(1.00, 1.00),
                                  child: Text(
                                    valueOrDefault<String>(
                                      functions.amountSymbol(
                                          getJsonField(
                                            purchaseViewItem,
                                            r'''$.price_subtotal''',
                                          ).toString(),
                                          FFAppState().currencySymbol),
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).rgb,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 5.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
