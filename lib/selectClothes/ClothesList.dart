import 'package:flutter/material.dart';

class ClothesList extends StatelessWidget {
  ClothesList({Key key, this.data_clothes, this.index}) : super(key: key);
  var data_clothes;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: const Radius.circular(5),
                topLeft: const Radius.circular(5)),
            child: Image.network(
              '' + data_clothes[index]['image'],
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      '' + data_clothes[index]['name'],
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blueGrey[700],
                        fontFamily: 'josefinSans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      '\$ ' + data_clothes[index]['price'],
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blueGrey[700],
                        fontFamily: 'josefinSans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Dropdown(),
            ],
          ),
          SizedBox(
            width: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  //   border: Border.all(
                  //       //color: Colors.grey[300],
                  //       ),
                  // ),
                  height: 32, width: 32,
                  color: Colors.grey[300],
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '' + data_clothes[index]['quantity'],
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "josefinSans",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 32,
                  width: 32,
                  color: Colors.grey[300],
                  child: IconButton(
                    icon: Icon(
                      IconData(0xe15b, fontFamily: 'MaterialIcons'),
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
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
      child: Text(
        'Wash Only',
        style: TextStyle(
          color: Colors.cyan[300],
          fontFamily: 'josefinSans',
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Text(
        'Wash & Fold',
        style: TextStyle(
          color: Colors.cyan[300],
          fontFamily: 'josefinSans',
        ),
        // overflow: TextOverflow.ellipsis,
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
          child: DropdownButton(
            // itemHeight: 2,
            iconSize: 25,
            elevation: 0,
            value: selected,
            hint: Text(
              'Wash Only',
              style: TextStyle(
                color: Colors.cyan[300],
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
        ));
  }
}
