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
import 'rfq_search_component_model.dart';
export 'rfq_search_component_model.dart';

class RfqSearchComponentWidget extends StatefulWidget {
  const RfqSearchComponentWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  final String? state;

  @override
  _RfqSearchComponentWidgetState createState() =>
      _RfqSearchComponentWidgetState();
}

class _RfqSearchComponentWidgetState extends State<RfqSearchComponentWidget> {
  late RfqSearchComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RfqSearchComponentModel());

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
                                _model.rfqsearch = _model.textController.text;
                              });
                              setState(() => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              '1me6scy2' /* Search... */,
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
                                        _model.rfqsearch =
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
                  ..complete(SearchApiGroupGroup.purchaseOrderSearchCall.call(
                    authToken: FFAppState().accessToken,
                    partnerName: _model.rfqsearch,
                    domainUrl: FFAppState().DomainUrl,
                    state: widget.state,
                  )))
                .future,
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return ExpshimmerWidget();
              }
              final listViewPurchaseOrderSearchResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final rfqsearchliat =
                      SearchApiGroupGroup.purchaseOrderSearchCall
                              .purchaseordersearchapi(
                                listViewPurchaseOrderSearchResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                  if (rfqsearchliat.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/New_Project_(2).png',
                        fit: BoxFit.cover,
                      ),
                    );
                  }
                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      15.0,
                      0,
                      79.0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: rfqsearchliat.length,
                    separatorBuilder: (_, __) => SizedBox(height: 10.0),
                    itemBuilder: (context, rfqsearchliatIndex) {
                      final rfqsearchliatItem =
                          rfqsearchliat[rfqsearchliatIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'purchase_rfq_view',
                            queryParameters: {
                              'name': serializeParam(
                                getJsonField(
                                  rfqsearchliatItem,
                                  r'''$.name''',
                                ).toString(),
                                ParamType.String,
                              ),
                              'id': serializeParam(
                                getJsonField(
                                  rfqsearchliatItem,
                                  r'''$.id''',
                                ),
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: wrapWithModel(
                          model: _model.listPageContainerModels.getModel(
                            rfqsearchliatIndex.toString(),
                            rfqsearchliatIndex,
                          ),
                          updateCallback: () => setState(() {}),
                          child: ListPageContainerWidget(
                            key: Key(
                              'Keytva_${rfqsearchliatIndex.toString()}',
                            ),
                            status: getJsonField(
                              rfqsearchliatItem,
                              r'''$.state''',
                            ).toString(),
                            number: getJsonField(
                              rfqsearchliatItem,
                              r'''$.name''',
                            ).toString(),
                            date: getJsonField(
                              rfqsearchliatItem,
                              r'''$.date_order''',
                            ).toString(),
                            partnername: getJsonField(
                              rfqsearchliatItem,
                              r'''$.res_partner.name''',
                            ).toString(),
                            amount: getJsonField(
                              rfqsearchliatItem,
                              r'''$.amount_total''',
                            ),
                            model: 'rfq',
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
      ],
    );
  }
}
