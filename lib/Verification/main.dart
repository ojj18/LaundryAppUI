import 'package:QuichWashFL/LoginPage/Main.dart';
import 'package:QuichWashFL/registerPage/main.dart';
import 'package:flutter/material.dart';

class VerifyPage extends StatefulWidget {
  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, false);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Register()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.cyan[400],
            size: 30,
          ),
        ),
        title: Text(
          'Enter OTP',
          style: TextStyle(
              fontFamily: 'josefinSans',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 50),
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 205),
                  child: Text(
                    'Let us know one time password ( OTP )',
                    style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[600],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'We will send you OTP on your register email\n               address or phone number',
                  style: TextStyle(
                    fontFamily: 'josefinSans',
                    color: Colors.blueGrey[600],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 45),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter One Time Password',
                          hintStyle: TextStyle(
                            fontFamily: 'josefinSans',
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {
                          Navigator.pop(context, false);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontFamily: "josefinSans",
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.cyan[300],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
