import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor/Forget%20Password/Varification.dart';

class Forget_Password extends StatelessWidget {
  const Forget_Password({Key? key}) : super(key: key);

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
                      "Forget Password",
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
            SizedBox(height: 50),
            SvgPicture.asset(
              "assests/Forgot password-rafiki.svg",
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle:
                        TextStyle(fontSize: 16, color: Color(0xffCCCACA))),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Varification();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff4CC171),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Get Code",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
