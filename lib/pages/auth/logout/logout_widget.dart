import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logout_model.dart';
export 'logout_model.dart';

class LogoutWidget extends StatefulWidget {
  const LogoutWidget({Key? key}) : super(key: key);

  @override
  _LogoutWidgetState createState() => _LogoutWidgetState();
}

class _LogoutWidgetState extends State<LogoutWidget> {
  late LogoutModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoutModel());

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

    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 30.0,
      borderWidth: 1.0,
      buttonSize: 60.0,
      icon: Icon(
        Icons.logout,
        color: Colors.black,
        size: 30.0,
      ),
      onPressed: () async {
        FFAppState().update(() {
          FFAppState().loginid = 0;
          FFAppState().accessToken = '';
          FFAppState().username = 'user';
        });

        context.goNamed('Login');
      },
    );
  }
}
