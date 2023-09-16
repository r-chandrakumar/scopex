import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_product_item_purchase_model.dart';
export 'view_product_item_purchase_model.dart';

class ViewProductItemPurchaseWidget extends StatefulWidget {
  const ViewProductItemPurchaseWidget({
    Key? key,
    this.productItems,
  }) : super(key: key);

  final List<dynamic>? productItems;

  @override
  _ViewProductItemPurchaseWidgetState createState() =>
      _ViewProductItemPurchaseWidgetState();
}

class _ViewProductItemPurchaseWidgetState
    extends State<ViewProductItemPurchaseWidget> {
  late ViewProductItemPurchaseModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewProductItemPurchaseModel());

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
        boxShadow: [
          BoxShadow(
            blurRadius: 60.0,
            color: Color(0x0F000000),
            offset: Offset(0.0, 10.0),
          )
        ],
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
                                  'tji3kmqx' /* Qty :  */,
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
                                  r'''$.product_qty''',
                                ).toString(),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).tdetailText,
                                  fontSize: 15.0,
                                ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'xcw85qmo' /*    */,
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
                                  'wmdf5mxm' /* Rate :  */,
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
                                    final purchaseList = getJsonField(
                                      purchaseViewItem,
                                      r'''$.account_tax_purchase_order_line_rels''',
                                    ).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: purchaseList.length,
                                      itemBuilder:
                                          (context, purchaseListIndex) {
                                        final purchaseListItem =
                                            purchaseList[purchaseListIndex];
                                        return Text(
                                          getJsonField(
                                            purchaseListItem,
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
