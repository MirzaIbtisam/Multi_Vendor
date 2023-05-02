import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Map_3 extends StatelessWidget {
  const Map_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assests/Map 3.svg",
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
                height: 115,
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
                          Text(
                            "Brazilian community",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                          Row(
                            children: [
                              Container(
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
                    SizedBox(height: 8),
                    Text(
                      "Explore Events",
                      style: TextStyle(fontSize: 12, color: Color(0xff585D5E)),
                    )
                  ],
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
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        height: 50,
                                        width: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
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
                                                    "assests/Group 2859.svg"),
                                                Text(
                                                  "Events",
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
                                      height: 50,
                                      width: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
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
                                      height: 50,
                                      width: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
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
                                      height: 50,
                                      width: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
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
                                      height: 50,
                                      width: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
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
                                      height: 50,
                                      width: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
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
                                  fontSize: 10, color: Color(0xffC1C1C1)),
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
      floatingActionButton: Column(
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
          Container(
              decoration: BoxDecoration(
                  color: Color(0xff4CC171),
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
                  "Events\nNear Me",
                  style: TextStyle(fontSize: 6, color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
