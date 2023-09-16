import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/sale/quotation/quotation_view/quotation_view_page_loader/quotation_view_page_loader_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/reusable_component/common_view_page/common_view_page_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quotation_view_page_model.dart';
export 'quotation_view_page_model.dart';

class QuotationViewPageWidget extends StatefulWidget {
  const QuotationViewPageWidget({
    Key? key,
    this.id,
    this.name,
  }) : super(key: key);

  final int? id;
  final String? name;

  @override
  _QuotationViewPageWidgetState createState() =>
      _QuotationViewPageWidgetState();
}

class _QuotationViewPageWidgetState extends State<QuotationViewPageWidget> {
  late QuotationViewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuotationViewPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              enableDrag: false,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).requestFocus(_model.unfocusNode),
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: CommonFabComponentWidget(
                      id: widget.id!,
                      name: widget.name,
                      page: 'quote',
                    ),
                  ),
                );
              },
            ).then((value) => setState(() {}));
          },
          backgroundColor: FlutterFlowTheme.of(context).menuBarButton,
          elevation: 0.0,
          child: Icon(
            Icons.menu,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            size: 25.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: wrapWithModel(
                model: _model.backButttonComponentModel,
                updateCallback: () => setState(() {}),
                child: BackButttonComponentWidget(),
              ),
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Text(
              valueOrDefault<String>(
                widget.name,
                '-',
              ),
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Outfit',
                    fontSize: 23.0,
                  ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await actions.downloadPdfFromUrl(
                    context,
                    functions.getDownloadUrl(
                        FFAppState().WebUrl, 'sale', widget.id),
                    '${widget.name}.pdf',
                  );
                },
                child: Icon(
                  Icons.download_rounded,
                  color: FlutterFlowTheme.of(context).appBarTextColor,
                  size: 24.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
              child: InkWell(
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
                      return GestureDetector(
                        onTap: () => FocusScope.of(context)
                            .requestFocus(_model.unfocusNode),
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: PDFViewWidget(
                            pdfurl: functions.getDownloadUrl(
                                FFAppState().WebUrl, 'sale', widget.id)!,
                            title: widget.name!,
                            shareFile: true,
                          ),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: Icon(
                  Icons.share_rounded,
                  color: FlutterFlowTheme.of(context).appBarTextColor,
                  size: 24.0,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: SalesApiGroupGroup.saleOrderViewCall.call(
              authToken: FFAppState().accessToken,
              eq: widget.id,
              domainUrl: FFAppState().DomainUrl,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return QuotationViewPageLoaderWidget();
              }
              final columnSaleOrderViewResponse = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.commonViewPageModel,
                          updateCallback: () => setState(() {}),
                          child: CommonViewPageWidget(
                            partnername: SalesApiGroupGroup.saleOrderViewCall
                                .pertnerName(
                                  columnSaleOrderViewResponse.jsonBody,
                                )
                                .toString(),
                            date: SalesApiGroupGroup.saleOrderViewCall
                                .orderDate(
                                  columnSaleOrderViewResponse.jsonBody,
                                )
                                .toString(),
                            status: SalesApiGroupGroup.saleOrderViewCall
                                .status(
                                  columnSaleOrderViewResponse.jsonBody,
                                )
                                .toString(),
                            total: SalesApiGroupGroup.saleOrderViewCall
                                .totalAmount(
                                  columnSaleOrderViewResponse.jsonBody,
                                )
                                .toString(),
                            subtotal: SalesApiGroupGroup.saleOrderViewCall
                                .unTaxedAmount(
                                  columnSaleOrderViewResponse.jsonBody,
                                )
                                .toString(),
                            taxtotal: SalesApiGroupGroup.saleOrderViewCall
                                .taxAmount(
                                  columnSaleOrderViewResponse.jsonBody,
                                )
                                .toString(),
                            model: 'quotation',
                            productlines: SalesApiGroupGroup.saleOrderViewCall
                                .saleOrderLineProducts(
                              columnSaleOrderViewResponse.jsonBody,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.tabchange = 0;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tnjxhtmy' /* Activity */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: _model.tabchange == 0
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .addItemsButton
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .loginBtnColor1,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (_model.tabchange == 0)
                                      SizedBox(
                                        width: 100.0,
                                        child: Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .addItemsButton,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.tabchange = 1;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'u702e0yx' /* Log */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: _model.tabchange == 1
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .addItemsButton
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .loginBtnColor1,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (_model.tabchange == 1)
                                      SizedBox(
                                        width: 100.0,
                                        child: Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .addItemsButton,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            if (_model.tabchange == 0) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.commonLogNoteModel,
                                      updateCallback: () => setState(() {}),
                                      child: CommonLogNoteWidget(
                                        logmessage: SalesApiGroupGroup
                                            .saleOrderViewCall
                                            .logNote(
                                          columnSaleOrderViewResponse.jsonBody,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ].addToEnd(SizedBox(height: 75.0)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
