import 'package:QuichWashFL/myAddress/tab1.dart';
import 'package:QuichWashFL/myAddress/tab2.dart';
import 'package:QuichWashFL/myAddress/tab3.dart';
import 'package:QuichWashFL/payment/tab1.dart';
import 'package:QuichWashFL/payment/tab2.dart';
import 'package:QuichWashFL/payment/tab3.dart';
import 'package:QuichWashFL/selectDate/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
    _controller.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
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
          'My Address',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Click on icons to add address',
                    style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.black,
                      fontSize: 16,
                      //fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: new TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.blueGrey[700],
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.cyan[400],
                        ),
                        controller: _controller,
                        tabs: [
                          Container(
                            height: 100,
                            width: 110,
                            child: Tab(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesome.home,
                                    size: 30,
                                    color: _controller.index == 0
                                        ? Colors.white
                                        : Colors.blueGrey[200],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Home',
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
                            width: 110,
                            child: Tab(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    MaterialCommunityIcons.office_building,
                                    size: 30,
                                    color: _controller.index == 1
                                        ? Colors.white
                                        : Colors.blueGrey[200],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Office',
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
                            width: 110,
                            child: Tab(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Entypo.location,
                                    size: 30,
                                    color: _controller.index == 2
                                        ? Colors.white
                                        : Colors.blueGrey[200],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      'Other',
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
                ),
                Container(
                  height: 350,
                  child: new TabBarView(
                    controller: _controller,
                    children: <Widget>[
                      AddressTab1(),
                      AddressTab2(),
                      AddressTab3(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                color: Colors.cyan[400],
                onPressed: () {
                  showGeneralDialog(
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionBuilder: (context, a1, a2, widget) {
                        return Dialog(context);
                      },
                      transitionDuration: Duration(milliseconds: 200),
                      // DURATION FOR ANIMATION
                      barrierDismissible: true,
                      barrierLabel: 'LABEL',
                      context: context,
                      pageBuilder: (context, animation1, animation2) {
                        return Text('PAGE BUILDER');
                      });
                },
                child: Text(
                  'Save Address',
                  style: TextStyle(
                      fontFamily: "josefinSans",
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget Dialog(BuildContext context) {
  return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(5.0)),
              margin: EdgeInsets.all(20),
              height: 280,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 240),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context, false);
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.blueGrey[400],
                            size: 40,
                          )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            'assets/images/checkmark@2x.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Thank you !',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey[800],
                              fontSize: 25,
                              fontFamily: 'josefinSans',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Your Address has been saved',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey[600],
                              fontFamily: 'josefinSans',
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]))));
}
