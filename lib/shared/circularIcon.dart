import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final Color color;
  final Icon icon;
  CircularIcon({this.color, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: IconTheme(
          data: IconThemeData(
            color: color,
          ),
          child: icon),
    );
  }
}
