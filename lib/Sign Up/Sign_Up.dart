import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Message/Message.dart';
import 'package:multi_vendor/Sign%20In/Sign_In.dart';

class Sign_Up extends StatelessWidget {
  Sign_Up({Key? key}) : super(key: key);

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
                style: TextStyle(fontSize: 19, color: Colors.black),
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
                              TextStyle(fontSize: 11, color: Colors.black)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Last name",
                          hintStyle:
                              TextStyle(fontSize: 11, color: Colors.black)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Email",
                          hintStyle:
                              TextStyle(fontSize: 11, color: Colors.black)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Password",
                          hintStyle:
                              TextStyle(fontSize: 11, color: Colors.black)),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 20),
                          hintText: "Phone number",
                          hintStyle:
                              TextStyle(fontSize: 11, color: Colors.black)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 80,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Date of Birth",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            height: 35,
                            width: 30,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "MM",
                                hintStyle: TextStyle(
                                    fontSize: 10, color: Color(0xffC0BDBD)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            height: 35,
                            width: 25,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "DD",
                                hintStyle: TextStyle(
                                    fontSize: 10, color: Color(0xffC0BDBD)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            height: 35,
                            width: 30,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "YYY",
                                hintStyle: TextStyle(
                                    fontSize: 10, color: Color(0xffC0BDBD)),
                              ),
                            ),
                          ),
                        ),
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
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Message();
                      }));
                    },
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
                    style: TextStyle(fontSize: 10, color: Colors.black),
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
                      style: TextStyle(fontSize: 12, color: Color(0xff585D5E)),
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
