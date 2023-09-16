import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bookmarked_product_model.dart';
export 'bookmarked_product_model.dart';

class BookmarkedProductWidget extends StatefulWidget {
  const BookmarkedProductWidget({Key? key}) : super(key: key);

  @override
  _BookmarkedProductWidgetState createState() =>
      _BookmarkedProductWidgetState();
}

class _BookmarkedProductWidgetState extends State<BookmarkedProductWidget> {
  late BookmarkedProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookmarkedProductModel());

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

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 10.0),
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
                            color: FlutterFlowTheme.of(context).appBarTextColor,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'xpki5fi4' /* Book Mark Products */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Roboto',
                              color:
                                  FlutterFlowTheme.of(context).appBarTextColor,
                              fontSize: 23.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FutureBuilder<ApiCallResponse>(
                  future: (_model.apiRequestCompleter ??=
                          Completer<ApiCallResponse>()
                            ..complete(CatalogueGroup.getBookmarkListCall.call(
                              authToken: FFAppState().accessToken,
                              domainUrl: FFAppState().DomainUrl,
                            )))
                      .future,
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xFF47E171),
                            ),
                          ),
                        ),
                      );
                    }
                    final listViewGetBookmarkListResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final bookmarkList = CatalogueGroup.getBookmarkListCall
                                .bookmarkList(
                                  listViewGetBookmarkListResponse.jsonBody,
                                )
                                ?.toList() ??
                            [];
                        if (bookmarkList.isEmpty) {
                          return Center(
                            child: Image.asset(
                              'assets/images/New_Project_(2).png',
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
                            itemCount: bookmarkList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 10.0),
                            itemBuilder: (context, bookmarkListIndex) {
                              final bookmarkListItem =
                                  bookmarkList[bookmarkListIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'Product_details_new',
                                      queryParameters: {
                                        'id': serializeParam(
                                          getJsonField(
                                            bookmarkListItem,
                                            r'''$.product_template.id''',
                                          ),
                                          ParamType.int,
                                        ),
                                        'name': serializeParam(
                                          getJsonField(
                                            bookmarkListItem,
                                            r'''$.product_template.name''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                        'productTemplateId': serializeParam(
                                          0,
                                          ParamType.int,
                                        ),
                                        'productName': serializeParam(
                                          getJsonField(
                                            bookmarkListItem,
                                            r'''$.product_template.name''',
                                          ).toString(),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 60.0,
                                          color: Color(0x0F000000),
                                          offset: Offset(0.0, 10.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .hashColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 1.0, 1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                              child: Image.network(
                                                functions.imageconverter(
                                                    getJsonField(
                                                              bookmarkListItem,
                                                              r'''$.product_template.product_template.product_images[0].id''',
                                                            ) !=
                                                            null
                                                        ? getJsonField(
                                                            bookmarkListItem,
                                                            r'''$.product_template.product_template.product_images[0].id''',
                                                          )
                                                        : 0,
                                                    'product.image',
                                                    FFAppState().WebUrl)!,
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 4.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    getJsonField(
                                                      bookmarkListItem,
                                                      r'''$.product_template.name''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .caradTextColor,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .caradTextColor,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
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
