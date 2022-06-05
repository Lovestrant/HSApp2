import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Others/AppColors.dart';

class Register extends StatefulWidget {
  const Register({Key? key, String title = "Register"}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.navyBlue,
              title: const Text("Sign Up"),
              centerTitle: true,
              leading: new IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: new Icon(Icons.arrow_back),
              ),
            ),
            body: SafeArea(
              child: Container(
                width: ScreenWidth,
                height: ScreenHeight,
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.grey.withOpacity(0.1),
                              blurRadius: 1.0,
                              offset: Offset(0, 1),
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red),
                              child: Text("Full Names")),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter full names',
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          const DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red),
                              child: Text("Email")),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          const DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red),
                              child: Text("Password")),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter password',
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red),
                              child: Text("Repeat password")),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Repeat password',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/FinishSignUp');
                            },
                            child: const Text("Sign Up"),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 7, 2, 33)),
                                foregroundColor:
                                    MaterialStateProperty.resolveWith(
                                        (states) => AppColors.white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                fixedSize:
                                    MaterialStateProperty.all(Size(250, 40))),
                          ),
                          SizedBox(height: 10),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/Login");
                              },
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => AppColors.green)),
                              child: Text("Already have an Account? Login"))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
