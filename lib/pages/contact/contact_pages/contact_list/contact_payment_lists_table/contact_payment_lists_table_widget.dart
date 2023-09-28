import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/contact_inner_list_shimmer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contact_payment_lists_table_model.dart';
export 'contact_payment_lists_table_model.dart';

class ContactPaymentListsTableWidget extends StatefulWidget {
  const ContactPaymentListsTableWidget({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  final int? id;
  final String? name;

  @override
  _ContactPaymentListsTableWidgetState createState() =>
      _ContactPaymentListsTableWidgetState();
}

class _ContactPaymentListsTableWidgetState
    extends State<ContactPaymentListsTableWidget> {
  late ContactPaymentListsTableModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactPaymentListsTableModel());

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
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
              context.pop();
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
            style: FlutterFlowTheme.of(context).headlineMedium.override(
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
            future: ContactApiGroupGroup.contactAccountPaymentCall.call(
              eq: widget.id,
              authToken: FFAppState().accessToken,
              domainUrl: FFAppState().DomainUrl,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return ContactInnerListShimmerWidget();
              }
              final listViewContactAccountPaymentResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final contactPaymentList =
                      ContactApiGroupGroup.contactAccountPaymentCall
                              .fulldataapi(
                                listViewContactAccountPaymentResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                  if (contactPaymentList.isEmpty) {
                    return Center(
                      child: Image.asset(
                        'assets/images/nodata-found.png',
                      ),
                    );
                  }
                  return ListView.separated(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      15.0,
                      0,
                      15.0,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: contactPaymentList.length,
                    separatorBuilder: (_, __) => SizedBox(height: 10.0),
                    itemBuilder: (context, contactPaymentListIndex) {
                      final contactPaymentListItem =
                          contactPaymentList[contactPaymentListIndex];
                      return wrapWithModel(
                        model: _model.listPageContainerModels.getModel(
                          contactPaymentListIndex.toString(),
                          contactPaymentListIndex,
                        ),
                        updateCallback: () => setState(() {}),
                        child: ListPageContainerWidget(
                          key: Key(
                            'Key0b8_${contactPaymentListIndex.toString()}',
                          ),
                          status: getJsonField(
                            contactPaymentListItem,
                            r'''$.state''',
                          ).toString(),
                          number: getJsonField(
                            contactPaymentListItem,
                            r'''$.account_move.name''',
                          ).toString(),
                          date: getJsonField(
                            contactPaymentListItem,
                            r'''$.account_move.date''',
                          ).toString(),
                          partnername: getJsonField(
                            contactPaymentListItem,
                            r'''$.res_partner.name''',
                          ).toString(),
                          amount: getJsonField(
                            contactPaymentListItem,
                            r'''$.amount''',
                          ),
                          model: 'accounting',
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
    );
  }
}
