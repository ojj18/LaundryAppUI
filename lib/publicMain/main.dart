import 'package:QuichWashFL/aboutus/main.dart';
import 'package:QuichWashFL/account/Main.dart';
import 'package:QuichWashFL/home/homePage.dart';
import 'package:QuichWashFL/loginPage/Main.dart';
import 'package:QuichWashFL/myAddress/main.dart';
import 'package:QuichWashFL/myOrder/main.dart';
import 'package:QuichWashFL/registerPage/main.dart';
import 'package:QuichWashFL/reviewOrder/main.dart';
import 'package:QuichWashFL/selectClothes/Clothes.dart';
import 'package:flutter/material.dart';
import 'package:QuichWashFL/notification/main.dart';
import 'package:QuichWashFL/offer/main.dart';
import 'package:QuichWashFL/profile/main.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:octicons_icon/octicons_icon.dart';

class Publicmain extends StatefulWidget {
  Publicmain({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PublicmainState createState() => _PublicmainState();
}

class _PublicmainState extends State<Publicmain> {
  int _currentIndex = 0;
  List<Widget> _children = <Widget>[
    HomePage(),
    NotificationPage(),
    OfferPage(),
    ProfilePage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white));
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        showSelectedLabels: false,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.cyan[400],
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  OctIcons.home,
                  size: 25,
                ),
              ),
              title: Text('')),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(
                LineAwesomeIcons.bell,
                size: 25,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(
                LineAwesomeIcons.tag,
                size: 25,
              ),
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              LineAwesomeIcons.user,
              size: 25,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
