import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Events extends StatelessWidget {
  const Events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(42),
                    bottomRight: Radius.circular(42)),
              ),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 40),
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
                          "Explore",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(1.0, 1.5))
                              ]),
                          height: 30,
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(bottom: 18),
                                prefixIcon: SvgPicture.asset(
                                  "assests/Group 11712.svg",
                                  fit: BoxFit.scaleDown,
                                ),
                                hintText: "Search ",
                                hintStyle: TextStyle(
                                    fontSize: 9, color: Color(0xffC1C1C1))),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFD9F00),
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
                            "assests/white dots.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage("assests/Profile Pic.jpg")),
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
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFD9F00),
                              borderRadius: BorderRadius.circular(100),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assests/white.svg"),
                                Text(
                                  "Events",
                                  style: TextStyle(
                                      fontSize: 7, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 50,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3,
                                        offset: Offset(1.0, 2.0))
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assests/Group 2860.svg"),
                                  Text(
                                    "Jobs",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xffFDCD7D)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 50,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3,
                                        offset: Offset(1.0, 2.0))
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assests/Group 2861.svg"),
                                  Text(
                                    "Places",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xffFDCD7D)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 50,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3,
                                        offset: Offset(1.0, 2.0))
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assests/Group 2873.svg"),
                                  Text(
                                    "Real Estate",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xffFDCD7D)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 50,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3,
                                        offset: Offset(1.0, 2.0))
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset("assests/Group 2863.svg"),
                                  Text(
                                    "Service",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xffFDCD7D)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 50,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 3,
                                        offset: Offset(1.0, 2.0))
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assests/noun-shopping-4841956.svg"),
                                  Text(
                                    "Shopping",
                                    style: TextStyle(
                                        fontSize: 7, color: Color(0xffFDCD7D)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "Events",
                    style: TextStyle(fontSize: 14, color: Color(0xff585D5E)),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "(List View)",
                    style: TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ club.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ-2.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ club.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ-2.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ club.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ-2.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ club.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                            image: AssetImage("assests/DJ-2.jpg"),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DJ Night",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff85DAE9)),
                        ),
                        Text(
                          "Kama Club",
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffAAA4A4)),
                        ),
                        Text(
                          "Text to fill provides a flexible platform  sell\nyour products or services so that u  focus\non your sales provides a flexible platform.",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff4CC171),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      height: 130,
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
