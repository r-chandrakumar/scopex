import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tax_select_component_model.dart';
export 'tax_select_component_model.dart';

class TaxSelectComponentWidget extends StatefulWidget {
  const TaxSelectComponentWidget({
    Key? key,
    required this.subtotal,
  }) : super(key: key);

  final double? subtotal;

  @override
  _TaxSelectComponentWidgetState createState() =>
      _TaxSelectComponentWidgetState();
}

class _TaxSelectComponentWidgetState extends State<TaxSelectComponentWidget> {
  late TaxSelectComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaxSelectComponentModel());

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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textController',
                              Duration(milliseconds: 1000),
                              () async {
                                setState(() {
                                  _model.search = functions.emptyfunction(
                                      _model.textController.text);
                                });
                                setState(
                                    () => _model.apiRequestCompleter = null);
                                await _model.waitForApiRequestCompleted();
                              },
                            ),
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'u24pssa6' /* Search for Taxes.. */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 14.0,
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
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF14181B),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            maxLines: null,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.check_circle,
                            color: FlutterFlowTheme.of(context).success,
                            size: 28.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: (_model.apiRequestCompleter ??=
                          Completer<ApiCallResponse>()
                            ..complete(
                                CommonApisGroupGroup.taxListWithSearchCall.call(
                              name: functions.emptyStringReturn(_model.search),
                              domainUrl: FFAppState().DomainUrl,
                              authToken: FFAppState().accessToken,
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
                    final listViewTaxListWithSearchResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final taxList =
                            CommonApisGroupGroup.taxListWithSearchCall
                                    .taxList(
                                      listViewTaxListWithSearchResponse
                                          .jsonBody,
                                    )
                                    ?.toList() ??
                                [];
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: taxList.length,
                          itemBuilder: (context, taxListIndex) {
                            final taxListItem = taxList[taxListIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    child: Checkbox(
                                      value: _model
                                              .checkboxValueMap[taxListItem] ??=
                                          functions.findListValueExist(
                                              getJsonField(
                                                FFAppState().taxJson,
                                                r'''$.taxid''',
                                              ),
                                              getJsonField(
                                                taxListItem,
                                                r'''$.id''',
                                              ))!,
                                      onChanged: (newValue) async {
                                        setState(() => _model
                                                .checkboxValueMap[taxListItem] =
                                            newValue!);
                                        if (newValue!) {
                                          setState(() {
                                            FFAppState().taxJson =
                                                functions.taxjson(
                                                    FFAppState().taxJson,
                                                    'add',
                                                    getJsonField(
                                                      taxListItem,
                                                      r'''$.id''',
                                                    ),
                                                    getJsonField(
                                                      taxListItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    functions.findTotalamount(
                                                        widget.subtotal,
                                                        'taxamount',
                                                        FFAppState().taxJson,
                                                        'add',
                                                        'null'),
                                                    getJsonField(
                                                      taxListItem,
                                                      r'''$.amount''',
                                                    ),
                                                    functions.findTotalamount(
                                                        widget.subtotal,
                                                        'total',
                                                        FFAppState().taxJson,
                                                        'add',
                                                        'null'),
                                                    0,
                                                    FFAppState().taxJson,
                                                    'null')!;
                                          });
                                          FFAppState().update(() {
                                            FFAppState().taxJson =
                                                functions.taxjson(
                                                    FFAppState().taxJson,
                                                    'tax_total',
                                                    0,
                                                    'null',
                                                    functions.findTotalamount(
                                                        widget.subtotal,
                                                        'tax',
                                                        FFAppState().taxJson,
                                                        'add',
                                                        'null'),
                                                    0.0,
                                                    functions.findTotalamount(
                                                        widget.subtotal,
                                                        'total',
                                                        FFAppState().taxJson,
                                                        'add',
                                                        'null'),
                                                    0,
                                                    FFAppState().taxJson,
                                                    'null')!;
                                          });
                                        } else {
                                          setState(() {
                                            FFAppState().taxJson =
                                                functions.taxjson(
                                                    FFAppState().taxJson,
                                                    'delete',
                                                    0,
                                                    'null',
                                                    0.0,
                                                    0.0,
                                                    0.0,
                                                    functions
                                                        .findListValueWithIndex(
                                                            getJsonField(
                                                              FFAppState()
                                                                  .taxJson,
                                                              r'''$.taxid''',
                                                            ),
                                                            getJsonField(
                                                              taxListItem,
                                                              r'''$.id''',
                                                            ),
                                                            'index'),
                                                    FFAppState().taxJson,
                                                    'null')!;
                                          });
                                          FFAppState().update(() {
                                            FFAppState().taxJson =
                                                functions.taxjson(
                                                    FFAppState().taxJson,
                                                    'tax_total',
                                                    0,
                                                    'null',
                                                    functions.findTotalamount(
                                                        widget.subtotal,
                                                        'tax',
                                                        FFAppState().taxJson,
                                                        'add',
                                                        'null'),
                                                    0.0,
                                                    functions.findTotalamount(
                                                        widget.subtotal,
                                                        'total',
                                                        FFAppState().taxJson,
                                                        'add',
                                                        'null'),
                                                    0,
                                                    FFAppState().taxJson,
                                                    'null')!;
                                          });
                                        }
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      getJsonField(
                                        taxListItem,
                                        r'''$.name''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
