import 'package:doordash_clone/home/controller/allstores.dart';
import 'package:doordash_clone/home/controller/bottomsheet.dart';
import 'package:doordash_clone/home/controller/categories.dart';
import 'package:doordash_clone/home/controller/favorites.dart';
import 'package:doordash_clone/home/controller/new.dart';
import 'package:flutter/material.dart';

import '../controller/appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfafafa),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.gps_fixed_rounded, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                      "4001 Main St, 100A",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.expand_more_rounded, color: Colors.black)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.person_rounded, color: Colors.black),
                  SizedBox(width: 20),
                  Icon(Icons.notifications_rounded, color: Colors.black)
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(2, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.search_rounded, color: Colors.black),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width - 100,
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        autofocus: false,
                        controller: textController,
                        obscureText: false,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: "Search DoorDash",
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.black,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],),
        scrolledUnderElevation: 0.0,
        shadowColor: null,
        elevation: 0,
        backgroundColor: Color(0xFFfafafa),
        toolbarHeight: 125,
      ),
      bottomSheet: MyBottomSheet(),
      body: SafeArea(
          child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                    delegate: SliverChildListDelegate(
                        [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 0),
                            child: CategoriesView(),
                          ),
                          Divider(),
                          Card(child: NewRestaurantsView()),
                          Card(child: FavoritesView()),
                          AllStoresView(),
                          SizedBox(height: 100),
                        ]))])),
    );
  }
}
