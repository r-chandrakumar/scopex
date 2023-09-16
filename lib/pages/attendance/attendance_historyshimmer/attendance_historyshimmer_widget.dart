import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'attendance_historyshimmer_model.dart';
export 'attendance_historyshimmer_model.dart';

class AttendanceHistoryshimmerWidget extends StatefulWidget {
  const AttendanceHistoryshimmerWidget({Key? key}) : super(key: key);

  @override
  _AttendanceHistoryshimmerWidgetState createState() =>
      _AttendanceHistoryshimmerWidgetState();
}

class _AttendanceHistoryshimmerWidgetState
    extends State<AttendanceHistoryshimmerWidget>
    with TickerProviderStateMixin {
  late AttendanceHistoryshimmerModel _model;

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
    'imageOnPageLoadAnimation8': AnimationInfo(
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
    'imageOnPageLoadAnimation9': AnimationInfo(
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
    'imageOnPageLoadAnimation10': AnimationInfo(
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
    'imageOnPageLoadAnimation11': AnimationInfo(
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
    'imageOnPageLoadAnimation12': AnimationInfo(
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
    'imageOnPageLoadAnimation13': AnimationInfo(
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
    'imageOnPageLoadAnimation14': AnimationInfo(
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
    'imageOnPageLoadAnimation15': AnimationInfo(
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
    'imageOnPageLoadAnimation16': AnimationInfo(
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
    'imageOnPageLoadAnimation17': AnimationInfo(
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
    'imageOnPageLoadAnimation18': AnimationInfo(
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
    'imageOnPageLoadAnimation19': AnimationInfo(
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
    'imageOnPageLoadAnimation20': AnimationInfo(
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
    'imageOnPageLoadAnimation21': AnimationInfo(
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
    'imageOnPageLoadAnimation22': AnimationInfo(
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
    'imageOnPageLoadAnimation23': AnimationInfo(
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
    'imageOnPageLoadAnimation24': AnimationInfo(
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
    'imageOnPageLoadAnimation25': AnimationInfo(
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
    'imageOnPageLoadAnimation26': AnimationInfo(
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
    'imageOnPageLoadAnimation27': AnimationInfo(
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
    'imageOnPageLoadAnimation28': AnimationInfo(
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
    'imageOnPageLoadAnimation29': AnimationInfo(
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
    'imageOnPageLoadAnimation30': AnimationInfo(
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
    'imageOnPageLoadAnimation31': AnimationInfo(
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
    'imageOnPageLoadAnimation32': AnimationInfo(
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
    'imageOnPageLoadAnimation33': AnimationInfo(
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
    'imageOnPageLoadAnimation34': AnimationInfo(
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
    'imageOnPageLoadAnimation35': AnimationInfo(
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
    'imageOnPageLoadAnimation36': AnimationInfo(
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
    'imageOnPageLoadAnimation37': AnimationInfo(
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
    'imageOnPageLoadAnimation38': AnimationInfo(
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
    'imageOnPageLoadAnimation39': AnimationInfo(
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
    'imageOnPageLoadAnimation40': AnimationInfo(
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
    'imageOnPageLoadAnimation41': AnimationInfo(
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
    'imageOnPageLoadAnimation42': AnimationInfo(
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
    'imageOnPageLoadAnimation43': AnimationInfo(
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
    'imageOnPageLoadAnimation44': AnimationInfo(
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
    'imageOnPageLoadAnimation45': AnimationInfo(
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
    'imageOnPageLoadAnimation46': AnimationInfo(
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
    'imageOnPageLoadAnimation47': AnimationInfo(
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
    'imageOnPageLoadAnimation48': AnimationInfo(
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
    'imageOnPageLoadAnimation49': AnimationInfo(
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
    'imageOnPageLoadAnimation50': AnimationInfo(
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
    'imageOnPageLoadAnimation51': AnimationInfo(
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
    'imageOnPageLoadAnimation52': AnimationInfo(
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
    'imageOnPageLoadAnimation53': AnimationInfo(
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
    'imageOnPageLoadAnimation54': AnimationInfo(
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
    'imageOnPageLoadAnimation55': AnimationInfo(
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
    'imageOnPageLoadAnimation56': AnimationInfo(
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
    'imageOnPageLoadAnimation57': AnimationInfo(
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
    'imageOnPageLoadAnimation58': AnimationInfo(
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
    'imageOnPageLoadAnimation59': AnimationInfo(
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
    'imageOnPageLoadAnimation60': AnimationInfo(
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
    _model = createModel(context, () => AttendanceHistoryshimmerModel());

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
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation34']!),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation35']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation36']!),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation37']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation38']!),
                                              ),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation39']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation40']!),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation41']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation42']!),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation43']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation44']!),
                                              ),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation45']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation46']!),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation47']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation48']!),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation49']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation50']!),
                                              ),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation51']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation52']!),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation53']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation54']!),
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
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 13.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(11.0),
                    border: Border.all(
                      color: Color(0xFFD1E2EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(17.0, 18.0, 17.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
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
                                        alignment:
                                            AlignmentDirectional(0.00, 1.00),
                                        child: Transform.rotate(
                                          angle: 1.9199,
                                          child: Image.asset(
                                            'assets/images/image-shimmer.png',
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ).animateOnPageLoad(animationsMap[
                                              'imageOnPageLoadAnimation55']!),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 18.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFCDD1D4),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
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
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation56']!),
                                              ),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation57']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation58']!),
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
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                6.0, 0.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation59']!),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
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
                                          alignment:
                                              AlignmentDirectional(0.00, 1.00),
                                          child: Transform.rotate(
                                            angle: 1.9199,
                                            child: Image.asset(
                                              'assets/images/image-shimmer.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 100.0,
                                              fit: BoxFit.cover,
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation60']!),
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
        ),
      ],
    );
  }
}
