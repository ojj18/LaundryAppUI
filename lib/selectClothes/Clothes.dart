import 'dart:convert';

import 'package:QuichWashFL/home/homePage.dart';
import 'package:QuichWashFL/reviewOrder/main.dart';
import 'package:QuichWashFL/selectClothes/ClothesList.dart';
import 'package:QuichWashFL/selectClothes/Tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Clothes extends StatefulWidget {
  @override
  _ClothesState createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.white));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.cyan[400],
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }),
        title: Text(
          'Select Clothes',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: ListView(
                  physics: ClampingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Tabbar(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1,
                      child: FutureBuilder(
                          future: DefaultAssetBundle.of(context)
                              .loadString('assets/Json/Category.json'),
                          builder: (context, snapshot) {
                            var data_clothes =
                                json.decode(snapshot.data.toString());
                            return ListView.builder(
                              physics: ClampingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return ClothesList(
                                  data_clothes: data_clothes,
                                  index: index,
                                );
                              },
                              itemCount: data_clothes == null
                                  ? 0
                                  : data_clothes.length,
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 89,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: InkWell(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          color: Colors.cyan[400],
                          onPressed: () {
                            Navigator.pop(context, false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReviewOrder(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total \$ 75.00 | 8 items selected',
                                style: TextStyle(
                                    fontFamily: "josefinSans",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                        fontFamily: "josefinSans",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
