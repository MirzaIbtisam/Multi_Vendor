import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
              ]),
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Row(
                  children: [
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
                    SizedBox(width: 90),
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            SvgPicture.asset(
              "assests/Developer activity-pana.svg",
              height: MediaQuery.of(context).size.height / 3,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset(
                    "assests/Iconly-Broken-Lock.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Your new Password",
                  hintStyle: TextStyle(fontSize: 14, color: Color(0xffCCCACA)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset(
                    "assests/Iconly-Broken-Lock.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(fontSize: 14, color: Color(0xffCCCACA)),
                ),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff4CC171),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Done",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
