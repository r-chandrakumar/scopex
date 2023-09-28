import '/backend/api_requests/api_calls.dart';
import '/components/menu_component_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/product_cataloge/bookmarked_product/bookmarked_product_widget.dart';
import '/pages/product_cataloge/category_menu_shimmer/category_menu_shimmer_widget.dart';
import '/pages/product_cataloge/category_view_shimmer/category_view_shimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'categories_with_product_model.dart';
export 'categories_with_product_model.dart';

class CategoriesWithProductWidget extends StatefulWidget {
  const CategoriesWithProductWidget({
    Key? key,
    required this.categoryId,
  }) : super(key: key);

  final int? categoryId;

  @override
  _CategoriesWithProductWidgetState createState() =>
      _CategoriesWithProductWidgetState();
}

class _CategoriesWithProductWidgetState
    extends State<CategoriesWithProductWidget> {
  late CategoriesWithProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesWithProductModel());

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.sideBarNewModel,
            updateCallback: () => setState(() {}),
            child: SideBarNewWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).appBarColor,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: wrapWithModel(
                model: _model.menuComponentModel,
                updateCallback: () => setState(() {}),
                child: MenuComponentWidget(),
              ),
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(-1.00, 0.00),
            child: Text(
              FFLocalizations.of(context).getText(
                '3vt9bm12' /* Category */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    color: FlutterFlowTheme.of(context).appBarTextColor,
                    fontSize: 23.0,
                  ),
            ),
          ),
          actions: [
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
                        onTap: () => _model.unfocusNode.canRequestFocus
                            ? FocusScope.of(context)
                                .requestFocus(_model.unfocusNode)
                            : FocusScope.of(context).unfocus(),
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: BookmarkedProductWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bookmark_border,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        decoration: BoxDecoration(),
                        child: FutureBuilder<ApiCallResponse>(
                          future: (_model.apiRequestCompleter1 ??=
                                  Completer<ApiCallResponse>()
                                    ..complete(
                                        CatalogueGroup.productCategoryCall.call(
                                      authToken: FFAppState().accessToken,
                                      domainUrl: FFAppState().DomainUrl,
                                    )))
                              .future,
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return CategoryMenuShimmerWidget();
                            }
                            final gridViewProductCategoryResponse =
                                snapshot.data!;
                            return Builder(
                              builder: (context) {
                                final categoryList =
                                    CatalogueGroup.productCategoryCall
                                            .productcategorylist(
                                              gridViewProductCategoryResponse
                                                  .jsonBody,
                                            )
                                            ?.toList() ??
                                        [];
                                return RefreshIndicator(
                                  onRefresh: () async {
                                    setState(() =>
                                        _model.apiRequestCompleter1 = null);
                                    await _model.waitForApiRequestCompleted1();
                                  },
                                  child: GridView.builder(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                      childAspectRatio: 0.7,
                                    ),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount: categoryList.length,
                                    itemBuilder: (context, categoryListIndex) {
                                      final categoryListItem =
                                          categoryList[categoryListIndex];
                                      return Container(
                                        width: 0.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: functions.equalValueCheck(
                                                    getJsonField(
                                                      categoryListItem,
                                                      r'''$.id''',
                                                    ),
                                                    _model.categoryid != 0
                                                        ? _model.categoryid
                                                        : widget.categoryId)!
                                                ? FlutterFlowTheme.of(context)
                                                    .tertiary
                                                : Color(0x00000000),
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              _model.categoryid = getJsonField(
                                                categoryListItem,
                                                r'''$.id''',
                                              );
                                            });
                                            setState(() => _model
                                                .apiRequestCompleter2 = null);
                                            await _model
                                                .waitForApiRequestCompleted2();
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.8,
                                                        height: 80.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .productBgColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      10.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.imageconverter(
                                                                  getJsonField(
                                                                    categoryListItem,
                                                                    r'''$.id''',
                                                                  ),
                                                                  'product.category',
                                                                  FFAppState().WebUrl)!,
                                                              width: 300.0,
                                                              height: 200.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            getJsonField(
                                                              categoryListItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
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
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.75,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: (_model.apiRequestCompleter2 ??=
                                      Completer<ApiCallResponse>()
                                        ..complete(CatalogueGroup
                                            .productsByCategoryCall
                                            .call(
                                          categoryId: _model.categoryid != 0
                                              ? _model.categoryid
                                              : widget.categoryId,
                                          authToken: FFAppState().accessToken,
                                          domainUrl: FFAppState().DomainUrl,
                                        )))
                                  .future,
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return CategoryViewShimmerWidget();
                                }
                                final productListGridProductsByCategoryResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final productLIst =
                                        CatalogueGroup.productsByCategoryCall
                                                .categoryproductlist(
                                                  productListGridProductsByCategoryResponse
                                                      .jsonBody,
                                                )
                                                ?.toList() ??
                                            [];
                                    if (productLIst.isEmpty) {
                                      return Center(
                                        child: Image.asset(
                                          'assets/images/New_Project_(2).png',
                                        ),
                                      );
                                    }
                                    return RefreshIndicator(
                                      onRefresh: () async {
                                        setState(() =>
                                            _model.apiRequestCompleter2 = null);
                                        await _model
                                            .waitForApiRequestCompleted2();
                                      },
                                      child: GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 0.7,
                                        ),
                                        primary: false,
                                        scrollDirection: Axis.vertical,
                                        itemCount: productLIst.length,
                                        itemBuilder:
                                            (context, productLIstIndex) {
                                          final productLIstItem =
                                              productLIst[productLIstIndex];
                                          return Container(
                                            decoration: BoxDecoration(),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.productDetails =
                                                    await CatalogueGroup
                                                        .productDetailsCall
                                                        .call(
                                                  authToken:
                                                      FFAppState().accessToken,
                                                  eq: getJsonField(
                                                    productLIstItem,
                                                    r'''$.product_products[0].id''',
                                                  ),
                                                  domainUrl:
                                                      FFAppState().DomainUrl,
                                                );
                                                if ((_model.productDetails
                                                        ?.succeeded ??
                                                    true)) {
                                                  FFAppState().update(() {
                                                    FFAppState().ProductImages =
                                                        functions
                                                            .imageAndVideoByList(
                                                                CatalogueGroup
                                                                    .productDetailsCall
                                                                    .productimage(
                                                                      (_model.productDetails
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    ?.toList())!
                                                            .toList()
                                                            .cast<dynamic>();
                                                  });

                                                  context.pushNamed(
                                                    'Product_details_new',
                                                    queryParameters: {
                                                      'id': serializeParam(
                                                        getJsonField(
                                                          productLIstItem,
                                                          r'''$.product_products[0].id''',
                                                        ),
                                                        ParamType.int,
                                                      ),
                                                      'name': serializeParam(
                                                        getJsonField(
                                                          productLIstItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'productTemplateId':
                                                          serializeParam(
                                                        getJsonField(
                                                          productLIstItem,
                                                          r'''$.id''',
                                                        ),
                                                        ParamType.int,
                                                      ),
                                                      'productName':
                                                          serializeParam(
                                                        getJsonField(
                                                          productLIstItem,
                                                          r'''$.product_products[0].id''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'variantList':
                                                          serializeParam(
                                                        CatalogueGroup
                                                                    .productDetailsCall
                                                                    .productTemp(
                                                                      (_model.productDetails
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    .length >
                                                                0
                                                            ? CatalogueGroup
                                                                .productDetailsCall
                                                                .firstVaiant(
                                                                (_model.productDetails
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                            : _model
                                                                .emptyVariant,
                                                        ParamType.int,
                                                        true,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Error While Get Data',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                }

                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          10.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child: Hero(
                                                                      tag: functions.imageconverter(
                                                                          getJsonField(
                                                                                    productLIstItem,
                                                                                    r'''$.product_images[0].id''',
                                                                                  ) !=
                                                                                  null
                                                                              ? getJsonField(
                                                                                  productLIstItem,
                                                                                  r'''$.product_images[0].id''',
                                                                                )
                                                                              : 0,
                                                                          'product.image',
                                                                          FFAppState().WebUrl)!,
                                                                      transitionOnUserGestures:
                                                                          true,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          functions.imageconverter(
                                                                              getJsonField(
                                                                                        productLIstItem,
                                                                                        r'''$.product_images[0].id''',
                                                                                      ) !=
                                                                                      null
                                                                                  ? getJsonField(
                                                                                      productLIstItem,
                                                                                      r'''$.product_images[0].id''',
                                                                                    )
                                                                                  : 0,
                                                                              'product.image',
                                                                              FFAppState().WebUrl)!,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              200.0,
                                                                          fit: BoxFit
                                                                              .contain,
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
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  functions.isNull(
                                                                      getJsonField(
                                                                    productLIstItem,
                                                                    r'''$.name''',
                                                                  ).toString()),
                                                                  '-',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 32,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
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
                      ),
                    ],
                  ),
                ),
              ),
            ]
                .addToStart(SizedBox(height: 15.0))
                .addToEnd(SizedBox(height: 15.0)),
          ),
        ),
      ),
    );
  }
}
