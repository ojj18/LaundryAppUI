import 'package:QuichWashFL/Verification/main.dart';
import 'package:QuichWashFL/loginPage/Main.dart';
import 'package:flutter/material.dart';

class ResetPage extends StatefulWidget {
  @override
  _ResetPageState createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
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
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.cyan[400],
            size: 30,
          ),
        ),
        title: Text(
          'Forgot Password',
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
                    '  Let us know your registered email address\nand we will send you password reset instruction',
                    style: TextStyle(
                      fontFamily: 'josefinSans',
                      color: Colors.blueGrey[600],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 45),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon:
                              Icon(Icons.mail_outline, color: Colors.cyan[300]),
                          hintText: 'Enter Email Address',
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
                        left: 50,
                        right: 50,
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
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        onPressed: () {
                          Navigator.pop(context, false);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerifyPage()));
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
