import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/components/contact_inner_list_shimmer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reusable_component/list_page_container/list_page_container_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contact_purchase_order_list_model.dart';
export 'contact_purchase_order_list_model.dart';

class ContactPurchaseOrderListWidget extends StatefulWidget {
  const ContactPurchaseOrderListWidget({
    Key? key,
    required this.id,
    required this.name,
  }) : super(key: key);

  final int? id;
  final String? name;

  @override
  _ContactPurchaseOrderListWidgetState createState() =>
      _ContactPurchaseOrderListWidgetState();
}

class _ContactPurchaseOrderListWidgetState
    extends State<ContactPurchaseOrderListWidget> {
  late ContactPurchaseOrderListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactPurchaseOrderListModel());

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
            valueOrDefault<String>(
              functions.nullcheckforDisplay(widget.name),
              '-',
            ),
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
            future: ContactApiGroupGroup.contactPurchaseListCall.call(
              eq: widget.id,
              authToken: FFAppState().accessToken,
              domainUrl: FFAppState().DomainUrl,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return ContactInnerListShimmerWidget();
              }
              final listViewContactPurchaseListResponse = snapshot.data!;
              return Builder(
                builder: (context) {
                  final contactPurchaseLists =
                      ContactApiGroupGroup.contactPurchaseListCall
                              .fulldataapi(
                                listViewContactPurchaseListResponse.jsonBody,
                              )
                              ?.toList() ??
                          [];
                  if (contactPurchaseLists.isEmpty) {
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
                    itemCount: contactPurchaseLists.length,
                    separatorBuilder: (_, __) => SizedBox(height: 10.0),
                    itemBuilder: (context, contactPurchaseListsIndex) {
                      final contactPurchaseListsItem =
                          contactPurchaseLists[contactPurchaseListsIndex];
                      return wrapWithModel(
                        model: _model.listPageContainerModels.getModel(
                          contactPurchaseListsIndex.toString(),
                          contactPurchaseListsIndex,
                        ),
                        updateCallback: () => setState(() {}),
                        child: ListPageContainerWidget(
                          key: Key(
                            'Key1yx_${contactPurchaseListsIndex.toString()}',
                          ),
                          status: getJsonField(
                            contactPurchaseListsItem,
                            r'''$.state''',
                          ).toString(),
                          number: getJsonField(
                            contactPurchaseListsItem,
                            r'''$.name''',
                          ).toString(),
                          date: getJsonField(
                            contactPurchaseListsItem,
                            r'''$.date_order''',
                          ).toString(),
                          partnername: getJsonField(
                            contactPurchaseListsItem,
                            r'''$.res_partner.name''',
                          ).toString(),
                          amount: getJsonField(
                            contactPurchaseListsItem,
                            r'''$.amount_total''',
                          ),
                          model: 'purchaseorder',
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
