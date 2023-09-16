import '/backend/api_requests/api_calls.dart';
import '/components/contact_list_shimmer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_list_search_model.dart';
export 'contact_list_search_model.dart';

class ContactListSearchWidget extends StatefulWidget {
  const ContactListSearchWidget({Key? key}) : super(key: key);

  @override
  _ContactListSearchWidgetState createState() =>
      _ContactListSearchWidgetState();
}

class _ContactListSearchWidgetState extends State<ContactListSearchWidget> {
  late ContactListSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactListSearchModel());

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
                                _model.search = _model.textController.text;
                              });
                              setState(() => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                          ),
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'icb0wxwh' /* Search... */,
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
                                        _model.search =
                                            _model.textController.text;
                                      });
                                      setState(() =>
                                          _model.apiRequestCompleter = null);
                                      await _model.waitForApiRequestCompleted();
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FutureBuilder<ApiCallResponse>(
                  future: (_model
                          .apiRequestCompleter ??= Completer<ApiCallResponse>()
                        ..complete(ContactApiGroupGroup.contactSearchCall.call(
                          authToken: FFAppState().accessToken,
                          name: functions.emptyfunction(_model.search),
                          domainUrl: FFAppState().DomainUrl,
                        )))
                      .future,
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return ContactListShimmerWidget();
                    }
                    final listViewContactSearchResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final contactListsApi =
                            ContactApiGroupGroup.contactSearchCall
                                    .contactList(
                                      listViewContactSearchResponse.jsonBody,
                                    )
                                    ?.toList() ??
                                [];
                        if (contactListsApi.isEmpty) {
                          return Center(
                            child: Image.asset(
                              'assets/images/3009287.jpg',
                              width: 100.0,
                              height: 100.0,
                            ),
                          );
                        }
                        return ListView.builder(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            15.0,
                            0,
                            15.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: contactListsApi.length,
                          itemBuilder: (context, contactListsApiIndex) {
                            final contactListsApiItem =
                                contactListsApi[contactListsApiIndex];
                            return Container(
                              width: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
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
                                            label: FFLocalizations.of(context)
                                                .getText(
                                              'bnv0c1us' /* call */,
                                            ),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .orangeColor1,
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
                                            functions.nullcheckforDisplay(
                                                getJsonField(
                                              contactListsApiItem,
                                              r'''$.name''',
                                            ).toString()),
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .caradTextColor,
                                                fontSize: 14.0,
                                              ),
                                        ),
                                        subtitle: Text(
                                          valueOrDefault<String>(
                                            functions.nullcheckforDisplay(
                                                getJsonField(
                                              contactListsApiItem,
                                              r'''$.mobile''',
                                            ).toString()),
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .caradTextColor,
                                                fontSize: 14.0,
                                              ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        dense: false,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Divider(
                                        height: 10.0,
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .hashColor,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
    );
  }
}
