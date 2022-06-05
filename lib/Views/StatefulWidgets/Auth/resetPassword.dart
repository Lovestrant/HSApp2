import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Others/AppColors.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key, String title = "Password reset"}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context). size. width;
    double height = MediaQuery.of(context). size. height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reset Password',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Forgot Password"),
          centerTitle: true,
          leading: new IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: new Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(

          child: Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.white,
            height: height,
            width: width,
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    height: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("Assets/Images/logo.jpeg"),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),


                  Container(
                    width: 300,
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  TextButton(
                    onPressed: ()=>{
                      //Navigate to a new Activity
                      Navigator.pushNamed(context, '/Register'),
                    },
                    child: const Text("Change Password"),

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                        shape: MaterialStateProperty.all(

                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        padding:MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(10),
                        ),
                        fixedSize: MaterialStateProperty.all(Size(300, 40))
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
