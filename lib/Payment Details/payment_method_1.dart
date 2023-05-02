import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class payment_method_1 extends StatelessWidget {
  const payment_method_1({Key? key}) : super(key: key);

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
              "assests/Credit card.svg",
              height: MediaQuery.of(context).size.height / 4.5,
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Card Holder",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff8F92A1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset(
                        "assests/atm profile.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "Oguz Bulbul",
                      hintStyle:
                          TextStyle(fontSize: 15, color: Color(0xff233245)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff8F92A1))))),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Card Number",
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff8F92A1),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset(
                        "assests/Card num.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "888532112155",
                      hintStyle:
                          TextStyle(fontSize: 15, color: Color(0xff233245)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff8F92A1))))),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Expiry Date",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff8F92A1),
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text(
                    "CCV",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8F92A1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    height: 35,
                    width: MediaQuery.of(context).size.width / 2.25,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: SvgPicture.asset(
                                "assests/Expiry date.svg",
                                fit: BoxFit.scaleDown,
                              ),
                              hintText: "01/03/2023",
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xff233245)),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff8F92A1))))),
                    ),
                  ),
                ),
                SizedBox(width: 25),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    height: 35,
                    width: MediaQuery.of(context).size.width / 2.6,
                    child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: SvgPicture.asset(
                              "assests/CCV.svg",
                              fit: BoxFit.scaleDown,
                            ),
                            hintText: "0 0 0",
                            hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xff233245)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff8F92A1))))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Discount Code",
                    hintStyle:
                        TextStyle(fontSize: 13, color: Color(0xffBBBBBB)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff4CC171),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Pay Now",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
