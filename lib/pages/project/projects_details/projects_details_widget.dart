import '/backend/api_requests/api_calls.dart';
import '/components/back_buttton_component_widget.dart';
import '/drawer/side_bar_project/side_bar_project_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/project/projectdetailshimmer/projectdetailshimmer_widget.dart';
import '/pages/task/filtertask_project/filtertask_project_widget.dart';
import '/pages/task/team_assign_user/team_assign_user_widget.dart';
import '/pages/team/team_shimmer/team_shimmer_widget.dart';
import '/shimmer/projectdetailcardshimmer/projectdetailcardshimmer_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'projects_details_model.dart';
export 'projects_details_model.dart';

class ProjectsDetailsWidget extends StatefulWidget {
  const ProjectsDetailsWidget({
    Key? key,
    required this.projectid,
    required this.projectname,
    this.stageid,
  }) : super(key: key);

  final int? projectid;
  final String? projectname;
  final int? stageid;

  @override
  _ProjectsDetailsWidgetState createState() => _ProjectsDetailsWidgetState();
}

class _ProjectsDetailsWidgetState extends State<ProjectsDetailsWidget>
    with TickerProviderStateMixin {
  late ProjectsDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 50.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectsDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(FFAppState().accessToken != null &&
          FFAppState().accessToken != '')) {
        context.goNamed('Login');
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));

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
        floatingActionButton: FutureBuilder<ApiCallResponse>(
          future: HymechApiGroupGroup.projectTeamCall.call(
            authToken: FFAppState().accessToken,
            domainUrl: FFAppState().DomainUrl,
            eq: widget.projectid,
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
            final floatingActionButtonProjectTeamResponse = snapshot.data!;
            return FloatingActionButton(
              onPressed: () async {
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
                        child: TeamAssignUserWidget(
                          projectid: widget.projectid!,
                          projectname: widget.projectname!,
                          userid: HymechApiGroupGroup.projectTeamCall.userid(
                            floatingActionButtonProjectTeamResponse.jsonBody,
                          )!,
                        ),
                      ),
                    );
                  },
                ).then((value) => setState(() {}));
              },
              backgroundColor: FlutterFlowTheme.of(context).listPlusButton,
              elevation: 1.0,
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).white,
                size: 24.0,
              ),
            );
          },
        ),
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.sideBarProjectModel,
            updateCallback: () => setState(() {}),
            child: SideBarProjectWidget(),
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.projectname!.maybeHandleOverflow(maxChars: 10),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).appBarTextColor,
                        fontSize: 23.0,
                      ),
                ),
              ),
              InkWell(
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
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.5,
                            child: FiltertaskProjectWidget(
                              id: widget.projectid!,
                              name: widget.projectname!,
                              stageid: widget.stageid!,
                            ),
                          ),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: Icon(
                  Icons.filter_list_sharp,
                  color: FlutterFlowTheme.of(context).appBarTextColor,
                  size: 24.0,
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 12.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: HymechApiGroupGroup.projectInfoCall.call(
                    authToken: FFAppState().accessToken,
                    id: widget.projectid,
                    domainUrl: FFAppState().DomainUrl,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return ProjectdetailcardshimmerWidget();
                    }
                    final containerProjectInfoResponse = snapshot.data!;
                    return Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 60.0,
                            color: Color(0x0F000000),
                            offset: Offset(0.0, 10.0),
                            spreadRadius: 0.0,
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).hashColor,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            child: Image.asset(
                                              'assets/images/profile_image.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              HymechApiGroupGroup
                                                  .projectInfoCall
                                                  .assignee(
                                                    containerProjectInfoResponse
                                                        .jsonBody,
                                                  )
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .appBarTextColor,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            child: Image.asset(
                                              'assets/images/Vector.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dr38oorz' /* Task :  */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .appBarTextColor,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            HymechApiGroupGroup.projectInfoCall
                                                .count(
                                                  containerProjectInfoResponse
                                                      .jsonBody,
                                                )
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .appBarTextColor,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'l0k6f3zf' /* Start Date  :   */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            HymechApiGroupGroup.projectInfoCall
                                                            .enddate(
                                                              containerProjectInfoResponse
                                                                  .jsonBody,
                                                            )
                                                            .toString() !=
                                                        null &&
                                                    HymechApiGroupGroup
                                                            .projectInfoCall
                                                            .enddate(
                                                              containerProjectInfoResponse
                                                                  .jsonBody,
                                                            )
                                                            .toString() !=
                                                        ''
                                                ? functions.convertDateFormat(
                                                    HymechApiGroupGroup
                                                        .projectInfoCall
                                                        .datestart(
                                                          containerProjectInfoResponse
                                                              .jsonBody,
                                                        )
                                                        .toString())
                                                : '-',
                                            '-',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
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
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!);
                  },
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle: FlutterFlowTheme.of(context).titleMedium,
                        unselectedLabelStyle: TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'v1ns09oy' /* Tasks */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              '22u44r9i' /* Teams */,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                1.0, 0.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: HymechApiGroupGroup.taskListCall.call(
                                authToken: FFAppState().accessToken,
                                projectId: widget.projectid,
                                domainUrl: FFAppState().DomainUrl,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return ProjectdetailshimmerWidget();
                                }
                                final listViewTaskListResponse = snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final projectTask = getJsonField(
                                      listViewTaskListResponse.jsonBody,
                                      r'''$.project_task''',
                                    ).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: projectTask.length,
                                      itemBuilder: (context, projectTaskIndex) {
                                        final projectTaskItem =
                                            projectTask[projectTaskIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 12.0, 15.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'TaskDetails',
                                                queryParameters: {
                                                  'taskid': serializeParam(
                                                    getJsonField(
                                                      projectTaskItem,
                                                      r'''$.id''',
                                                    ),
                                                    ParamType.int,
                                                  ),
                                                  'taskname': serializeParam(
                                                    getJsonField(
                                                      projectTaskItem,
                                                      r'''$.name''',
                                                    ).toString(),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 60.0,
                                                    color: Color(0x0F000000),
                                                    offset: Offset(0.0, 10.0),
                                                    spreadRadius: 0.0,
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .hashColor,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        5.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  getJsonField(
                                                                    projectTaskItem,
                                                                    r'''$.name''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .cardHeading,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                ),
                                                                if (functions
                                                                        .findListCount(
                                                                            getJsonField(
                                                                      projectTaskItem,
                                                                      r'''$.account_analytic_lines''',
                                                                    ))! >
                                                                    0)
                                                                  Container(
                                                                    width: 10.0,
                                                                    height:
                                                                        10.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFF28A745),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15.0),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (functions
                                                                .jsonToString(
                                                                    getJsonField(
                                                              projectTaskItem,
                                                              r'''$.resUserByUserId.res_partner.name''',
                                                            )) !=
                                                            'null')
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/profile_image.png',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          projectTaskItem,
                                                                          r'''$.resUserByUserId.res_partner.name''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: FlutterFlowTheme.of(context).cardHeading,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          RatingBarIndicator(
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    Icon(
                                                              Icons
                                                                  .star_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiary,
                                                            ),
                                                            direction:
                                                                Axis.horizontal,
                                                            rating:
                                                                getJsonField(
                                                                          projectTaskItem,
                                                                          r'''$.priority''',
                                                                        ) !=
                                                                        null
                                                                    ? functions
                                                                        .convertstringtoDouble(
                                                                            getJsonField(
                                                                        projectTaskItem,
                                                                        r'''$.priority''',
                                                                      ).toString())!
                                                                    : 0.0,
                                                            unratedColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent3,
                                                            itemCount: 3,
                                                            itemSize: 14.0,
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 100.0,
                                                                height: 30.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            12.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            12.0),
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .btnColor1,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
                                                                            5.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .isNull(getJsonField(
                                                                          projectTaskItem,
                                                                          r'''$.project_task_type.name''',
                                                                        ).toString()),
                                                                        'null',
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
                                                                            color:
                                                                                FlutterFlowTheme.of(context).appBarTextColor,
                                                                            fontSize:
                                                                                12.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
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
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation2']!),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: HymechApiGroupGroup.projectTeamCall.call(
                              authToken: FFAppState().accessToken,
                              domainUrl: FFAppState().DomainUrl,
                              eq: widget.projectid,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return TeamShimmerWidget();
                              }
                              final listViewProjectTeamResponse =
                                  snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final projectTeams = getJsonField(
                                    listViewProjectTeamResponse.jsonBody,
                                    r'''$.project_project[0].project_user_rels''',
                                  ).toList();
                                  if (projectTeams.isEmpty) {
                                    return Center(
                                      child: Image.asset(
                                        'assets/images/cloud_data_found_(2).png',
                                        fit: BoxFit.contain,
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
                                    itemCount: projectTeams.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 10.0),
                                    itemBuilder: (context, projectTeamsIndex) {
                                      final projectTeamsItem =
                                          projectTeams[projectTeamsIndex];
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
                                              'user_task_dashboard',
                                              queryParameters: {
                                                'userid': serializeParam(
                                                  getJsonField(
                                                    projectTeamsItem,
                                                    r'''$.user_id''',
                                                  ),
                                                  ParamType.int,
                                                ),
                                                'username': serializeParam(
                                                  getJsonField(
                                                    projectTeamsItem,
                                                    r'''$.res_user.res_partner.name''',
                                                  ).toString(),
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 60.0,
                                                  color: Color(0x0F000000),
                                                  offset: Offset(0.0, 10.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .hashColor,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            child: custom_widgets
                                                                .TeamMemberImage(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              userid:
                                                                  getJsonField(
                                                                projectTeamsItem,
                                                                r'''$.res_user.res_partner.id''',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            AutoSizeText(
                                                              getJsonField(
                                                                projectTeamsItem,
                                                                r'''$.res_user.res_partner.name''',
                                                              )
                                                                  .toString()
                                                                  .maybeHandleOverflow(
                                                                    maxChars:
                                                                        32,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .rgb,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              tabletLandscape:
                                                                  false,
                                                              desktop: false,
                                                            ))
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    projectTeamsItem,
                                                                    r'''$.res_user.res_partner.email''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Expanded(
                                                      flex: 2,
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0n3zw142' /* user@domain.com */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                  ))
                                                    Expanded(
                                                      child: Text(
                                                        dateTimeFormat(
                                                          'relative',
                                                          getCurrentTimestamp,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                  ))
                                                    Expanded(
                                                      child: Text(
                                                        dateTimeFormat(
                                                          'yMMMd',
                                                          getCurrentTimestamp,
                                                          locale:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .languageCode,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
