import 'dart:convert';

import 'package:QuichWashFL/Home/homePage.dart';
import 'package:QuichWashFL/Notification/NotificationList.dart';
import 'package:QuichWashFL/publicMain/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
              color: Colors.cyan[300],
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Publicmain()));
            }),
        title: Text(
          'Notification',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.1,
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/Json/Notification.json'),
              builder: (context, snapshot) {
                var data_nav = json.decode(snapshot.data.toString());
                return Scrollbar(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100),
                    itemBuilder: (BuildContext context, int index) {
                      return NotificationList(
                        data_nav: data_nav,
                        index: index,
                      );
                    },
                    itemCount: data_nav == null ? 0 : data_nav.length,
                  ),
                );
              }),
        ),
      ),
      // bottomNavigationBar: Publicmain(),
    );
  }
}
