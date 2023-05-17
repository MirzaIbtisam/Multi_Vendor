import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor/Events/Events.dart';
import 'Drawer/Drawer.dart';
import 'Elements/Event_Categories.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(80))),
          width: MediaQuery.of(context).size.width / 1.7,
          child: DrawerPage()),
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
                    child: Builder(builder: (context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
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
                                  height: 35,
                                  width: 35,
                                  child: SvgPicture.asset(
                                    "assests/Statistic drawer.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
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
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assests/Profile Pic.jpg")),
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
                      );
                    }),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 52,
                          width: 52,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
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
                                  SvgPicture.asset("assests/Group 2859.svg"),
                                  Text(
                                    "Events",
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
                          height: 52,
                          width: 52,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
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
                          height: 52,
                          width: 52,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
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
                          height: 52,
                          width: 52,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
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
                          height: 52,
                          width: 52,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
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
                          height: 52,
                          width: 52,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  EventCategories(
                      image: "assests/shopping.webp", text: "Shopping"),
                  SizedBox(height: 10),
                  EventCategories(
                      image: "assests/coffee bar.jpg", text: "Coffee & bar"),
                  SizedBox(height: 10),
                  EventCategories(image: "assests/events.jpg", text: "Events"),
                  SizedBox(height: 10),
                  EventCategories(
                      image: "assests/real estate.jpg", text: "Real Estate"),
                  SizedBox(height: 10),
                  EventCategories(
                      image: "assests/job street.jpg", text: "Job Street"),
                  SizedBox(height: 10),
                  EventCategories(
                      image: "assests/Restaurant.jpg", text: "Restaurant"),
                  SizedBox(height: 10),
                  EventCategories(
                      image: "assests/Automotive.jpg", text: "Automotive"),
                  SizedBox(height: 10),
                  EventCategories(image: "assests/hotel.jpg", text: "Hotel"),
                  SizedBox(height: 10),
                  EventCategories(image: "assests/bar.jpg", text: "Bar"),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
