import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Mapping/Map_1.dart';
import 'package:multi_vendor/Starting%20Pages/Second_Page.dart';

class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => Map_1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            SvgPicture.asset("assests/first page.svg"),
            SizedBox(height: 50),
            Text(
              "Be Connected, Be Smart",
              style: TextStyle(
                  fontSize: 21,
                  color: Color(0xffFD9F00),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "   Text to Fill provides a flexible platform to sell your products or\n  services so that you can focus on your sales provides a flexible\nplatform to sell your products or services so that you can focus on ",
              style: TextStyle(fontSize: 12, color: Color(0xff585D5E)),
            ),
            SizedBox(height: 30),
            SvgPicture.asset("assests/Slider one.svg"),
            SizedBox(height: 30),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Second_Page();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff4CC171),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
