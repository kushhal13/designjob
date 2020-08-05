import 'package:flutter/material.dart';

class AppBarWithSearch extends StatefulWidget {
  @override
  _AppBarWithSearchState createState() => _AppBarWithSearchState();
}

class _AppBarWithSearchState extends State<AppBarWithSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(Icons.sort),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
          IconButton(icon: Icon(Icons.search), onPressed: null),
        ],
      ),
    );
  }
}
