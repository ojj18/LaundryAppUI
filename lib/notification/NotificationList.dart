import "package:flutter/material.dart";

class NotificationList extends StatelessWidget {
  NotificationList({Key key, this.data_nav, this.index}) : super(key: key);
  var data_nav;
  int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.5),
      ),
      child: Container(
        height: 100,
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: EdgeInsets.only(
                    left: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    border: Border.all(
                      color: Colors.blueGrey[200],
                      width: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                    top: 25,
                  ),
                  child: Image.asset(
                    '' + data_nav[index]['image'],
                    height: 32.5,
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      '' + data_nav[index]['name'],
                      style: TextStyle(
                          color: Colors.blueGrey[800],
                          fontSize: 14.8,
                          fontFamily: 'josefinSans',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text(
                      '' + data_nav[index]['label'],
                      style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontSize: 13,
                          fontFamily: 'josefinSans'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, bottom: 20),
              child: Text(
                '' + data_nav[index]['time'],
                style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 13,
                    fontFamily: 'josefinSans'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
