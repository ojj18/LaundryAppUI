import 'package:QuichWashFL/LoginPage/Main.dart';
import 'package:QuichWashFL/aboutus/main.dart';
import 'package:QuichWashFL/account/Main.dart';
import 'package:QuichWashFL/home/homePage.dart';
import 'package:QuichWashFL/myAddress/main.dart';
import 'package:QuichWashFL/myOrder/main.dart';
import 'package:QuichWashFL/notification/main.dart';
import 'package:QuichWashFL/profile/main.dart';
import 'package:QuichWashFL/registerPage/main.dart';
import 'package:QuichWashFL/reviewOrder/main.dart';
import 'package:QuichWashFL/selectClothes/Clothes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:octicons_icon/octicons_icon.dart';
import 'package:fluttericon/entypo_icons.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
      child: Container(
        color: Colors.white,
        height: double.infinity,
        width: 257,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 257,
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/3777943/pexels-photo-3777943.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        radius: 35,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sam Smith',
                            style: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.blueGrey[800],
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'EM001',
                            style: TextStyle(
                                color: Colors.blueGrey[300],
                                fontSize: 13,
                                fontFamily: 'josefinSans'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: MediaQuery.of(context).size.height / 1,
                child: Scrollbar(
                    child: ListView(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          OctIcons.home,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ImageIcon(
                          AssetImage(
                              'assets/images/icons8-login-rounded-100.png'),
                          size: 26,
                          color: Colors.blueGrey[700],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          LineariconsFree.shirt,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Clothes',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Clothes()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          MaterialIcons.menu,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'My Orders',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderPage()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          MaterialIcons.list,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Review Orders',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewOrder()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          FontAwesome.user_o,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Account',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Account()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ImageIcon(
                          AssetImage('assets/images/icons8-list-view-96.png'),
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'My Profile',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          FontAwesome5.address_card,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'My Address',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Address()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          FontAwesome5.bell,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Notifications',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotificationPage()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          ModernPictograms.globe,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'AboutUs',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => About()));
                      },
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          LineAwesomeIcons.phone,
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'ContactUs',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ImageIcon(
                          AssetImage('assets/images/icons8-enter-96.png'),
                          size: 26,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w200,
                              color: Colors.blueGrey[700],
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
