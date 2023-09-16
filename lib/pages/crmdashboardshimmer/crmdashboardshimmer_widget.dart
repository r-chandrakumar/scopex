import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'crmdashboardshimmer_model.dart';
export 'crmdashboardshimmer_model.dart';

class CrmdashboardshimmerWidget extends StatefulWidget {
  const CrmdashboardshimmerWidget({Key? key}) : super(key: key);

  @override
  _CrmdashboardshimmerWidgetState createState() =>
      _CrmdashboardshimmerWidgetState();
}

class _CrmdashboardshimmerWidgetState extends State<CrmdashboardshimmerWidget>
    with TickerProviderStateMixin {
  late CrmdashboardshimmerModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
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
          delay: 0.ms,
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
    'imageOnPageLoadAnimation3': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
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
    'imageOnPageLoadAnimation4': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
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
          delay: 450.ms,
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrmdashboardshimmerModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).f5F2FCTo1e1e1e,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 16.0, 15.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 2.0, 10.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.2,
                              height: 20.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDD1D4),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ClipRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 6.0,
                                    sigmaY: 6.0,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Transform.rotate(
                                      angle: 2.4435,
                                      child: Image.asset(
                                        'assets/images/shimmer-white.jpg',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 2.0, 0.0),
                            child: Container(
                              height: 20.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFCDD1D4),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: ClipRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 6.0,
                                    sigmaY: 6.0,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Transform.rotate(
                                      angle: 2.4435,
                                      child: Image.asset(
                                        'assets/images/shimmer-white.jpg',
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 31.0,
                                        fit: BoxFit.cover,
                                      ).animateOnPageLoad(animationsMap[
                                          'imageOnPageLoadAnimation2']!),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 2.0, 10.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFCDD1D4),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: ClipRect(
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(
                                  sigmaX: 6.0,
                                  sigmaY: 6.0,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Transform.rotate(
                                    angle: 2.4435,
                                    child: Image.asset(
                                      'assets/images/shimmer-white.jpg',
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 31.0,
                                      fit: BoxFit.cover,
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation3']!),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 2.0, 10.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFCDD1D4),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: ClipRect(
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(
                                  sigmaX: 6.0,
                                  sigmaY: 6.0,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Transform.rotate(
                                    angle: 2.4435,
                                    child: Image.asset(
                                      'assets/images/shimmer-white.jpg',
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 2.0, 10.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.08,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFCDD1D4),
                              borderRadius: BorderRadius.circular(500.0),
                            ),
                            child: ClipRect(
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(
                                  sigmaX: 6.0,
                                  sigmaY: 6.0,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Transform.rotate(
                                    angle: 2.4435,
                                    child: Image.asset(
                                      'assets/images/shimmer-white.jpg',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.888,
                                      height: 31.0,
                                      fit: BoxFit.cover,
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation5']!),
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
