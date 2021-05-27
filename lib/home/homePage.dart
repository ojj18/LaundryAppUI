import 'package:QuichWashFL/Home/dashBoard/main.dart';
import 'package:QuichWashFL/Home/drawer.dart';

import 'package:QuichWashFL/Home/featurePage/featurelist.dart';
import 'package:QuichWashFL/Home/offerPage/main.dart';

import 'package:QuichWashFL/offer/main.dart';
import 'package:QuichWashFL/profile/main.dart';
import 'package:QuichWashFL/publicMain/main.dart';

import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'package:QuichWashFL/Notification/main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, statusBarColor: Colors.cyan));
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0.0,
        //   leading: Builder(
        //     builder: (context) => IconButton(
        //       icon: Icon(
        //         MaterialCommunityIcons.text,
        //         color: Colors.white,
        //       ),
        //       onPressed: () => Scaffold.of(context).openDrawer(),
        //     ),
        //   ),
        // ),
        // drawer: Drawer1(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.cyan,
                  child: Offer(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 250, top: 50),
                        child: Text(
                          'Services',
                          style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontFamily: 'josefinSans'),
                        ),
                      ),
                      Services(),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Your Active Order (2)',
                              style: TextStyle(
                                  color: Colors.blueGrey[900],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  fontFamily: 'josefinSans'),
                            ),
                            Text(
                              'Past Orders',
                              style: TextStyle(
                                  color: Colors.cyan[400],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  fontFamily: 'josefinSans'),
                            )
                          ],
                        ),
                      ),
                      FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString('assets/Json/Features.json'),
                        builder: (context, snapshot) {
                          var data_feature =
                              json.decode(snapshot.data.toString());
                          return Scrollbar(
                            child: ListView.builder(
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.only(bottom: 10),
                              itemBuilder: (BuildContext context, int index) {
                                return FeatureList(
                                  data_feature: data_feature,
                                  index: index,
                                );
                              },
                              itemCount: data_feature == null
                                  ? 0
                                  : data_feature.length,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Drawer1()));
              },
            ))
          ],
        ),
      ),

      // bottomNavigationBar: Publicmain(),
    );
  }
}
