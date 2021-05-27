import 'package:flutter/material.dart';

class AboutList extends StatelessWidget {
  AboutList({Key key, this.data_about, this.index}) : super(key: key);
  var data_about;
  int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      elevation: 9,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        width: 140,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                //left: 10,
                top: 25,
              ),
              child: Image.asset(
                '' + data_about[index]['image'],
                height: 60,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text('' + data_about[index]['name'],
                style: TextStyle(
                    fontFamily: 'josefinSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.blueGrey[600]))
          ],
        ),
      ),
    );
  }
}
