import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Events/Events.dart';
import 'package:multi_vendor/Listed%20Items/Listed_Items.dart';
import 'package:multi_vendor/Mapping/Map_2.dart';
import 'package:multi_vendor/Mapping/Map_3.dart';
import '../Sign In/Sign_In.dart';

class Map_1 extends StatefulWidget {
  const Map_1({Key? key}) : super(key: key);

  @override
  State<Map_1> createState() => _Map_1State();
}

class _Map_1State extends State<Map_1> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 8),
            () => Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => Sign_In())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assests/change map 1.svg",
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
                height: 105,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 3,
                                          offset: Offset(1.0, 2.0))
                                    ]),
                                height: 35,
                                width: 35,
                                child: SvgPicture.asset(
                                  "assests/Statistic drawer.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffFD9F00),
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xffFD9F00),
                                            blurRadius: 3,
                                            offset: Offset(1.0, 2.0))
                                      ]),
                                  height: 10,
                                  width: 10,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Brazilian community",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Explore Events",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff585D5E)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return Events();
                                  }));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xffFD9F00),
                                          blurRadius: 3,
                                        )
                                      ]),
                                  height: 35,
                                  width: 35,
                                  child: SvgPicture.asset(
                                    "assests/noun-list-969174.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assests/Profile Pic.jpg")),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffFD9F00),
                                        blurRadius: 3,
                                      )
                                    ]),
                                height: 35,
                                width: 35,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 360, right: 40),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  height: 80,
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assests/DJ club.jpg"),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          height: 70,
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                        SizedBox(width: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DJ Night",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff85DAE9)),
                            ),
                            Text(
                              "Kama Club",
                              style: TextStyle(
                                  fontSize: 8, color: Color(0xffAAA4A4)),
                            ),
                            Text(
                              "Text to fill provides a flexible platform to sell\nyour products or services so that you  focus\non your sales provides a flexible platform.",
                              style: TextStyle(
                                  fontSize: 7, color: Color(0xffACACAC)),
                            ),
                            SizedBox(height: 5),
                            SizedBox(
                              width: 80,
                              height: 15,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) {
                                      return Listed_Items();
                                    }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff4CC171),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32))),
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(
                                        fontSize: 7, color: Colors.white),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32))),
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        SizedBox(
                          height: 50,
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffFD9F00),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffFD9F00),
                                              blurRadius: 3,
                                            )
                                          ]),
                                      height: 52,
                                      width: 52,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                "assests/white.svg"),
                                            Text(
                                              "Events",
                                              style: TextStyle(
                                                  fontSize: 7,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      height: 52,
                                      width: 52,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 3,
                                                    offset: Offset(1.0, 2.0))
                                              ]),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  "assests/Group 2860.svg"),
                                              Text(
                                                "Jobs",
                                                style: TextStyle(
                                                    fontSize: 7,
                                                    color: Color(0xffFDCD7D)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return Map_3();
                                        }));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        height: 52,
                                        width: 52,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey,
                                                      blurRadius: 3,
                                                      offset: Offset(1.0, 2.0))
                                                ]),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                    "assests/Group 11691.svg"),
                                                Text(
                                                  "Listing",
                                                  style: TextStyle(
                                                      fontSize: 7,
                                                      color: Color(0xffFDCD7D)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      height: 52,
                                      width: 52,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 3,
                                                    offset: Offset(1.0, 2.0))
                                              ]),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  "assests/Group 2873.svg"),
                                              Text(
                                                "Real Estate",
                                                style: TextStyle(
                                                    fontSize: 7,
                                                    color: Color(0xffFDCD7D)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      height: 52,
                                      width: 52,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 3,
                                                    offset: Offset(1.0, 2.0))
                                              ]),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  "assests/Group 2863.svg"),
                                              Text(
                                                "Service",
                                                style: TextStyle(
                                                    fontSize: 7,
                                                    color: Color(0xffFDCD7D)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      height: 52,
                                      width: 52,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey,
                                                    blurRadius: 3,
                                                    offset: Offset(1.0, 2.0))
                                              ]),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  "assests/noun-shopping-4841956.svg"),
                                              Text(
                                                "Shopping",
                                                style: TextStyle(
                                                    fontSize: 7,
                                                    color: Color(0xffFDCD7D)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 5),
                              prefixIcon: SvgPicture.asset(
                                "assests/Group 11712.svg",
                                fit: BoxFit.scaleDown,
                              ),
                              hintText: "Explore upcoming events",
                              hintStyle: TextStyle(
                                  fontSize: 12, color: Color(0xffC1C1C1)),
                              suffixIcon: SvgPicture.asset(
                                "assests/Explore upcoming events.svg",
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Transform.translate(
        offset: Offset(0, 550),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    )
                  ]),
              height: 25,
              width: 25,
              child: SvgPicture.asset(
                "assests/Group 2916.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    )
                  ]),
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                "assests/Group 2878.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Map_2();
                }));
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                        )
                      ]),
                  height: 35,
                  width: 35,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "  Events\nNear Me",
                      style: TextStyle(fontSize: 6, color: Color(0xff4CC171)),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
