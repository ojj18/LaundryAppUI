import 'package:flutter/material.dart';

class DateTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: DefaultTabController(
        length: 4,
        child: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.blueGrey[700],
            indicatorSize: TabBarIndicatorSize.label,
            // indicatorPadding: EdgeInsets.only(left: 40, right: 20),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.cyan[400]),
            tabs: [
              Tab(
                child: Container(
                  height: 150,
                  width: 120,
                  // padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border:
                          Border.all(color: Colors.blueGrey[200], width: 0)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Today, 21 June",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border:
                          Border.all(color: Colors.blueGrey[200], width: 0)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tomorrow, 10 June",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border:
                          Border.all(color: Colors.blueGrey[200], width: 0)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Today, 10 June",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 120,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border:
                          Border.all(color: Colors.blueGrey[200], width: 0)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Tomorrow, 10 June",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'josefinSans',
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
