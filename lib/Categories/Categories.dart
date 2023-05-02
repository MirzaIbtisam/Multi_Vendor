import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor/Profile%20Picture/Profile_1.dart';

import '../Elements/Event_Categories.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 30,
                        width: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SvgPicture.asset("assests/Back arrow.svg"),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 18, color: Color(0xff585D5E)),
                    ),
                  ]),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0),
                              )
                            ]),
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          "assests/Notifications.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Profile_1();
                          }));
                        },
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assests/Profile Pic.jpg"),
                          radius: 18,
                        ),
                      ),
                    ],
                  ),
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
