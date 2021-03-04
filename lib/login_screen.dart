import 'package:flutter/material.dart';
import 'package:furniture/fetchdata.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
            image: AssetImage("assets/cricket.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 92.0),
            child: Text(
              'C R I C K E T ',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 29,
                  color: Colors.white,
                  fontWeight: FontWeight.bold, decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.black),
            ),
          ),
          Column(children: [
            Container(
              width: 200,
              // margin: EdgeInsets.symmetric(horizontal: 75,),
              child: Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      " LOGIN ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => fetch()),
                      );
                    },
                    color: Colors.transparent,
                    textColor: Colors.white,
                    splashColor: Colors.white10,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  " SIGN-UP ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onPressed: () {},
                color: Colors.transparent,
                textColor: Colors.white,
                splashColor: Colors.redAccent,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ),
          ],)
        ]),
      ),
    ));
  }
}
