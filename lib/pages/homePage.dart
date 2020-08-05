import 'package:designjob/appBar/appBarWithSearch.dart';
import 'package:designjob/styles/textStyles.dart';
import 'package:designjob/widget/drawerWidget.dart';
import 'package:designjob/widget/hotTour.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("here");

    return Scaffold(
        drawer: DrawerWidget(),
        body: Container(
          child: Stack(
            children: [
              Positioned(
                top: -30,
                right: -12.0,
                child: Text(
                  "18",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.4), fontSize: 120.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWithSearch(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "HOT TOURS",
                      style: titleStyle,
                    ),
                  ),
                  HotTour(),
                ],
              ),
            ],
          ),
        ));
  }
}
