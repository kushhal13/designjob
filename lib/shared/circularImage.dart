import 'package:flutter/material.dart';

class CircularImage extends StatefulWidget {
  final String imagePath;
  CircularImage({this.imagePath});
  @override
  _CircularImagState createState() => _CircularImagState();
}

class _CircularImagState extends State<CircularImage> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage('${widget.imagePath}'),
    );
  }
}
