import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List<Widget> categoryWidgets = [];

  List categories = [
    {
      "title": "Pizza",
      "image": "assets/images/pizza.svg",
    },
    {
      "title": "American",
      "image": "assets/images/american.svg",
    },
    {
      "title": "Sushi",
      "image": "assets/images/sushi.svg",
    },
    {
      "title": "Mexican",
      "image": "assets/images/mexican.svg",
    },
    {
      "title": "Chinese",
      "image": "assets/images/chinese.svg",
    },
    {
      "title": "Alcohol",
      "image": "assets/images/beer.svg",
    },
    {
      "title": "Groceries",
      "image": "assets/images/groceries.svg",
    },
    {
      "title": "Hotels",
      "image": "assets/images/hotels.svg",
    },
    {
      "title": "Travel",
      "image": "assets/images/travel.svg",
    },
  ];

  @override
  void initState() {
    BuildCategories();
    super.initState();
  }

  void BuildCategories() {
    List<Widget> temp = [];

    for (var category in categories) {
      temp.add(
        Container(
          width: 75,
          height: 75,
          child: Column(children: [
            SvgPicture.asset(
              category["image"],
              semanticsLabel: category["title"] + " Button",
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(category["title"],
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                )),
            )
          ],
        )
      ));
    }
    setState(() {
      categoryWidgets = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ...categoryWidgets
        ],
      ),
    );
  }
}
