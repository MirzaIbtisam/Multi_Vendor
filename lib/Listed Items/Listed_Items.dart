import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor/Elements/Related_Products.dart';
import 'package:multi_vendor/Payment%20Details/Payment_Method.dart';
import 'package:multi_vendor/Search%20History/Discover_More.dart';

import '../Elements/featured_list _view.dart';

class Listed_Items extends StatelessWidget {
  const Listed_Items({Key? key}) : super(key: key);

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
                  Row(
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
                                    offset: Offset(1.0, 2.0))
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
                        "Listed Items",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff585D5E)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Discover_More();
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
                                    offset: Offset(1.0, 2.0))
                              ]),
                          height: 35,
                          width: 35,
                          child: SvgPicture.asset(
                            "assests/Home page search box.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assests/Profile Pic.jpg"),
                          radius: 18,
                        ),
                      )
                    ],
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
                      blurRadius: 2,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 150,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                children: [
                  SvgPicture.asset("assests/Shoes.svg"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Adidas Runner's",
                        style:
                            TextStyle(fontSize: 19, color: Color(0xff4CC171)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Text to fill provides a flexible platform to sell your\nproducts or services so that you can focus on your\nsales provides a flexible platform to sell our products\nor services so that you can focus on.",
                        style: TextStyle(fontSize: 8, color: Color(0xffC1C1C1)),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SvgPicture.asset("assests/Group 11708.svg"),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Row(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xffC1C1C1)),
                                ),
                                Text(
                                  "150\$",
                                  style: TextStyle(
                                      fontSize: 18, color: Color(0xff4CC171)),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 25,
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 17),
                          border: InputBorder.none,
                          hintText: "Address",
                          hintStyle:
                              TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    height: 25,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Payment_Method();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff4CC171),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32))),
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Featured",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff33393A)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width - 10,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 5),
                    FeaturedList(
                        img: "assests/Shoe-1.webp",
                        Svg_img: "assests/Path 23519.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: ""),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Shoe-2.jpg",
                        Svg_img: "assests/Path 23520.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: ""),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Shoe-1.webp",
                        Svg_img: "assests/Path 23520.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: ""),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Shoe-2.jpg",
                        Svg_img: "assests/Path 23520.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: ""),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Shoe-1.webp",
                        Svg_img: "assests/Path 23520.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: ""),
                    SizedBox(width: 10),
                    FeaturedList(
                        img: "assests/Shoe-2.jpg",
                        Svg_img: "assests/Path 23520.svg",
                        txt1: "Lounge Coffee Bar",
                        txt2: "Art & Humanities",
                        txt3: "4.5",
                        txt4: ""),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Related Products",
                  style: TextStyle(fontSize: 16, color: Color(0xff33393A)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 170,
                child: GridView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 160), //
                  children: [
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                    Related_Products(
                        img: "assests/Shoe-1.webp",
                        txt1: "Nike Air",
                        txt2: "Sports Wear",
                        txt3: "4.5"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
