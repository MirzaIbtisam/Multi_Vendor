import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Related_Products extends StatefulWidget {
  String img;
  String txt1;
  String txt2;
  String txt3;

  Related_Products(
      {Key? key,
      required this.img,
      required this.txt1,
      required this.txt2,
      required this.txt3})
      : super(key: key);

  @override
  State<Related_Products> createState() => _Related_ProductsState();
}

class _Related_ProductsState extends State<Related_Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      height: 80,
      width: MediaQuery.of(context).size.width / 2.3,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(widget.img),
                    fit: BoxFit.cover),
              ),
              height: 70,
              width: MediaQuery.of(context).size.width / 6,
            ),
            // Image.asset("assests/Recent view 1.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  widget.txt1,
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff585D5E),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.txt2,
                  style: TextStyle(fontSize: 8, color: Color(0xffACACAC)),
                ),
                SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomLeft: Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            offset: Offset(1.0, 2.0))
                      ]),
                  height: 15,
                  width: MediaQuery.of(context).size.width / 4.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Text(
                          widget.txt3,
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff4CC171)),
                        ),
                        SizedBox(width: 5),
                        RatingBar.builder(
                          itemSize: 10,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
