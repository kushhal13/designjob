import 'package:designjob/model/hotTourModel.dart';
import 'package:flutter/material.dart';

class HotTour extends StatefulWidget {
  @override
  _HotTourState createState() => _HotTourState();
}

class _HotTourState extends State<HotTour> {
  List<HotTourModel> hotTourList = [
    HotTourModel(
        image: "assets/nyc.jpg",
        name: "NEW YORK, USA",
        price: " From \$2290  for 20 nights"),
    HotTourModel(
        image: "assets/thailand.jpg",
        name: "PATTAYA, THAILAND",
        price: " From \$2290  for 20 nights"),
    HotTourModel(
        image: "assets/nyc.jpg",
        name: "NEW YORK, USA",
        price: " From \$2290  for 20 nights"),
    HotTourModel(
        image: "assets/nyc.jpg",
        name: "NEW YORK, USA",
        price: " From \$2290  for 20 nights"),
  ];

  bool isTapped = false;
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: hotTourList.map((item) {
              var index = hotTourList.indexOf(item);

              return Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: [
                    Image.asset(
                      '${item.image}',
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: selectedIndex != null &&
                                        selectedIndex == index
                                    ? Colors.redAccent
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                            )),
                      ),
                    ),
                    Positioned(
                      bottom: 32.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "${item.name}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "${item.price}",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 10,
                margin: EdgeInsets.all(10),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
