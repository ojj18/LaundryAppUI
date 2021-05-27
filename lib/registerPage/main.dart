import 'package:QuichWashFL/Home/homePage.dart';
import 'package:QuichWashFL/LoginPage/Main.dart';
import 'package:QuichWashFL/Verification/main.dart';
import 'package:QuichWashFL/profile/main.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.cyan[400],
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
            Navigator.pushNamed(context, '/home');
          },
        ),
        title: Text(
          'Register Now',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Scrollbar(
        child: Container(
          child: ListView(
            padding: EdgeInsets.only(bottom: 15),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: CircleAvatar(
                            radius: 62,
                            backgroundColor: Colors.grey[300],
                            child: Icon(
                              CommunityMaterialIcons.camera,
                              color: Colors.white70,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Add Photo',
                          style: TextStyle(
                              fontFamily: 'josefinSans',
                              color: Colors.blueGrey[600],
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                LineAwesomeIcons.user,
                                color: Colors.cyan[300],
                                size: 30,
                              ),
                              hintText: 'Full Name',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 10,
                            right: 10,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.mail_outline,
                                color: Colors.cyan[300],
                                size: 30,
                              ),
                              hintText: 'Email Address',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 10,
                            right: 10,
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              icon: Icon(
                                LineAwesomeIcons.phone,
                                color: Colors.cyan[300],
                                size: 30,
                              ),
                              hintText: 'Phone Number',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 10,
                            right: 10,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                LineAwesomeIcons.lock,
                                color: Colors.cyan[300],
                                size: 30,
                              ),
                              hintText: 'Password',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 10,
                            right: 10,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              icon: Icon(
                                LineAwesomeIcons.lock,
                                color: Colors.cyan[300],
                                size: 30,
                              ),
                              hintText: 'Confirm Password',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: InkWell(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        color: Colors.cyan[300],
                        onPressed: () {
                          Navigator.pop(context, false);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            fontFamily: "josefinSans",
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
