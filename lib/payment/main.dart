import 'package:QuichWashFL/payment/tab1.dart';
import 'package:QuichWashFL/payment/tab2.dart';
import 'package:QuichWashFL/payment/tab3.dart';
import 'package:QuichWashFL/selectDate/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
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
              Navigator.pop(context, false);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectDate()));
            }),
        title: Text(
          'Payment',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 30),
        child: ListView(
          children: [
            Container(
              child: Text(
                'Select Payment Method',
                style: TextStyle(
                  fontFamily: 'josefinSans',
                  color: Colors.black,
                  fontSize: 16,
                  //fontWeight: FontWeight.w600
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: new TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.blueGrey[700],
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: Colors.cyan[400],
                  ),
                  controller: _controller,
                  tabs: [
                    Container(
                      height: 100,
                      width: 130,
                      child: Tab(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesome5.id_card,
                              size: 30,
                              color: Colors.orangeAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                'Debit Card',
                                style: TextStyle(
                                  fontFamily: 'josefinSans',
                                  // color: Colors.white,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w600
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 130,
                      child: Tab(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesome5.id_card,
                              size: 30,
                              color: Colors.orangeAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                'Credit Card',
                                style: TextStyle(
                                  fontFamily: 'josefinSans',
                                  // color: Colors.white,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w600
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 130,
                      child: Tab(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesome5.money_bill_alt,
                              size: 30,
                              color: Colors.orangeAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                'Cash On delivery',
                                style: TextStyle(
                                  fontFamily: 'josefinSans',
                                  // color: Colors.white,
                                  fontSize: 15,
                                  //fontWeight: FontWeight.w600
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: new TabBarView(
                controller: _controller,
                children: <Widget>[
                  Tab1(),
                  Tab2(),
                  Tab3(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
