import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_vendor/Bottom%20Bar/Bottom_bar.dart';
import 'package:multi_vendor/Forget%20Password/Forget_Password.dart';
import 'package:multi_vendor/Sign%20Up/Sign_Up.dart';

class Sign_In extends StatelessWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              SvgPicture.asset("assests/Sign in page.svg"),
              SizedBox(height: 30),
              Text(
                "Sign In",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 20),
                      hintText: "Email ID",
                      hintStyle: TextStyle(fontSize: 12, color: Colors.black)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 20),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 12, color: Colors.black)),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Forget_Password();
                      }));
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(fontSize: 8, color: Colors.black),
                    ),
                  ),
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
                        return Bottom_bar();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff4CC171),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: Text(
                      "Sign In",
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
                        return Sign_Up();
                      }));
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(fontSize: 13, color: Color(0xff585D5E)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Text(
                "Sign In with",
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assests/apple.svg"),
                  SizedBox(width: 10),
                  SvgPicture.asset("assests/mail.svg"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
