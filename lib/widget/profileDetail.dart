import 'package:designjob/styles/textStyles.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Social Project",
            style: profileNameStyle,
          ),
          Text(
            "ui@gmail.com",
            style: profileGmailStyle,
          ),
          SizedBox(
            height: 16.0,
          )
        ],
      ),
    );
  }
}
