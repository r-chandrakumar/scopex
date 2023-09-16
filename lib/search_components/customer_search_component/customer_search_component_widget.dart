import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'customer_search_component_model.dart';
export 'customer_search_component_model.dart';

class CustomerSearchComponentWidget extends StatefulWidget {
  const CustomerSearchComponentWidget({Key? key}) : super(key: key);

  @override
  _CustomerSearchComponentWidgetState createState() =>
      _CustomerSearchComponentWidgetState();
}

class _CustomerSearchComponentWidgetState
    extends State<CustomerSearchComponentWidget> with TickerProviderStateMixin {
  late CustomerSearchComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomerSearchComponentModel());

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
                            setState(() {
                              _model.search = _model.textController.text;
                            });
                            setState(() => _model.apiRequestCompleter = null);
                            await _model.waitForApiRequestCompleted();
                          },
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'm8uyt4h0' /* Search for customer */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
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
                          suffixIcon: _model.textController!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.textController?.clear();
                                    setState(() {
                                      _model.search =
                                          _model.textController.text;
                                    });
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
                              color: Color(0xFF14181B),
                              fontSize: 14.0,
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
                      ..complete(CommonApisGroupGroup.customerSearchCall.call(
                        authToken: FFAppState().accessToken,
                        domainUrl: FFAppState().DomainUrl,
                        iregex: functions.emptyStringReturn(_model.search),
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
                  final searchListCustomerSearchResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final customerList =
                          CommonApisGroupGroup.customerSearchCall
                                  .customerList(
                                    searchListCustomerSearchResponse.jsonBody,
                                  )
                                  ?.toList() ??
                              [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: customerList.length,
                        itemBuilder: (context, customerListIndex) {
                          final customerListItem =
                              customerList[customerListIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().CustomerSearch =
                                      customerListItem;
                                });
                                Navigator.pop(context);
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
                                  border: Border.all(
                                    color: functions.equalValueCheck(
                                            getJsonField(
                                              FFAppState().CustomerSearch,
                                              r'''$.id''',
                                            ),
                                            getJsonField(
                                              customerListItem,
                                              r'''$.id''',
                                            ))!
                                        ? FlutterFlowTheme.of(context).tertiary
                                        : Color(0x00000000),
                                  ),
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
                                                  customerListItem,
                                                  r'''$.name''',
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 10.0),
            child: FutureBuilder<ApiCallResponse>(
              future: CommonApisGroupGroup.customerSearchCall.call(
                iregex: functions.emptyStringReturn(_model.search),
                domainUrl: FFAppState().DomainUrl,
                authToken: FFAppState().accessToken,
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
                final rowCustomerSearchResponse = snapshot.data!;
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (CommonApisGroupGroup.customerSearchCall
                            .customerList(
                              rowCustomerSearchResponse.jsonBody,
                            )
                            .length >
                        0)
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'contact_create_page',
                            queryParameters: {
                              'id': serializeParam(
                                0,
                                ParamType.int,
                              ),
                              'string': serializeParam(
                                'forcreate',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'qe0khq1o' /* Add New Customer */,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).addItemsButton,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
