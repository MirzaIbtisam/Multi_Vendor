import 'package:flutter/material.dart';



class EventCategories extends StatefulWidget {
  String image;
  String text;
   EventCategories({Key? key,required this.image,required this.text}) : super(key: key);

  @override
  State<EventCategories> createState() => _EventCategoriesState();
}

class _EventCategoriesState extends State<EventCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(42),
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover)),
      height: 120,
      width: MediaQuery.of(context).size.width / 1.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  bottomRight: Radius.circular(32)),
            ),
            height: 30,
            width: MediaQuery.of(context).size.width / 3,
            child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
