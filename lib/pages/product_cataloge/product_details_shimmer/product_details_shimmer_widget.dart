import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_details_shimmer_model.dart';
export 'product_details_shimmer_model.dart';

class ProductDetailsShimmerWidget extends StatefulWidget {
  const ProductDetailsShimmerWidget({Key? key}) : super(key: key);

  @override
  _ProductDetailsShimmerWidgetState createState() =>
      _ProductDetailsShimmerWidgetState();
}

class _ProductDetailsShimmerWidgetState
    extends State<ProductDetailsShimmerWidget> with TickerProviderStateMixin {
  late ProductDetailsShimmerModel _model;

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
    'imageOnPageLoadAnimation5': AnimationInfo(
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
    'imageOnPageLoadAnimation6': AnimationInfo(
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
    'imageOnPageLoadAnimation7': AnimationInfo(
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailsShimmerModel());

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
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.6,
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
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation1']!),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Container(
                    width: 50.0,
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
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation2']!),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Container(
                    width: 50.0,
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
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation3']!),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 5.0)),
            ),
          ].divide(SizedBox(width: 10.0)),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
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
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation4']!),
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
        Divider(
          thickness: 1.0,
          color: FlutterFlowTheme.of(context).accent4,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.4,
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
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation5']!),
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
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
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
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation6']!),
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
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
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
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ).animateOnPageLoad(
                                animationsMap['imageOnPageLoadAnimation7']!),
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
    );
  }
}
