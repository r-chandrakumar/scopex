import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/lead/lead_pages/lead_view/leadsshimmer/leadsshimmer_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sale_order_search_model.dart';
export 'sale_order_search_model.dart';

class SaleOrderSearchWidget extends StatefulWidget {
  const SaleOrderSearchWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  final String? state;

  @override
  _SaleOrderSearchWidgetState createState() => _SaleOrderSearchWidgetState();
}

class _SaleOrderSearchWidgetState extends State<SaleOrderSearchWidget> {
  late SaleOrderSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaleOrderSearchModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 1.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 3.0),
              )
            ],
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Color(0xFF95A1AC),
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textController',
                            Duration(milliseconds: 1000),
                            () async {
                              setState(() {
                                _model.salesOrder = _model.textController.text;
                              });
                              setState(() => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'gi02wuk0' /* Search... */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .inputtextColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            suffixIcon: _model.textController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textController?.clear();
                                      setState(() {
                                        _model.salesOrder =
                                            _model.textController.text;
                                      });
                                      setState(() =>
                                          _model.apiRequestCompleter = null);
                                      await _model.waitForApiRequestCompleted();
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      size: 22,
                                    ),
                                  )
                                : null,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'outfit',
                                color:
                                    FlutterFlowTheme.of(context).inputtextColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                useGoogleFonts: false,
                              ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 0.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).hashColor,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: FutureBuilder<ApiCallResponse>(
            future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                  ..complete(SearchApiGroupGroup.saleOrderSearchCall.call(
                    authToken: FFAppState().accessToken,
                    partnerName: functions.emptyfunction(_model.salesOrder),
                    domainUrl: FFAppState().DomainUrl,
                    state: widget.state,
                  )))
                .future,
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: LeadsshimmerWidget(),
                );
              }
              final listViewSaleOrderSearchResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final saleordersearch =
                      SearchApiGroupGroup.saleOrderSearchCall
                              .saleorderfullapi(
                                listViewSaleOrderSearchResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                  if (saleordersearch.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/New_Project_(2).png',
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async {
                      setState(() => _model.apiRequestCompleter = null);
                      await _model.waitForApiRequestCompleted();
                    },
                    child: ListView.separated(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        15.0,
                        0,
                        15.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: saleordersearch.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.0),
                      itemBuilder: (context, saleordersearchIndex) {
                        final saleordersearchItem =
                            saleordersearch[saleordersearchIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'sale_order_view_page',
                              queryParameters: {
                                'id': serializeParam(
                                  getJsonField(
                                    saleordersearchItem,
                                    r'''$.id''',
                                  ),
                                  ParamType.int,
                                ),
                                'name': serializeParam(
                                  getJsonField(
                                    saleordersearchItem,
                                    r'''$.name''',
                                  ).toString(),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: ListPageContainerWidget(
                            key: Key(
                                'Key0te_${saleordersearchIndex}_of_${saleordersearch.length}'),
                            status: getJsonField(
                              saleordersearchItem,
                              r'''$.state''',
                            ).toString(),
                            number: getJsonField(
                              saleordersearchItem,
                              r'''$.name''',
                            ).toString(),
                            date: getJsonField(
                              saleordersearchItem,
                              r'''$.date_order''',
                            ).toString(),
                            partnername: getJsonField(
                              saleordersearchItem,
                              r'''$.res_partner.name''',
                            ).toString(),
                            amount: getJsonField(
                              saleordersearchItem,
                              r'''$.amount_total''',
                            ),
                            model: 'saleorder',
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
