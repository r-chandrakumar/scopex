import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/accounting/payment_view/payment_view_page_loader/payment_view_page_loader_widget.dart';
import '/reusable_component/common_fab_component/common_fab_component_widget.dart';
import '/reusable_component/common_log_note/common_log_note_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'payment_view_page_model.dart';
export 'payment_view_page_model.dart';

class PaymentViewPageWidget extends StatefulWidget {
  const PaymentViewPageWidget({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  final int? id;
  final String? name;

  @override
  _PaymentViewPageWidgetState createState() => _PaymentViewPageWidgetState();
}

class _PaymentViewPageWidgetState extends State<PaymentViewPageWidget> {
  late PaymentViewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentViewPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().accessToken != null &&
          FFAppState().accessToken != '')) {
        context.goNamed('Login');
      }
    });

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
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      child: CommonFabComponentWidget(
                        id: widget.id!,
                        name: widget.name,
                        page: 'payment',
                      ),
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
            color: FlutterFlowTheme.of(context).primaryBackground,
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
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: wrapWithModel(
                  model: _model.backButttonComponentModel,
                  updateCallback: () => setState(() {}),
                  child: BackButttonComponentWidget(),
                ),
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
                    color: FlutterFlowTheme.of(context).appBarTextColor,
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
                        FFAppState().WebUrl, 'invoice', widget.id),
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
                                FFAppState().WebUrl, 'accounting', widget.id)!,
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
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              desktop: false,
            ),
            child: FutureBuilder<ApiCallResponse>(
              future: AccountingApiGroupGroup.paymentViewCall.call(
                authToken: FFAppState().accessToken,
                id: widget.id,
                domainUrl: FFAppState().DomainUrl,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return PaymentViewPageLoaderWidget();
                }
                final columnPaymentViewResponse = snapshot.data!;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .viewPageContainer,
                                borderRadius: BorderRadius.circular(0.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).hashColor,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 15.0, 15.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'aojcxfgy' /* Payment No  :   */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            functions.nullcheckforDisplay(
                                                AccountingApiGroupGroup
                                                    .paymentViewCall
                                                    .name(
                                                      columnPaymentViewResponse
                                                          .jsonBody,
                                                    )
                                                    .toString()),
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 10.0, 15.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.nullcheckforDisplay(
                                                  functions
                                                      .convertLeaveDateFormat(
                                                          AccountingApiGroupGroup
                                                              .paymentViewCall
                                                              .date(
                                                                columnPaymentViewResponse
                                                                    .jsonBody,
                                                              )
                                                              .toString())),
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .white,
                                                  fontSize: 16.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 10.0, 15.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .hashColor,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 5.0, 8.0, 5.0),
                                            child: Text(
                                              () {
                                                if (AccountingApiGroupGroup
                                                        .paymentViewCall
                                                        .paymentType(
                                                          columnPaymentViewResponse
                                                              .jsonBody,
                                                        )
                                                        .toString() ==
                                                    'inbound') {
                                                  return 'Customer';
                                                } else if (AccountingApiGroupGroup
                                                        .paymentViewCall
                                                        .paymentType(
                                                          columnPaymentViewResponse
                                                              .jsonBody,
                                                        )
                                                        .toString() ==
                                                    'outboud') {
                                                  return 'Vendor';
                                                } else {
                                                  return ' ';
                                                }
                                              }(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .textDarkLightColor,
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: colorFromCssString(
                                              getJsonField(
                                                functions.statusChange(
                                                    'accounting',
                                                    '\$.account_payment[:].account_move.state'),
                                                r'''$.color''',
                                              ).toString(),
                                              defaultColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Align(
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(6.0, 6.0, 6.0, 6.0),
                                              child: Text(
                                                getJsonField(
                                                  functions.statusChange(
                                                      'accounting',
                                                      AccountingApiGroupGroup
                                                          .paymentViewCall
                                                          .state(
                                                            columnPaymentViewResponse
                                                                .jsonBody,
                                                          )
                                                          .toString()),
                                                  r'''$.name''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textDarkLightColor,
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
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
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 10.0, 15.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'p44ok476' /* ACCOUNT TYPE */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          functions.isNull(
                                              AccountingApiGroupGroup
                                                  .paymentViewCall
                                                  .journalName(
                                                    columnPaymentViewResponse
                                                        .jsonBody,
                                                  )
                                                  .toString()),
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .rgb,
                                              fontSize: 21.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '7wc30bfm' /* PAYMENT METHOD */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          functions.isNull(
                                              AccountingApiGroupGroup
                                                  .paymentViewCall
                                                  .accountPaymentMethod(
                                                    columnPaymentViewResponse
                                                        .jsonBody,
                                                  )
                                                  .toString()),
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .rgb,
                                              fontSize: 21.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '7fh0y68n' /* TOTAL */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        valueOrDefault<String>(
                                          functions.isNull(
                                              functions.amountSymbol(
                                                  AccountingApiGroupGroup
                                                      .paymentViewCall
                                                      .amount(
                                                        columnPaymentViewResponse
                                                            .jsonBody,
                                                      )
                                                      .toString(),
                                                  FFAppState().currencySymbol)),
                                          '-',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .rgb,
                                              fontSize: 21.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.commonLogNoteModel,
                              updateCallback: () => setState(() {}),
                              child: CommonLogNoteWidget(
                                logmessage: AccountingApiGroupGroup
                                    .paymentViewCall
                                    .logNote(
                                  columnPaymentViewResponse.jsonBody,
                                ),
                              ),
                            ),
                          ].addToEnd(SizedBox(height: 75.0)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
