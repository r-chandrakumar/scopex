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
import 'vendor_bill_search_model.dart';
export 'vendor_bill_search_model.dart';

class VendorBillSearchWidget extends StatefulWidget {
  const VendorBillSearchWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  final String? state;

  @override
  _VendorBillSearchWidgetState createState() => _VendorBillSearchWidgetState();
}

class _VendorBillSearchWidgetState extends State<VendorBillSearchWidget> {
  late VendorBillSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorBillSearchModel());

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
                                _model.vendorsearch =
                                    _model.textController.text;
                              });
                              setState(() => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'fcznrzho' /* Search... */,
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
                                        _model.vendorsearch =
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FutureBuilder<ApiCallResponse>(
                  future: (_model
                          .apiRequestCompleter ??= Completer<ApiCallResponse>()
                        ..complete(
                            SearchApiGroupGroup.invoiceRecordSearchCall.call(
                          authToken: FFAppState().accessToken,
                          iregex: _model.vendorsearch,
                          domainUrl: FFAppState().DomainUrl,
                          type: 'in_invoice',
                          state: widget.state,
                        )))
                      .future,
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return ExpshimmerWidget();
                    }
                    final listViewInvoiceRecordSearchResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final vendorBillSearch =
                            SearchApiGroupGroup.invoiceRecordSearchCall
                                    .accountmove(
                                      listViewInvoiceRecordSearchResponse
                                          .jsonBody,
                                    )
                                    ?.toList() ??
                                [];
                        if (vendorBillSearch.isEmpty) {
                          return Center(
                            child: Image.asset(
                              'assets/images/3009287.jpg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
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
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: vendorBillSearch.length,
                            separatorBuilder: (_, __) => SizedBox(height: 10.0),
                            itemBuilder: (context, vendorBillSearchIndex) {
                              final vendorBillSearchItem =
                                  vendorBillSearch[vendorBillSearchIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'vendor_bill_view',
                                    queryParameters: {
                                      'id': serializeParam(
                                        getJsonField(
                                          vendorBillSearchItem,
                                          r'''$.id''',
                                        ),
                                        ParamType.int,
                                      ),
                                      'name': serializeParam(
                                        getJsonField(
                                          vendorBillSearchItem,
                                          r'''$.name''',
                                        ).toString(),
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: wrapWithModel(
                                  model:
                                      _model.listPageContainerModels.getModel(
                                    vendorBillSearchIndex.toString(),
                                    vendorBillSearchIndex,
                                  ),
                                  updateCallback: () => setState(() {}),
                                  child: ListPageContainerWidget(
                                    key: Key(
                                      'Keyyg6_${vendorBillSearchIndex.toString()}',
                                    ),
                                    status: getJsonField(
                                      vendorBillSearchItem,
                                      r'''$.state''',
                                    ).toString(),
                                    number: getJsonField(
                                      vendorBillSearchItem,
                                      r'''$.name''',
                                    ).toString(),
                                    date: getJsonField(
                                      vendorBillSearchItem,
                                      r'''$.invoice_date''',
                                    ).toString(),
                                    partnername: getJsonField(
                                      vendorBillSearchItem,
                                      r'''$.res_partner.name''',
                                    ).toString(),
                                    amount: getJsonField(
                                      vendorBillSearchItem,
                                      r'''$.amount_total''',
                                    ),
                                    model: 'accounting',
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
