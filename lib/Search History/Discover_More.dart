import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Discover_More extends StatelessWidget {
  const Discover_More({Key? key}) : super(key: key);

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
                          "assests/slow-icon.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundImage: AssetImage("assests/Profile Pic.jpg"),
                        radius: 18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
                    "assests/Home page search box.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 10, color: Color(0xff585D5E)),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(1.0, 2.0)),
                  ]),
              height: 200,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search History",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff585D5E)),
                        ),
                        SvgPicture.asset("assests/Path 23350.svg")
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff4CC171)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(1.0, 2.0))
                  ]),
              height: 100,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Search History",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff585D5E)),
                        ),
                        SvgPicture.asset("assests/Path 23350.svg")
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff85DAE9)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff85DAE9)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff85DAE9)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Lounge Coffee Bar",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff85DAE9)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Cozy royal Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff85DAE9)),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(32),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(1.0, 2.0),
                                      )
                                    ]),
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    "Adorable Room",
                                    style: TextStyle(
                                        fontSize: 8, color: Color(0xff85DAE9)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
