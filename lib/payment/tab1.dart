import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.only(top: 80, right: 15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Card Details',
              style: TextStyle(
                fontFamily: 'josefinSans',
                color: Colors.blueGrey[800],
                fontSize: 16,
                //fontWeight: FontWeight.w600
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Card Number',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.grey,
                      fontSize: 15),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Dropdown(),
                  Dropdown2(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'CVV',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.grey,
                      fontSize: 15),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.teal[700],
                    onChanged: (bool newValue) {
                      setState(() {
                        checkBoxValue = newValue;
                      });
                    }),
                Text(
                  'Save card info for qucik payment for future',
                  style: TextStyle(
                    fontFamily: 'josefinSans',
                    color: Colors.blueGrey[400],
                    fontSize: 11,
                    //fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amount Payable\$ 75.00',
                        style: TextStyle(
                            fontFamily: "josefinSans",
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            'Pay Now',
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
            )
          ],
        ),
      ),
    );
  }
}

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Container(
        child: Text(
          'Month',
          style: TextStyle(
            // color: Colors.cyan[300],
            fontFamily: 'josefinSans',
          ),
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Container(
        child: Text(
          '4',
          style: TextStyle(
            //    color: Colors.cyan[300],
            fontFamily: 'josefinSans',
          ),
          // overflow: TextOverflow.ellipsis,
        ),
      ),
      value: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: DropdownButtonHideUnderline(
        child: Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.grey,
          //     ),
          //     borderRadius: BorderRadius.all(Radius.circular(10))),
          child: DropdownButton(
            // itemHeight: 2,
            iconSize: 25,
            elevation: 1,
            value: selected,
            hint: Text(
              'Select an item',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'josefinSans',
              ),
              overflow: TextOverflow.ellipsis,
            ),
            items: listDrop,
            onChanged: (value) {
              selected = value;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}

class Dropdown2 extends StatefulWidget {
  @override
  _Dropdown2State createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: Container(
        child: Text(
          'Year',
          style: TextStyle(
            // color: Colors.cyan[300],
            fontFamily: 'josefinSans',
          ),
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Container(
        child: Text(
          '2010',
          style: TextStyle(
            //    color: Colors.cyan[300],
            fontFamily: 'josefinSans',
          ),
          // overflow: TextOverflow.ellipsis,
        ),
      ),
      value: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: DropdownButtonHideUnderline(
        child: Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.grey,
          //     ),
          //     borderRadius: BorderRadius.all(Radius.circular(10))),
          child: DropdownButton(
            // itemHeight: 2,
            iconSize: 25,
            elevation: 1,
            value: selected,
            hint: Text(
              'Select an item',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'josefinSans',
              ),
              overflow: TextOverflow.ellipsis,
            ),
            items: listDrop,
            onChanged: (value) {
              selected = value;
              setState(() {});
            },
          ),
        ),
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
                            'assets/images/check.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Success !',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey[800],
                              fontSize: 30,
                              fontFamily: 'josefinSans',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Your payment successfully processed',
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
