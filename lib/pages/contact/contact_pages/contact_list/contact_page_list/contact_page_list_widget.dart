import '/backend/api_requests/api_calls.dart';
import '/components/contact_list_shimmer_widget.dart';
import '/components/fillter_icon_widget.dart';
import '/components/menu_component_widget.dart';
import '/components/search_icon_widget.dart';
import '/drawer/side_bar_new/side_bar_new_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/notification/notification_icon/notification_icon_widget.dart';
import '/notification/notification_list/notification_list_widget.dart';
import '/pages/contact/contact_pages/contact_list/contact_filter/contact_filter_widget.dart';
import '/pages/contact/contact_pages/contact_list/contact_list_search/contact_list_search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_page_list_model.dart';
export 'contact_page_list_model.dart';

class ContactPageListWidget extends StatefulWidget {
  const ContactPageListWidget({
    Key? key,
    required this.contactType,
  }) : super(key: key);

  final String? contactType;

  @override
  _ContactPageListWidgetState createState() => _ContactPageListWidgetState();
}

class _ContactPageListWidgetState extends State<ContactPageListWidget> {
  late ContactPageListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactPageListModel());

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
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            FFAppState().update(() {
              FFAppState().productAddItem = [];
              FFAppState().taxJson = null;
              FFAppState().CustomerSearch = null;
            });

            context.pushNamed('contact_create_page');
          },
          backgroundColor: FlutterFlowTheme.of(context).listPlusButton,
          elevation: 0.0,
          child: Icon(
            Icons.add_sharp,
            color: FlutterFlowTheme.of(context).white,
            size: 24.0,
          ),
        ),
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
                'jrtqfx8u' /* Contact List  */,
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 13.0),
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
                          child: NotificationListWidget(),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.notificationIconModel,
                        updateCallback: () => setState(() {}),
                        child: NotificationIconWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
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
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              child: ContactFilterWidget(
                                contactType: widget.contactType!,
                              ),
                            ),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.fillterIconModel,
                        updateCallback: () => setState(() {}),
                        child: FillterIconWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
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
                            child: ContactListSearchWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.searchIconModel,
                        updateCallback: () => setState(() {}),
                        child: SearchIconWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: RefreshIndicator(
              onRefresh: () async {
                setState(() => _model.listViewPagingController?.refresh());
                await _model.waitForOnePageForListView();
              },
              child: PagedListView<ApiPagingParams, dynamic>(
                pagingController: _model.setListViewController(
                  (nextPageMarker) =>
                      ContactApiGroupGroup.contactsListCall.call(
                    authToken: FFAppState().accessToken,
                    limit: 20,
                    offset: nextPageMarker.numItems,
                    customerRank: () {
                      if (widget.contactType == 'all') {
                        return 0;
                      } else if (widget.contactType == 'customer') {
                        return 1;
                      } else if (widget.contactType == 'supplier') {
                        return 0;
                      } else {
                        return 1;
                      }
                    }(),
                    supplierRank: () {
                      if (widget.contactType == 'all') {
                        return 0;
                      } else if (widget.contactType == 'customer') {
                        return 0;
                      } else if (widget.contactType == 'supplier') {
                        return 1;
                      } else {
                        return 1;
                      }
                    }(),
                    domainUrl: FFAppState().DomainUrl,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  75.0,
                ),
                shrinkWrap: true,
                reverse: false,
                scrollDirection: Axis.vertical,
                builderDelegate: PagedChildBuilderDelegate<dynamic>(
                  // Customize what your widget looks like when it's loading the first page.
                  firstPageProgressIndicatorBuilder: (_) =>
                      ContactListShimmerWidget(),
                  // Customize what your widget looks like when it's loading another page.
                  newPageProgressIndicatorBuilder: (_) =>
                      ContactListShimmerWidget(),
                  noItemsFoundIndicatorBuilder: (_) => Center(
                    child: Image.asset(
                      'assets/images/New_Project_(2).png',
                      width: 200.0,
                      height: 200.0,
                    ),
                  ),
                  itemBuilder: (context, _, contactListsApiIndex) {
                    final contactListsApiItem = _model.listViewPagingController!
                        .itemList![contactListsApiIndex];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Contact_view_page_new',
                              queryParameters: {
                                'id': serializeParam(
                                  getJsonField(
                                    contactListsApiItem,
                                    r'''$.id''',
                                  ),
                                  ParamType.int,
                                ),
                                'name': serializeParam(
                                  getJsonField(
                                    contactListsApiItem,
                                    r'''$.name''',
                                  ).toString(),
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              extentRatio: 0.25,
                              children: [
                                SlidableAction(
                                  label: FFLocalizations.of(context).getText(
                                    'gbdcqqd9' /* call */,
                                  ),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).orangeColor1,
                                  icon: Icons.call,
                                  onPressed: (_) async {
                                    await launchUrl(Uri(
                                      scheme: 'tel',
                                      path: getJsonField(
                                        contactListsApiItem,
                                        r'''$.mobile''',
                                      ).toString(),
                                    ));
                                  },
                                ),
                              ],
                            ),
                            child: ListTile(
                              title: Text(
                                valueOrDefault<String>(
                                  functions.nullcheckforDisplay(getJsonField(
                                    contactListsApiItem,
                                    r'''$.name''',
                                  ).toString()),
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .caradTextColor,
                                      fontSize: 15.0,
                                    ),
                              ),
                              subtitle: Text(
                                valueOrDefault<String>(
                                  functions.nullcheckforDisplay(getJsonField(
                                    contactListsApiItem,
                                    r'''$.mobile''',
                                  ).toString()),
                                  '-',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .inputtextColor,
                                      fontSize: 11.0,
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
