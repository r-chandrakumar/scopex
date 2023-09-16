// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TeamMemberImage extends StatefulWidget {
  const TeamMemberImage({
    Key? key,
    this.width,
    this.height,
    this.userid,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int? userid;

  @override
  _TeamMemberImageState createState() => _TeamMemberImageState();
}

class _TeamMemberImageState extends State<TeamMemberImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          'https://hymech.mo.vc/web/image?model=res.partner&id=${widget.userid}&field=image_128',
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
