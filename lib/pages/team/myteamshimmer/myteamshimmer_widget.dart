import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'myteamshimmer_model.dart';
export 'myteamshimmer_model.dart';

class MyteamshimmerWidget extends StatefulWidget {
  const MyteamshimmerWidget({Key? key}) : super(key: key);

  @override
  _MyteamshimmerWidgetState createState() => _MyteamshimmerWidgetState();
}

class _MyteamshimmerWidgetState extends State<MyteamshimmerWidget>
    with TickerProviderStateMixin {
  late MyteamshimmerModel _model;

  final animationsMap = {
    'circleImageOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.5,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 1000.ms,
          begin: Offset(0.0, 200.0),
          end: Offset(0.0, -200.0),
        ),
      ],
    ),
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyteamshimmerModel());

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
      height: 150.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFCDD1D4),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: ClipRect(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 6.0,
                            sigmaY: 6.0,
                          ),
                          child: Transform.rotate(
                            angle: 1.9199,
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/circle.png',
                                fit: BoxFit.cover,
                              ),
                            ).animateOnPageLoad(animationsMap[
                                'circleImageOnPageLoadAnimation']!),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 5.0),
                      child: Container(
                        width: 180.0,
                        height: 18.0,
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
                              alignment: AlignmentDirectional(0.00, 1.00),
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
                      child: Container(
                        width: 180.0,
                        height: 18.0,
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
                              alignment: AlignmentDirectional(0.00, 1.00),
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
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
