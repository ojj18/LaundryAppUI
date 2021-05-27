import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Radio(
                value: checkBoxValue,
                groupValue: checkBoxValue,
                activeColor: Colors.cyan[400],
                onChanged: (bool newValue) {
                  setState(() {
                    checkBoxValue = newValue;
                  });
                },
              ),
              Text(
                'Cash On Delivery',
                style: TextStyle(
                  fontFamily: 'josefinSans',
                  color: Colors.blueGrey[800],
                  fontSize: 15,
                  //fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              'Deliver cash to your door',
              style: TextStyle(
                fontFamily: 'josefinSans',
                color: Colors.blueGrey[400],
                fontSize: 12,
                //fontWeight: FontWeight.w600
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width / 2.7,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                color: Colors.cyan[300],
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
                  'Process',
                  style: TextStyle(
                    fontFamily: "josefinSans",
                    color: Colors.white,
                  ),
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
