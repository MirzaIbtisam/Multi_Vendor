import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor/Payment%20Details/payment_method_1.dart';

class Payment_Method extends StatelessWidget {
  const Payment_Method({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 15),
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
                  SizedBox(width: 15),
                  Text(
                    "Payment Method",
                    style: TextStyle(fontSize: 16, color: Color(0xff585D5E)),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            SvgPicture.asset(
              "assests/Payment method.svg",
              height: MediaQuery.of(context).size.height / 3.5,
            ),
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Debit Card",
                    style: TextStyle(fontSize: 13, color: Color(0xff979797)),
                  )),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.3,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return payment_method_1();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff4CC171),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Credit Card",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
