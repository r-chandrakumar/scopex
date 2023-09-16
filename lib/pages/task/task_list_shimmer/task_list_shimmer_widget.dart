import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'task_list_shimmer_model.dart';
export 'task_list_shimmer_model.dart';

class TaskListShimmerWidget extends StatefulWidget {
  const TaskListShimmerWidget({Key? key}) : super(key: key);

  @override
  _TaskListShimmerWidgetState createState() => _TaskListShimmerWidgetState();
}

class _TaskListShimmerWidgetState extends State<TaskListShimmerWidget>
    with TickerProviderStateMixin {
  late TaskListShimmerModel _model;

  final animationsMap = {
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
          delay: 0.ms,
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
          delay: 0.ms,
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
          delay: 0.ms,
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
          delay: 0.ms,
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
          delay: 0.ms,
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
          delay: 0.ms,
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
          delay: 0.ms,
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
          delay: 0.ms,
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
          delay: 0.ms,
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
    'imageOnPageLoadAnimation28': AnimationInfo(
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
    'imageOnPageLoadAnimation29': AnimationInfo(
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
    'imageOnPageLoadAnimation30': AnimationInfo(
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
    'imageOnPageLoadAnimation31': AnimationInfo(
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
    'imageOnPageLoadAnimation32': AnimationInfo(
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
    'imageOnPageLoadAnimation33': AnimationInfo(
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
    _model = createModel(context, () => TaskListShimmerModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation1']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation2']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation3']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation4']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation5']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation6']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation7']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation8']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation9']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation10']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation11']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation12']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation13']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation14']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation15']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation16']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation17']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation18']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation19']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation20']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation21']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation22']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation23']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation24']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation25']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation26']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation27']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation28']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation29']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation30']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 5.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 18.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFCDD1D4),
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 6.0,
                                              sigmaY: 6.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 1.00),
                                              child: Transform.rotate(
                                                angle: 1.9199,
                                                child: Image.asset(
                                                  'assets/images/image-shimmer.png',
                                                  width: 100.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation31']!),
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
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 180.0,
                                height: 18.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation32']!),
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
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 4.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFCDD1D4),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRect(
                                    child: ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                        sigmaX: 6.0,
                                        sigmaY: 6.0,
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation33']!),
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
