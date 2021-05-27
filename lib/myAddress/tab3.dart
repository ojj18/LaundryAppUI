import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressTab3 extends StatefulWidget {
  @override
  _AddressTab3State createState() => _AddressTab3State();
}

class _AddressTab3State extends State<AddressTab3> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.only(top: 70, right: 15),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Enter Other Address Details',
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
                hintText: 'Building / Society Name & Number',
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
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Street Address , Landmark, etc',
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
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 150,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "Regular"),
                          decoration: InputDecoration(
                            hintText: 'Zip Code',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: "Regular"),
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 160,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'josefinSans'),
                          decoration: InputDecoration(
                            hintText: 'City',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'josefinSans'),
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
