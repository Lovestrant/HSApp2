import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Login.dart';

class BaseLogin extends StatelessWidget {
  const BaseLogin({Key? key, String title = "BaseLogin"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Builder(builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BaseLogin',
        home: SafeArea(
          child: Container(
            color: Colors.white,
            height: height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                        height: 200,
                        width: 500,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("Assets/Images/logo.jpeg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            DefaultTextStyle(
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                              child: Text("H&S Group"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 300,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            DefaultTextStyle(
                              style: TextStyle(
                                  fontFamily: "Roboto", color: Colors.black),
                              child: Text("The best way to the bank"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () => {
                      //Navigate to a new Activity
                      Navigator.pushNamed(context, '/Register'),
                    },
                    child: const Text("Register Now"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(10),
                        ),
                        fixedSize: MaterialStateProperty.all(Size(200, 50))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/HomeWidget');
                      },
                      child: const Text("Sign In"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.red),
                          // padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all(Size(200, 50))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
