import 'package:QuichWashFL/account/Main.dart';
import 'package:QuichWashFL/home/homePage.dart';
import 'package:QuichWashFL/registerPage/main.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.cyan[400],
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(
                context,
              );
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            }),
        title: Text(
          'My Profile',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/3777943/pexels-photo-3777943.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        radius: 65,
                        backgroundColor: Colors.grey[300],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 85),
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.cyan[400],
                            child: Icon(
                              CommunityMaterialIcons.camera,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  height: MediaQuery.of(context).size.width / 1.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            // left: 10,
                            //right: 10,
                            ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(
                              FontAwesome.user,
                              color: Colors.cyan[300],
                              size: 20,
                            ),
                            hintText: 'Enter Full Name',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'josefinSans',
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.mail,
                            color: Colors.cyan[300],
                            size: 20,
                          ),
                          hintText: 'Email Address',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: 'josefinSans',
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.phone_android,
                            color: Colors.cyan[300],
                            size: 20,
                          ),
                          hintText: 'Phone Number',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: 'josefinSans',
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          color: Colors.cyan[300],
                          onPressed: () {
                            Navigator.pop(context, false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          },
                          child: Text(
                            'Update Now',
                            style: TextStyle(
                              fontFamily: "josefinSans",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
