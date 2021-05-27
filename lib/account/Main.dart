import 'package:QuichWashFL/Home/homePage.dart';
import 'package:QuichWashFL/aboutus/main.dart';
import 'package:QuichWashFL/loginPage/Main.dart';
import 'package:QuichWashFL/myAddress/main.dart';
import 'package:QuichWashFL/myOrder/main.dart';
import 'package:QuichWashFL/profile/main.dart';
import 'package:QuichWashFL/publicMain/main.dart';
import 'package:QuichWashFL/terms/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.cyan[400],
              size: 30,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Publicmain()));
            }),
        title: Text(
          'Account',
          style: TextStyle(
            fontFamily: 'josefinSans',
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 40),
                          child: Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey[800]),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35, top: 45),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/3777943/pexels-photo-3777943.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            'Sam Smith',
                            style: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.blueGrey[800],
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context, false);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: Text(
                            'View Profile',
                            style: TextStyle(
                                //fontWeight: FontWeight.w500,
                                color: Colors.cyan[400],
                                fontSize: 13,
                                fontFamily: 'josefinSans'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, top: 25),
                child: Column(
                  children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Icon(
                          MaterialIcons.menu,
                          size: 28,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Text(
                        'My Orders',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderPage()));
                      },
                    ),
                    Divider(
                      height: 10,
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Icon(
                          FontAwesome5.address_card,
                          size: 28,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Text(
                        'My Address',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Address()));
                      },
                    ),
                    Divider(
                      height: 10,
                    ),
                    ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Icon(
                            ModernPictograms.globe,
                            size: 28,
                            color: Colors.blueGrey[600],
                          ),
                        ),
                        title: Text(
                          'About us',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'josefinSans',
                            color: Colors.blueGrey[600],
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context, false);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => About()));
                        }),
                    Divider(
                      height: 10,
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Icon(
                          LineAwesomeIcons.phone,
                          size: 28,
                          color: Colors.blueGrey[600],
                        ),
                      ),
                      title: Text(
                        'Contact us',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          color: Colors.blueGrey[600],
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                    ),
                    ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Icon(
                            Octicons.note,
                            size: 28,
                            color: Colors.blueGrey[600],
                          ),
                        ),
                        title: Text(
                          'Terms & Services',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'josefinSans',
                            color: Colors.blueGrey[600],
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context, false);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsPage()));
                        }),
                    Divider(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context, false);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      leading: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: ImageIcon(
                            AssetImage('assets/images/icons8-sign-out-90.png'),
                            size: 28,
                            color: Colors.blueGrey[600],
                          )),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          color: Colors.blueGrey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
