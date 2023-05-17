import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Sign%20In/Sign_In.dart';
import 'package:intl/intl.dart';

class Sign_Up extends StatefulWidget {
  Sign_Up({Key? key}) : super(key: key);

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
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

  double size = 11;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              SvgPicture.asset(
                "assests/Sign up page.svg",
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
              ),
              SizedBox(height: 30),
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "First name",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.black)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Last name",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.black)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Email",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.black)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Password",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.black)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Phone number",
                          hintStyle:
                              TextStyle(fontSize: 12, color: Colors.black)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 120,
                          child: DropdownButtonFormField(
                            icon:
                                SvgPicture.asset("assests/Drop down arrow.svg"),
                            value: "Lahore",
                            items: [
                              DropdownMenuItem(
                                value: "Lahore",
                                child: Text(
                                  "Lahore",
                                  style: TextStyle(
                                      fontSize: size, color: Colors.black),
                                ),
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Islamabad",
                                  style: TextStyle(
                                      fontSize: size, color: Colors.black),
                                ),
                                value: "Islamabad",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Jhelum",
                                  style: TextStyle(
                                      fontSize: size, color: Colors.black),
                                ),
                                value: "Jhelum",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Faislabad",
                                  style: TextStyle(
                                      fontSize: size, color: Colors.black),
                                ),
                                value: "Faislabad",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "karachi",
                                  style: TextStyle(
                                      fontSize: size, color: Colors.black),
                                ),
                                value: "karachi",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Sindh",
                                  style: TextStyle(
                                      fontSize: size, color: Colors.black),
                                ),
                                value: "Sindh",
                              )
                            ],
                            onChanged: (value) {
                              print("changed");
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () => _selectDate(context),
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xffFFFFFF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(32))),
                                child: Text(
                                  "${dob}",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff4CC171)),
                                ))),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 130,
                height: 30,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff4CC171),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account?",
                    style: TextStyle(fontSize: 11, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Sign_In();
                      }));
                    },
                    child: Text(
                      " Sign In",
                      style: TextStyle(fontSize: 13, color: Color(0xff585D5E)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
