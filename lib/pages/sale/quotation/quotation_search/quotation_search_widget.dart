import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/expenses/expshimmer/expshimmer_widget.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quotation_search_model.dart';
export 'quotation_search_model.dart';

class QuotationSearchWidget extends StatefulWidget {
  const QuotationSearchWidget({
    Key? key,
    this.state,
  }) : super(key: key);

  final String? state;

  @override
  _QuotationSearchWidgetState createState() => _QuotationSearchWidgetState();
}

class _QuotationSearchWidgetState extends State<QuotationSearchWidget> {
  late QuotationSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuotationSearchModel());

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
                                _model.quotationsearch =
                                    _model.textController.text;
                              });
                              setState(() => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'n8ha61qe' /* Search... */,
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
                                        _model.quotationsearch =
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'outfit',
                                    color: Color(0xFF95A1AC),
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
                    partnerName: _model.quotationsearch,
                    domainUrl: FFAppState().DomainUrl,
                    state: widget.state,
                  )))
                .future,
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return ExpshimmerWidget();
              }
              final listViewSaleOrderSearchResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final searchquotation =
                      SearchApiGroupGroup.saleOrderSearchCall
                              .saleorderfullapi(
                                listViewSaleOrderSearchResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                  if (searchquotation.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/New_Project_(2).png',
                        fit: BoxFit.contain,
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
                        79.0,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: searchquotation.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.0),
                      itemBuilder: (context, searchquotationIndex) {
                        final searchquotationItem =
                            searchquotation[searchquotationIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'quotation_view_page',
                              queryParameters: {
                                'id': serializeParam(
                                  getJsonField(
                                    searchquotationItem,
                                    r'''$.id''',
                                  ),
                                  ParamType.int,
                                ),
                                'name': serializeParam(
                                  getJsonField(
                                    searchquotationItem,
                                    r'''$.name''',
                                  ).toString(),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.listPageContainerModels.getModel(
                              searchquotationIndex.toString(),
                              searchquotationIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: ListPageContainerWidget(
                              key: Key(
                                'Keynb7_${searchquotationIndex.toString()}',
                              ),
                              status: getJsonField(
                                searchquotationItem,
                                r'''$.state''',
                              ).toString(),
                              number: getJsonField(
                                searchquotationItem,
                                r'''$.name''',
                              ).toString(),
                              date: getJsonField(
                                searchquotationItem,
                                r'''$.date_order''',
                              ).toString(),
                              partnername: getJsonField(
                                searchquotationItem,
                                r'''$.res_partner.name''',
                              ).toString(),
                              amount: getJsonField(
                                searchquotationItem,
                                r'''$.amount_total''',
                              ),
                              model: 'quotation',
                            ),
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
