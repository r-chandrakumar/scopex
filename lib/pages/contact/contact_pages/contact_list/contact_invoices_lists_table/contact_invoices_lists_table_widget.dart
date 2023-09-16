import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/contact_inner_list_shimmer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contact_invoices_lists_table_model.dart';
export 'contact_invoices_lists_table_model.dart';

class ContactInvoicesListsTableWidget extends StatefulWidget {
  const ContactInvoicesListsTableWidget({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  final int? id;
  final String? name;

  @override
  _ContactInvoicesListsTableWidgetState createState() =>
      _ContactInvoicesListsTableWidgetState();
}

class _ContactInvoicesListsTableWidgetState
    extends State<ContactInvoicesListsTableWidget> {
  late ContactInvoicesListsTableModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactInvoicesListsTableModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBarColor,
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
          title: Text(
            widget.name!,
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Roboto',
                  color: FlutterFlowTheme.of(context).appBarTextColor,
                  fontSize: 23.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
                  ..complete(ContactApiGroupGroup.contactInvoiceListCall.call(
                    authToken: FFAppState().accessToken,
                    eq: widget.id,
                    eq1: 'out_invoice',
                    domainUrl: FFAppState().DomainUrl,
                  )))
                .future,
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return ContactInnerListShimmerWidget();
              }
              final listViewContactInvoiceListResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final contactInvoiceList =
                      ContactApiGroupGroup.contactInvoiceListCall
                              .fulldataapi(
                                listViewContactInvoiceListResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                  if (contactInvoiceList.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/nodata-found.png',
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
                      itemCount: contactInvoiceList.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.0),
                      itemBuilder: (context, contactInvoiceListIndex) {
                        final contactInvoiceListItem =
                            contactInvoiceList[contactInvoiceListIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'invoice_view_page',
                              queryParameters: {
                                'name': serializeParam(
                                  getJsonField(
                                    contactInvoiceListItem,
                                    r'''$.res_partner.name''',
                                  ).toString(),
                                  ParamType.String,
                                ),
                                'id': serializeParam(
                                  getJsonField(
                                    contactInvoiceListItem,
                                    r'''$.id''',
                                  ),
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.listPageContainerModels.getModel(
                              contactInvoiceListIndex.toString(),
                              contactInvoiceListIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: ListPageContainerWidget(
                              key: Key(
                                'Key34o_${contactInvoiceListIndex.toString()}',
                              ),
                              status: getJsonField(
                                contactInvoiceListItem,
                                r'''$.state''',
                              ).toString(),
                              number: getJsonField(
                                contactInvoiceListItem,
                                r'''$.name''',
                              ).toString(),
                              date: getJsonField(
                                contactInvoiceListItem,
                                r'''$.invoice_date''',
                              ).toString(),
                              partnername: getJsonField(
                                contactInvoiceListItem,
                                r'''$.res_partner.name''',
                              ).toString(),
                              amount: getJsonField(
                                contactInvoiceListItem,
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
        ),
      ),
    );
  }
}
