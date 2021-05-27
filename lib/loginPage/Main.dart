import 'package:QuichWashFL/Home/homePage.dart';
import 'package:QuichWashFL/publicMain/main.dart';
import 'package:QuichWashFL/registerPage/main.dart';
import 'package:QuichWashFL/resetPasword/main.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.cyan,
            ),
            onPressed: () {}),
        backgroundColor: Colors.cyan,
        elevation: 0,
      ),
      body: Container(
        color: Colors.cyan,
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/laundry.png',
                        height: 90,
                        width: 90,
                      ),
                      Text(
                        'QUIC WASH',
                        style: TextStyle(
                          fontFamily: 'brustoni',
                          color: Colors.white,
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  //  height: MediaQuery.of(context).size.height / 1.6,
                  padding: const EdgeInsets.only(
                    top: 85,
                    left: 25,
                    right: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.mail_outline,
                              color: Colors.cyan[300],
                            ),
                            hintText: 'Email Or Phone Number',
                            hintStyle: TextStyle(
                              fontFamily: 'josefinSans',
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(
                                LineAwesomeIcons.lock,
                                color: Colors.cyan[300],
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontFamily: 'josefinSans',
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                              border: InputBorder.none,
                              suffix: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ResetPage()));
                                },
                                child: Text(
                                  'Forget Password?',
                                  style: TextStyle(
                                    fontFamily: 'josefinSans',
                                    color: Colors.cyan[400],
                                    fontSize: 13,
                                  ),
                                ),
                              )),
                        ),
                      ),
                      Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 52,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          color: Colors.cyan[400],
                          onPressed: () {
                            Navigator.pop(context, false);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Publicmain()));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontFamily: 'josefinSans',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Oh ! Not Registered Yet',
                        style: TextStyle(
                          color: Colors.blueGrey[400],
                          fontFamily: 'josefinSans',
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.cyan[400],
                            ),
                            borderRadius: BorderRadius.circular(6)),
                        height: 52,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: FlatButton(
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
                            'Register Now',
                            style: TextStyle(
                              fontFamily: 'josefinSans',
                              color: Colors.cyan[400],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
