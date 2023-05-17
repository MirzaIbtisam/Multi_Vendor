import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_vendor/Edit%20Profile/Edit_Profile.dart';
import 'package:multi_vendor/Explore.dart';
import 'package:multi_vendor/Home%20Screen/Home_Screen.dart';
import 'package:multi_vendor/Message/Message.dart';
import 'package:multi_vendor/New%20List/Add_New_List.dart';

class Bottom_bar extends StatefulWidget {
  const Bottom_bar({Key? key}) : super(key: key);

  @override
  State<Bottom_bar> createState() => _Bottom_barState();
}

class _Bottom_barState extends State<Bottom_bar> {
  static List<Widget> _widgetOptions = <Widget>[
    Explore(),
    Home_Screen(),
    Add_New_List(),
    Message(),
    Edit_Profile(),
    Text(
      'Index 1: Search',
      // style: optionStyle,
    ),
    Text(
      'Index 2: Home',
      // style: optionStyle,
    ),
    Text(
      'Index 3: Add',
      // style: optionStyle,
    ),
    Text(
      'Index 4: Mail',
      // style: optionStyle,
    ),
    Text(
      'Index 5: profile',
      // style: optionStyle,
    ),
  ];

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.black,
        child: BottomNavigationBar(
          // selectedItemColor: Colors.red,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assests/Search bottom.svg"),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assests/Home bottom.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assests/Add bottom.svg",
                fit: BoxFit.scaleDown,
                height: 35,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assests/maill bottom.svg"),
              label: 'Mail',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assests/profile bottom.svg"),
              label: 'profile',
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
