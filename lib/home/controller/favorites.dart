import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  List<Widget> restaurantWidgets = [];

  List restaurants = [
    {
      "title": "QDoba",
      "image": "assets/images/qdoba.png",
      "distance": "4.1 mi",
      "time": "35 min",
      "fee": "\$2.99 delivery fee",
      "rating": "4.7",
      "ratings": "15,000+"
    },
    {
      "title": "Ichiban",
      "image": "assets/images/ichiban.png",
      "distance": "4.0 mi",
      "time": "40 min",
      "fee": "\$4.99 delivery fee",
      "rating": "4.0",
      "ratings": "10,000+"
    },
    {
      "title": "Siam Square",
      "image": "assets/images/siamsquare.png",
      "distance": "3.0 mi",
      "time": "40 min",
      "fee": "\$4.99 delivery fee",
      "rating": "4.5",
      "ratings": "8,000+"
    },
  ];

  @override
  void initState() {
    BuildRestaurants();
    super.initState();
  }

  void BuildRestaurants() {
    List<Widget> temp = [];

    for (var restaurant in restaurants) {
      temp.add(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 250,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        restaurant["image"],
                        width: 250,
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Icon(Icons.fastfood_rounded, size: 15, color: Color(0xFF28727b)),
                          SizedBox(width: 5),
                          Text(restaurant["title"],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Text(restaurant["distance"] + " - " + restaurant["time"] + " - " + restaurant["fee"],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Text(restaurant["rating"],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                          Icon(Icons.star_rounded, color: Colors.yellow, size: 15),
                          Text("("+restaurant["ratings"]+")",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ],
                )
            ),
          ));
    }
    setState(() {
      restaurantWidgets = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Your Favorites",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
              ),
              Icon(Icons.arrow_forward_rounded)
            ],
          ),
        ),
        Container(
          height: 225,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ...restaurantWidgets
            ],
          ),
        ),
      ],
    );
  }
}
