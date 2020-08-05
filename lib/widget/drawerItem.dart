import 'package:designjob/model/drawerIteModel.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {
  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  List<DrawerItemModel> drawerItemList = [
    DrawerItemModel(
      icon: Icon(Icons.inbox),
      title: "Inbox",
      widget: Container(
        height: 25.0,
        width: 25.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.deepPurpleAccent),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text("42", style: TextStyle(color: Colors.white)),
        ),
      ),
    ),
    DrawerItemModel(
      icon: Icon(Icons.drafts),
      title: "Drafts",
      widget: Container(),
    ),
    DrawerItemModel(
      icon: Icon(Icons.archive),
      title: "Drafts",
      widget: Container(
        height: 25.0,
        width: 25.0,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text("4"),
        ),
      ),
    ),
    DrawerItemModel(
      icon: Icon(Icons.send),
      title: "Sent",
      widget: Container(),
    ),
    DrawerItemModel(
      icon: Icon(Icons.rounded_corner),
      title: "Spam",
      widget: Container(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItemList.map((item) {
        return ListTile(
          onTap: () {},
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconTheme(
                child: item.icon,
                data: IconThemeData(size: 18.0, color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Text(
                item.title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 32.0,
              ),
              item.widget
            ],
          ),
        );
      }).toList(),
    );
  }
}
