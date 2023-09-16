import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_down_empty_full_width_model.dart';
export 'drop_down_empty_full_width_model.dart';

class DropDownEmptyFullWidthWidget extends StatefulWidget {
  const DropDownEmptyFullWidthWidget({Key? key}) : super(key: key);

  @override
  _DropDownEmptyFullWidthWidgetState createState() =>
      _DropDownEmptyFullWidthWidgetState();
}

class _DropDownEmptyFullWidthWidgetState
    extends State<DropDownEmptyFullWidthWidget> with TickerProviderStateMixin {
  late DropDownEmptyFullWidthModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
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
    _model = createModel(context, () => DropDownEmptyFullWidthModel());

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
      width: 160.0,
      height: 30.0,
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
              ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            ),
          ),
        ),
      ),
    );
  }
}
