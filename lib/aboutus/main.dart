import 'dart:convert';

import 'package:QuichWashFL/aboutus/AboutList.dart';
import 'package:QuichWashFL/account/Main.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.cyan[400],
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context, false);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            }),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'About Us',
          style: TextStyle(
            fontFamily: 'josefinSans',
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/laundry.png',
                    height: 100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Quick Wash',
                      style: TextStyle(
                        fontFamily: 'josefinSans',
                        color: Colors.blueGrey[800],
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page\nwhen looking at its layout. Lorem ipsum dolor sit\namet, consectetur adipiscing elit, sed do eiusmod\ntemporfacilisis gravida neque. Turpis egestas\ninteger eget aliquet nibh praesent.',
                style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                    fontFamily: 'josefinSans',
                    height: 1.5),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Our Services',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey[800],
                    fontSize: 15,
                    fontFamily: 'josefinSans'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 175,
              //width: double.infinity,
              color: Colors.white,
              child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/Json/Aboutus.json'),
                  builder: (context, snapshot) {
                    var data_about = json.decode(snapshot.data.toString());
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 100,
                          child: AboutList(
                            data_about: data_about,
                            index: index,
                          ),
                        );
                      },
                      itemCount: data_about == null ? 0 : data_about.length,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
