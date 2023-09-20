import '/backend/api_requests/api_calls.dart';
import '/drawer/p_d_f_view/p_d_f_view_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'catalouge_annexure_model.dart';
export 'catalouge_annexure_model.dart';

class CatalougeAnnexureWidget extends StatefulWidget {
  const CatalougeAnnexureWidget({
    Key? key,
    required this.productid,
  }) : super(key: key);

  final int? productid;

  @override
  _CatalougeAnnexureWidgetState createState() =>
      _CatalougeAnnexureWidgetState();
}

class _CatalougeAnnexureWidgetState extends State<CatalougeAnnexureWidget> {
  late CatalougeAnnexureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CatalougeAnnexureModel());

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

    return Align(
      alignment: AlignmentDirectional(0.00, 1.00),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.5,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'ef3q9sf6' /* Document's */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).rgb,
                                    fontSize: 23.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  FutureBuilder<ApiCallResponse>(
                    future: CatalogueGroup.productDetailsCall.call(
                      authToken: FFAppState().accessToken,
                      eq: widget.productid,
                      domainUrl: FFAppState().DomainUrl,
                    ),
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
                      final listViewProductDetailsResponse = snapshot.data!;
                      return Builder(
                        builder: (context) {
                          final annexereList = CatalogueGroup.productDetailsCall
                                  .annexure(
                                    listViewProductDetailsResponse.jsonBody,
                                  )
                                  ?.toList() ??
                              [];
                          return ListView.separated(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              15.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: annexereList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 10.0),
                            itemBuilder: (context, annexereListIndex) {
                              final annexereListItem =
                                  annexereList[annexereListIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            getJsonField(
                                              annexereListItem,
                                              r'''$.ir_attachment.name''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 15.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    useSafeArea: true,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: PDFViewWidget(
                                                          pdfurl: functions
                                                              .convertAttachmentUrl(
                                                                  FFAppState()
                                                                      .WebUrl,
                                                                  getJsonField(
                                                                    annexereListItem,
                                                                    r'''$.ir_attachment.id''',
                                                                  ),
                                                                  'ir.attachment')!,
                                                          title: getJsonField(
                                                            annexereListItem,
                                                            r'''$.ir_attachment.name''',
                                                          ).toString(),
                                                          shareFile: true,
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                child: Icon(
                                                  Icons.remove_red_eye,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.fileDownloadResult =
                                                    await actions
                                                        .downloadPdfFromUrl(
                                                  context,
                                                  functions
                                                      .convertAttachmentUrl(
                                                          FFAppState().WebUrl,
                                                          getJsonField(
                                                            annexereListItem,
                                                            r'''$.ir_attachment.id''',
                                                          ),
                                                          'ir.attachment'),
                                                  getJsonField(
                                                    annexereListItem,
                                                    r'''$.ir_attachment.name''',
                                                  ).toString(),
                                                );

                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.download_for_offline,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Builder(
                                              builder: (context) => Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await Share.share(
                                                      functions
                                                          .convertAttachmentUrl(
                                                              FFAppState()
                                                                  .WebUrl,
                                                              getJsonField(
                                                                annexereListItem,
                                                                r'''$.ir_attachment.id''',
                                                              ),
                                                              'ir.attachment')!,
                                                      sharePositionOrigin:
                                                          getWidgetBoundingBox(
                                                              context),
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.share_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 5.0,
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .inputtextColor,
                                  ),
                                ],
                              );
                            },
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
      ),
    );
  }
}
