import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/reusable_component/common_create_edit_item/common_create_edit_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_product_items_model.dart';
export 'create_product_items_model.dart';

class CreateProductItemsWidget extends StatefulWidget {
  const CreateProductItemsWidget({Key? key}) : super(key: key);

  @override
  _CreateProductItemsWidgetState createState() =>
      _CreateProductItemsWidgetState();
}

class _CreateProductItemsWidgetState extends State<CreateProductItemsWidget> {
  late CreateProductItemsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateProductItemsModel());

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
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
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
            children: [
              Builder(
                builder: (context) {
                  final addItemProductList =
                      FFAppState().productAddItem.toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: addItemProductList.length,
                    itemBuilder: (context, addItemProductListIndex) {
                      final addItemProductListItem =
                          addItemProductList[addItemProductListIndex];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 10.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.7,
                                    decoration: BoxDecoration(),
                                    child: Text(
                                      getJsonField(
                                        addItemProductListItem,
                                        r'''$.product_name''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .appBarTextColor,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  decoration: BoxDecoration(),
                                  child: RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: valueOrDefault<String>(
                                            functions.amountSymbol(
                                                getJsonField(
                                                  addItemProductListItem,
                                                  r'''$.taxjson.total''',
                                                ).toString(),
                                                FFAppState().currencySymbol),
                                            '-',
                                          ),
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .appBarTextColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .appBarTextColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                              ].divide(SizedBox(width: 10.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 0.0),
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
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '617fr6hq' /* Qty :  */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .inputtextColor,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w300,
                                            ),
                                      ),
                                      TextSpan(
                                        text: getJsonField(
                                          addItemProductListItem,
                                          r'''$.qty''',
                                        ).toString(),
                                        style: TextStyle(
                                          color:
                                              FlutterFlowTheme.of(context).rgb,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'zh1qb13m' /*    */,
                                        ),
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: getJsonField(
                                          addItemProductListItem,
                                          r'''$.unit''',
                                        ).toString(),
                                        style: TextStyle(
                                          color:
                                              FlutterFlowTheme.of(context).rgb,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13.0,
                                        ),
                                      )
                                    ],
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
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
                                              child: CommonCreateEditItemWidget(
                                                productid: getJsonField(
                                                  addItemProductListItem,
                                                  r'''$.product_id''',
                                                ),
                                                productname: getJsonField(
                                                  addItemProductListItem,
                                                  r'''$.product_name''',
                                                ).toString(),
                                                lineitem:
                                                    addItemProductListItem,
                                                index: addItemProductListIndex,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Icon(
                                        Icons.mode_edit_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 18.0,
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Delete'),
                                                      content: Text(
                                                          'Do you want to remove this product?'),
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
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          FFAppState().update(() {
                                            FFAppState()
                                                .removeAtIndexFromProductAddItem(
                                                    addItemProductListIndex);
                                          });
                                        } else {
                                          return;
                                        }
                                      },
                                      child: Icon(
                                        Icons.delete_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 18.0,
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 3.0, 8.0, 0.0),
                            child: RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      'ug4zc4xp' /* Rate  :   */,
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
                                            addItemProductListItem,
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 3.0, 8.0, 0.0),
                            child: RichText(
                              textScaleFactor:
                                  MediaQuery.of(context).textScaleFactor,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: FFLocalizations.of(context).getText(
                                      '915pef1e' /* Sub Total  :  */,
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
                                            addItemProductListItem,
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
                              addItemProductListItem,
                              r'''$.taxjson.taxnames''',
                              true,
                            ) as List)
                                .map<String>((s) => s.toString())
                                .toList()),
                            r'''$.exist''',
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: FFLocalizations.of(context).getText(
                                        'z2v8n3b2' /* Taxes :  */,
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
                                          addItemProductListItem,
                                          r'''$.taxjson.taxnames''',
                                          true,
                                        ) as List)
                                                .map<String>(
                                                    (s) => s.toString())
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
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Divider(
                                  height: 10.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).hashColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              if (FFAppState().productAddItem.length > 0)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'ozhgsq6i' /* Net Amount */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          functions.amountSymbol(
                              valueOrDefault<String>(
                                functions.findTotalWithJson(
                                    FFAppState().taxJson,
                                    'all_total',
                                    FFAppState().productAddItem.toList()),
                                '-',
                              ),
                              FFAppState().currencySymbol),
                          '-',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
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
