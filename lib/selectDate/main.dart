import 'package:QuichWashFL/myOrder/main.dart';
import 'package:QuichWashFL/payment/main.dart';
import 'package:QuichWashFL/selectDate/dataTab.dart';
import 'package:QuichWashFL/selectDate/tabbar.dart';
import 'package:QuichWashFL/selectDate/timeTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectDate extends StatefulWidget {
  @override
  _SelectDateState createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.cyan[300],
            ),
            onPressed: () {
              Navigator.pop(context, false);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderPage()));
            }),
        title: Text(
          'Select Date & Time',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: DefaultTabController(
          length: 2,
          child: Container(
            height: MediaQuery.of(context).size.height / 1,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: ListView(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 30, left: 10, right: 10),
                          child: Tabbar2(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            top: 30,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Select Pick up Data',
                                style: TextStyle(
                                  fontFamily: 'josefinSans',
                                  color: Colors.blueGrey[800],
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w600
                                ),
                              ),
                              DateTab()
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            top: 60,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Select Pick up Time',
                                style: TextStyle(
                                  fontFamily: 'josefinSans',
                                  color: Colors.blueGrey[800],
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w600
                                ),
                              ),
                              TimeTab(),
                            ],
                          ),
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
                        padding: const EdgeInsets.only(top: 25),
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
                                    builder: (context) => Payment(),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
