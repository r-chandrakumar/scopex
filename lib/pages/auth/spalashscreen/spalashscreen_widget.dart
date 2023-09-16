import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'spalashscreen_model.dart';
export 'spalashscreen_model.dart';

class SpalashscreenWidget extends StatefulWidget {
  const SpalashscreenWidget({Key? key}) : super(key: key);

  @override
  _SpalashscreenWidgetState createState() => _SpalashscreenWidgetState();
}

class _SpalashscreenWidgetState extends State<SpalashscreenWidget> {
  late SpalashscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpalashscreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));
      if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
        _model.returntoken = await UserAccessCall.call(
          authToken: FFAppState().accessToken,
          domainUrl: FFAppState().DomainUrl,
        );
        setState(() {
          FFAppState().RoleAccess = functions
              .roleAccessPushSingleArray((UserAccessCall.role(
                (_model.returntoken?.jsonBody ?? ''),
              ) as List)
                  .map<String>((s) => s.toString())
                  .toList()
                  ?.toList())!
              .toList()
              .cast<String>();
        });

        context.goNamed('CEO_Dashboard');
      } else {
        context.goNamed('Login');

        return;
      }
    });

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/home_page_screen.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
