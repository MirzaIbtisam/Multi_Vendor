import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor/Mapping/Map_1.dart';

import 'Developer.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

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
                  ]),
                  Row(
                    children: [
                      Text(
                        "Jaguar",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Map_1();
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Message",
                  style: TextStyle(fontSize: 23, color: Colors.black),
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
                height: 40,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 40,
                      width: 65,
                      child: SvgPicture.asset(
                        "assests/Group 1635.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15, bottom: 10),
                          border: InputBorder.none,
                          hintText: "Type here...",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Color(0xff858381)),
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Developer();
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfffff5e5),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(1.0, 2.0),
                      )
                    ]),
                height: 90,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          image: DecorationImage(
                              image: AssetImage("assests/Profile Pic.jpg")),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: 60,
                        width: 60,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Developer",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          Text(
                            "Sure, No Problems",
                            style: TextStyle(fontSize: 11, color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfffff5e5),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        image: DecorationImage(
                            image: AssetImage("assests/pic.png.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jaguar",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfffff5e5),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        image: DecorationImage(
                            image: AssetImage("assests/pic.png.webp"),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ali Abdi",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfffff5e5),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        image: DecorationImage(
                            image: AssetImage("assests/Profile Pic.jpg")),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Josh",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfffff5e5),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        image: DecorationImage(
                            image: AssetImage("assests/pic.png.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aimi",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfffff5e5),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 90,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        image: DecorationImage(
                            image: AssetImage("assests/pic.png.webp"),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Adi",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        Text(
                          "Hi! I'd like to know how much it'll cost to me...",
                          style: TextStyle(fontSize: 11, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
