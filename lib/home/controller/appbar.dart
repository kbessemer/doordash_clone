import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.gps_fixed_rounded),
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
                  Icon(Icons.expand_more_rounded)
                ],
              ),
              Row(
                children: [
                  Icon(Icons.person_rounded),
                  SizedBox(width: 20),
                  Icon(Icons.notifications_rounded)
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
                  Icon(Icons.search_rounded),
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
      backgroundColor: Color(0xFFeef2f8),
    );
  }
}
