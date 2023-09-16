import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'grn_qty_text_box_model.dart';
export 'grn_qty_text_box_model.dart';

class GrnQtyTextBoxWidget extends StatefulWidget {
  const GrnQtyTextBoxWidget({
    Key? key,
    required this.id,
    this.qty,
    required this.page,
    required this.uomqty,
  }) : super(key: key);

  final int? id;
  final double? qty;
  final String? page;
  final double? uomqty;

  @override
  _GrnQtyTextBoxWidgetState createState() => _GrnQtyTextBoxWidgetState();
}

class _GrnQtyTextBoxWidgetState extends State<GrnQtyTextBoxWidget> {
  late GrnQtyTextBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GrnQtyTextBoxModel());

    _model.textController ??=
        TextEditingController(text: widget.qty?.toString());
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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.textController,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.textController',
                Duration(milliseconds: 2000),
                () async {
                  var _shouldSetState = false;
                  if (widget.uomqty! <
                      functions
                          .convertstringtoDouble(_model.textController.text)!) {
                    setState(() {
                      _model.textController?.text = widget.uomqty!.toString();
                    });
                    if (_shouldSetState) setState(() {});
                    return;
                  } else {
                    if (widget.page == 'grn') {
                      _model.updateGRNCopy = await InventoryApiGroupGroup
                          .gRNQuantityUpdateCall
                          .call(
                        authToken: FFAppState().accessToken,
                        qtyDone: int.tryParse(_model.textController.text),
                        id: widget.id,
                        domainUrl: FFAppState().DomainUrl,
                      );
                      _shouldSetState = true;
                      if ((_model.updateGRNCopy?.succeeded ?? true)) {
                        if (_shouldSetState) setState(() {});
                        return;
                      }

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Something Went Wrong',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                      if (_shouldSetState) setState(() {});
                      return;
                    } else {
                      _model.updateDcCopy = await InventoryApiGroupGroup
                          .dCQuantityUpdateCall
                          .call(
                        domainUrl: FFAppState().DomainUrl,
                        authToken: FFAppState().accessToken,
                        qtyDone: double.tryParse(_model.textController.text),
                        id: widget.id,
                      );
                      _shouldSetState = true;
                      if ((_model.updateDcCopy?.succeeded ?? true)) {
                        if (_shouldSetState) setState(() {});
                        return;
                      }

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Something Went Wrong',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );
                      if (_shouldSetState) setState(() {});
                      return;
                    }
                  }

                  if (_shouldSetState) setState(() {});
                },
              ),
              obscureText: false,
              decoration: InputDecoration(
                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).accent1,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).zambezi,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 0.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).inputFieldColor,
                  ),
              keyboardType: TextInputType.number,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            alignment: AlignmentDirectional(0.00, 0.00),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.scannerRes = await FlutterBarcodeScanner.scanBarcode(
                  '#C62828', // scanning line color
                  FFLocalizations.of(context).getText(
                    'd8aggs2r' /* Cancel */,
                  ), // cancel button text
                  true, // whether to show the flash icon
                  ScanMode.QR,
                );

                if (_model.scannerRes != null && _model.scannerRes != '') {
                  setState(() {
                    _model.scanres =
                        functions.pickListScanresponse(_model.scannerRes);
                  });
                  if (functions.emptyStringReturn(getJsonField(
                        _model.scanres,
                        r'''$.grn_type''',
                      ).toString()) ==
                      'serial') {
                    setState(() {
                      _model.textController?.text = '1';
                    });
                    _model.updatePage(() {
                      _model.serializecount = _model.serializecount! + 1;
                    });
                  } else {
                    setState(() {
                      _model.textController?.text = '1';
                    });
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('test'),
                          content: Text(getJsonField(
                            functions.pickListScanresponse(_model.scannerRes),
                            r'''$.move_id''',
                          ).toString()),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                }

                setState(() {});
              },
              child: Icon(
                Icons.qr_code_scanner,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
