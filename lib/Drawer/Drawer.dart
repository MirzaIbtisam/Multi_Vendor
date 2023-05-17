import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Contact/Contact_Us.dart';
import '../Mapping/Map_1.dart';
import '../Statistics/Statistic.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  bool isSwitched1 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(80)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(1.0, 2.0),
                )
              ]),
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assests/Profile Pic.jpg"),
                          radius: 18,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Jaguar",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFD9F00),
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
                        "assests/Open Drawer.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  thickness: 0.2,
                  color: Color(0xff828281),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SvgPicture.asset("assests/Statistics.svg"),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Statistic();
                  }));
                },
                child: Text(
                  "Statistics",
                  style: TextStyle(fontSize: 12, color: Color(0xff747474)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SvgPicture.asset(
                "assests/laurent_mexique_politique.svg",
                height: 12,
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Map_1();
                  }));
                },
                child: Text(
                  "Map",
                  style: TextStyle(fontSize: 12, color: Color(0xff747474)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SvgPicture.asset("assests/Language.svg"),
              SizedBox(width: 10),
              Text(
                "Language",
                style: TextStyle(fontSize: 12, color: Color(0xff747474)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assests/Bell.svg"),
                  SizedBox(width: 10),
                  Text("Notification",
                      style: TextStyle(fontSize: 12, color: Color(0xff747474))),
                ],
              ),
              Switch(
                  value: isSwitched1,
                  activeColor: Color(0xffFD9F00),
                  inactiveTrackColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      isSwitched1 = !isSwitched1;
                    });
                  })
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SvgPicture.asset("assests/Help & Support.svg"),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Contact_Us();
                  }));
                },
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 12, color: Color(0xff747474)),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SvgPicture.asset("assests/About.svg"),
              SizedBox(width: 10),
              Text(
                "About",
                style: TextStyle(fontSize: 12, color: Color(0xff747474)),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              SvgPicture.asset("assests/Logout.svg"),
              SizedBox(width: 10),
              Text(
                "Logout",
                style: TextStyle(fontSize: 12, color: Color(0xff747474)),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
