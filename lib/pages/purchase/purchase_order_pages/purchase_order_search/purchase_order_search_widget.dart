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
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'purchase_order_search_model.dart';
export 'purchase_order_search_model.dart';

class PurchaseOrderSearchWidget extends StatefulWidget {
  const PurchaseOrderSearchWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  final String? state;

  @override
  _PurchaseOrderSearchWidgetState createState() =>
      _PurchaseOrderSearchWidgetState();
}

class _PurchaseOrderSearchWidgetState extends State<PurchaseOrderSearchWidget> {
  late PurchaseOrderSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PurchaseOrderSearchModel());

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
                                _model.orderSearch = _model.textController.text;
                              });
                              setState(() =>
                                  _model.listViewPagingController?.refresh());
                              await _model.waitForOnePageForListView();
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              '36shraoh' /* Search... */,
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
                                        _model.orderSearch =
                                            _model.textController.text;
                                      });
                                      setState(() => _model
                                          .listViewPagingController
                                          ?.refresh());
                                      await _model.waitForOnePageForListView();
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
          child: RefreshIndicator(
            onRefresh: () async {
              setState(() => _model.listViewPagingController?.refresh());
              await _model.waitForOnePageForListView();
            },
            child: PagedListView<ApiPagingParams, dynamic>.separated(
              pagingController: _model.setListViewController(
                (nextPageMarker) =>
                    SearchApiGroupGroup.purchaseOrderSearchCall.call(
                  authToken: FFAppState().accessToken,
                  partnerName: functions.emptyStringReturn(_model.orderSearch),
                  domainUrl: FFAppState().DomainUrl,
                  state: widget.state,
                ),
              ),
              padding: EdgeInsets.fromLTRB(
                0,
                15.0,
                0,
                15.0,
              ),
              shrinkWrap: true,
              reverse: false,
              scrollDirection: Axis.vertical,
              separatorBuilder: (_, __) => SizedBox(height: 10.0),
              builderDelegate: PagedChildBuilderDelegate<dynamic>(
                // Customize what your widget looks like when it's loading the first page.
                firstPageProgressIndicatorBuilder: (_) => Center(
                  child: LeadsshimmerWidget(),
                ),
                // Customize what your widget looks like when it's loading another page.
                newPageProgressIndicatorBuilder: (_) => Center(
                  child: LeadsshimmerWidget(),
                ),
                noItemsFoundIndicatorBuilder: (_) => Center(
                  child: Image.asset(
                    'assets/images/New_Project_(2).png',
                    fit: BoxFit.cover,
                  ),
                ),
                itemBuilder: (context, _, purchaseorderlistsIndex) {
                  final purchaseorderlistsItem = _model
                      .listViewPagingController!
                      .itemList![purchaseorderlistsIndex];
                  return InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'purchase_order_view',
                        queryParameters: {
                          'name': serializeParam(
                            getJsonField(
                              purchaseorderlistsItem,
                              r'''$.name''',
                            ).toString(),
                            ParamType.String,
                          ),
                          'id': serializeParam(
                            getJsonField(
                              purchaseorderlistsItem,
                              r'''$.id''',
                            ),
                            ParamType.int,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: wrapWithModel(
                      model: _model.listPageContainerModels.getModel(
                        purchaseorderlistsIndex.toString(),
                        purchaseorderlistsIndex,
                      ),
                      updateCallback: () => setState(() {}),
                      child: ListPageContainerWidget(
                        key: Key(
                          'Key5of_${purchaseorderlistsIndex.toString()}',
                        ),
                        status: getJsonField(
                          purchaseorderlistsItem,
                          r'''$.state''',
                        ).toString(),
                        number: getJsonField(
                          purchaseorderlistsItem,
                          r'''$.name''',
                        ).toString(),
                        date: getJsonField(
                          purchaseorderlistsItem,
                          r'''$.date_order''',
                        ).toString(),
                        partnername: getJsonField(
                          purchaseorderlistsItem,
                          r'''$.res_partner.name''',
                        ).toString(),
                        amount: getJsonField(
                          purchaseorderlistsItem,
                          r'''$.amount_total''',
                        ),
                        model: 'purchaseorder',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
