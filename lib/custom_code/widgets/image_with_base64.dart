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

import 'dart:convert';
import 'dart:typed_data';

class ImageWithBase64 extends StatefulWidget {
  const ImageWithBase64({
    Key? key,
    this.width,
    this.height,
    required this.base64string,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String base64string;

  @override
  _ImageWithBase64State createState() => _ImageWithBase64State();
}

class _ImageWithBase64State extends State<ImageWithBase64> {
  @override
  @override
  Widget build(BuildContext context) {
    Uint8List bytesImage = const Base64Decoder().convert(widget.base64string);
    return Center(child: Image.memory(bytesImage, width: 200, height: 200));
  }
}
