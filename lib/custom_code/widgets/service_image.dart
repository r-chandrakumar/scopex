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

class ServiceImage extends StatefulWidget {
  const ServiceImage({
    Key? key,
    this.width,
    this.height,
    this.productid,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int? productid;

  @override
  _ServiceImageState createState() => _ServiceImageState();
}

class _ServiceImageState extends State<ServiceImage> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(12),
        topLeft: Radius.circular(0),
        topRight: Radius.circular(12),
      ),
      child: Image.network(
        'https://canlierp.mo.vc/web/image?model=product.template&id=${widget.productid}&field=image_128',
        width: 160,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
