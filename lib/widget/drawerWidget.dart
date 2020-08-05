import 'package:designjob/shared/circularIcon.dart';
import 'package:designjob/shared/circularImage.dart';
import 'package:designjob/widget/drawerItem.dart';
import 'package:designjob/widget/profileDetail.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 6,
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircularImage(
                          imagePath: 'assets/person1.jpg',
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        CircularImage(
                          imagePath: 'assets/person2.jpg',
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        CircularIcon(
                          color: Colors.blue,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircularIcon(
                        color: Colors.black,
                        icon: Icon(Icons.settings),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 64.0,
              left: 90.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileDetail(),
                    Divider(),
                    // Text("slkdjfkld"),
                    // DrawerItem(),
                    DrawerItem(),
                    Divider(),

                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.delete,
                            size: 18.0,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                          ),
                          Text(
                            "Trash",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF7c92a7)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
