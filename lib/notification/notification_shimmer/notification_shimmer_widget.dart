import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_shimmer_model.dart';
export 'notification_shimmer_model.dart';

class NotificationShimmerWidget extends StatefulWidget {
  const NotificationShimmerWidget({Key? key}) : super(key: key);

  @override
  _NotificationShimmerWidgetState createState() =>
      _NotificationShimmerWidgetState();
}

class _NotificationShimmerWidgetState extends State<NotificationShimmerWidget>
    with TickerProviderStateMixin {
  late NotificationShimmerModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 40.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 40.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation1': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation4': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation5': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation6': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation7': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation8': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation9': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation10': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation11': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation12': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation13': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation14': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation15': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation16': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation17': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation18': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation19': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation20': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation21': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation22': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation23': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation24': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation25': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation26': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation27': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationShimmerModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 120.0,
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
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation1']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation2']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation3']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation4']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation5']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation6']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation7']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation8']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation9']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation10']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation11']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation12']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation13']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation14']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation15']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation16']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation17']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation18']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation19']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation20']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation21']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation22']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation23']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation24']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCDD1D4),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 0.00),
                                        child: Transform.rotate(
                                          angle: 2.4435,
                                          child: Image.asset(
                                            'assets/images/shimmer-white.jpg',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.888,
                                            height: 31.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation25']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation26']!),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Container(
                                              width: 200.0,
                                              height: 12.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFCDD1D4),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: ClipRect(
                                                  child: ImageFiltered(
                                                    imageFilter:
                                                        ImageFilter.blur(
                                                      sigmaX: 6.0,
                                                      sigmaY: 6.0,
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 1.00),
                                                      child: Transform.rotate(
                                                        angle: 1.9199,
                                                        child: Image.asset(
                                                          'assets/images/image-shimmer.png',
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'imageOnPageLoadAnimation27']!),
                                                      ),
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        ],
      ),
    );
  }
}
