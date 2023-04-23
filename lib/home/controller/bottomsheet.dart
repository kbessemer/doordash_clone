import 'dart:ui';
import 'package:flutter/material.dart';


class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {

  late double inputWidth;
  late var size;

  void SetSizes() {
    size = MediaQuery.of(context).size;
    if (size.width > 450) {
      inputWidth = 440;
    } else {
      inputWidth = size.width - 20;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SetSizes();
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(width: 1, color: Colors.black.withOpacity(0.1))
            )
        ),
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: size.width * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home_rounded, color: Color(0xFF28727b), size: 25),
                    Text("Home", style: TextStyle(color: Color(0xFF28727b), fontSize: 10)),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_walk_rounded, color: Colors.grey, size: 25),
                    Text("Pickup", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search_rounded, color: Colors.grey, size: 25),
                    Text("Browse", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.list_alt_rounded, color: Colors.grey, size: 25),
                    Text("Orders", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ],
                ),
              ),
            ],),
        )
    );
  }
}
