import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:multi_vendor/Message/Alert.dart';

class Add_New_List extends StatefulWidget {
  Add_New_List({Key? key}) : super(key: key);

  @override
  State<Add_New_List> createState() => _Add_New_ListState();
}

class _Add_New_ListState extends State<Add_New_List> {
  DateTime _selectedDate = DateTime.now();
  String dob = 'Date of Birth';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        dob = DateFormat('yyyy-MM-dd').format(_selectedDate);
        setState(() {});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            // Make First Row.
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
                      "Add New Listing",
                      style: TextStyle(fontSize: 18, color: Color(0xff585D5E)),
                    ),
                  ]),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                            return Alert();
                          }));
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
                          child: SvgPicture.asset(
                            "assests/Notifications.svg",
                            fit: BoxFit.scaleDown,
                          ),
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
            SizedBox(height: 30),
            // Green Container.
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff78F29E),
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    )
                  ]),
              height: 180,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff64D989),
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                            )
                          ]),
                      height: 180,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              "assests/upload-outbox-line-icon.svg"),
                          Text(
                            "Upload feature here",
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image: AssetImage("assests/bed room.png"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/living room.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assests/modren bedroom.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/deep-ocean.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/pink water.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                            SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assests/beach ocean.jpg"),
                                      fit: BoxFit.cover)),
                              height: 70,
                              width: 50,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Tittle Textfield.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 25),
                  hintText: "Title",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30),
            // Text content.
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Content",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            // Skin Container.
            Container(
              decoration: BoxDecoration(
                color: Color(0xfffef9f1),
                borderRadius: BorderRadius.circular(22),
              ),
              height: 110,
              width: MediaQuery.of(context).size.width / 1.1,
              child: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.only(left: 10, right: 10, top: 5)),
              ),
            ),
            SizedBox(height: 10),
            // Make Second Row Drop Down.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: DropdownButtonFormField(
                      icon: SvgPicture.asset("assests/caret-down-icon.svg"),
                      value: "Choose Categories",
                      items: [
                        DropdownMenuItem(
                          value: "Choose Categories",
                          child: Text(
                            "Choose Categories",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 1",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 2",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 2",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 3",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 3",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 4",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 4",
                        ),
                      ],
                      onChanged: (value) {
                        print("changed");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: DropdownButtonFormField(
                      icon: SvgPicture.asset("assests/caret-down-icon.svg"),
                      value: "Choose Facilities",
                      items: [
                        DropdownMenuItem(
                          value: "Choose Facilities",
                          child: Text(
                            "Choose Facilities",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Facilities 1",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Facilities 1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Facilities 2",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Facilities 2",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Facilities 3",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Facilities 3",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Facilities 4",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Facilities 4",
                        ),
                      ],
                      onChanged: (value) {
                        print("changed");
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Make Third Row drop Down.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: DropdownButtonFormField(
                      icon: SvgPicture.asset("assests/caret-down-icon.svg"),
                      value: "Country ",
                      items: [
                        DropdownMenuItem(
                          value: "Country ",
                          child: Text(
                            "Country ",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Country  1",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Country  1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Country  2",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Country  2",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Country  3",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Country  3",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Country  4",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Country  4",
                        ),
                      ],
                      onChanged: (value) {
                        print("changed");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: DropdownButtonFormField(
                      icon: SvgPicture.asset("assests/caret-down-icon.svg"),
                      value: "Choose State",
                      items: [
                        DropdownMenuItem(
                          value: "Choose State",
                          child: Text(
                            "Choose State",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose State 1",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose State 1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose State 2",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose State 2",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose State 3",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose State 3",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose State 4",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose State 4",
                        ),
                      ],
                      onChanged: (value) {
                        print("changed");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: DropdownButtonFormField(
                      icon: SvgPicture.asset("assests/caret-down-icon.svg"),
                      value: "Choose City",
                      items: [
                        DropdownMenuItem(
                          value: "Choose City",
                          child: Text(
                            "Choose City",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose City 1",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose City 1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose City 2",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose City 2",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose City 3",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose City 3",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose City 4",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose City 4",
                        ),
                      ],
                      onChanged: (value) {
                        print("changed");
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Second White Container.
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(1.0, 2.0))
                  ]),
              height: 350,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: DropdownButtonFormField(
                      icon: SvgPicture.asset("assests/caret-down-icon.svg"),
                      value: "Choose Categories",
                      items: [
                        DropdownMenuItem(
                          value: "Choose Categories",
                          child: Text(
                            "Choose Categories",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 1",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 1",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 2",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 2",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 3",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 3",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Choose Categories 4",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          value: "Choose Categories 4",
                        ),
                      ],
                      onChanged: (value) {
                        print("changed");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 15),
                              hintText: "Input your address",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 15),
                              hintText: "Zipcode",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 15),
                              hintText: "Phone",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 15),
                              hintText: "Fax",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 15),
                              hintText: "Email",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 15),
                              hintText: "Website",
                              hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(1.0, 2.0))
                  ]),
              height: 250,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 130),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Color",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff585D5E),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Icon",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff585D5E),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2,
                                    offset: Offset(1.0, 2.0))
                              ]),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                  height: 20,
                                  width: 20,
                                ),
                                Text(
                                  "Choose Color",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2,
                                    offset: Offset(1.0, 2.0))
                              ]),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              icon: SvgPicture.asset(
                                  "assests/caret-down-icon.svg"),
                              value: "C",
                              items: [
                                DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  value: "C",
                                  child: Text(
                                    "C",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                ),
                                DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    "C 1",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  value: "C 1",
                                ),
                                DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    "C 2",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  value: "C 2",
                                ),
                                DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    "C 3",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  value: "C 3",
                                ),
                                DropdownMenuItem(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    "C 4",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ),
                                  value: "C 4",
                                ),
                              ],
                              onChanged: (value) {
                                print("changed");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 130),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Color",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff585D5E),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Date",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff585D5E),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2,
                                    offset: Offset(1.0, 2.0))
                              ]),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "@status",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () => _selectDate(context),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFFFFFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32))),
                              child: Text(
                                "${dob}",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff4CC171)),
                              )),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 103),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price Min",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff585D5E),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Price Max",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff585D5E),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2,
                                    offset: Offset(1.0, 2.0))
                              ]),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 10),
                                    border: InputBorder.none,
                                    hintText: "Price",
                                    hintStyle: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                )),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 2,
                                    offset: Offset(1.0, 2.0))
                              ]),
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 10),
                                    border: InputBorder.none,
                                    hintText: "Price",
                                    hintStyle: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 150,
              height: 32,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff4CC171),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Add",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
