import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../Others/AppColors.dart';

class Login extends StatefulWidget {
  const Login({Key? key, String title = "Login"}) : super(key: key);
  // static const appBarBackground =  Color(#0B0B45);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Welcome to H&S GROUP"),
          centerTitle: true,
          leading: new IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: new Icon(Icons.arrow_back),),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    
                    width: width,
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                          width: width- width/7,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [

                                    SizedBox(height: 30,),

                                  ], ),

                                SizedBox(height: 10),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                  Container(
                                    width: 500,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [

                                        TextFormField(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "Enter Email",

                                          ),
                                          //Add controller here
                                        ),

                                       SizedBox(height: 10,),

                                       TextFormField(
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: "Enter password",

                                          suffixIcon: Icon(Icons.remove_red_eye),
                                          suffixIconColor: AppColors.redAccent,

                                          //Add controller here
                                        ),

                                      ),

                                       SizedBox(height: 20,),

                                       IconButton(
                                        iconSize: 50,
                                        icon: Icon(Icons.fingerprint),
                                        onPressed: () {
                                          //On tabbed action
                                        },
                                      ),

                                    ],
                                 ),
                                  ),
                                    const SizedBox(height: 20,),

                                    TextButton(onPressed: (){
                                      Navigator.pushNamed(context, "/ResetPassword");
                                    },
                                      child: const Text("Forgot Password?"),
                                      style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.red)),
                                    ),
                                    SizedBox(height: 10,),

                                  ],
                                ),

                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    TextButton(
                                      onPressed: () {  },
                                      child: Column(
                                        children: const [
                                          Icon(Icons.wallet_travel),
                                          Text("Quick Balance")
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20,),

                                    TextButton(
                                      onPressed: (){
                                        Navigator.pushNamed(context, "/Dashboard");
                                      },
                                      child: const Text("Log in"),
                                      style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Colors.red),
                                          foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                          ),
                                          fixedSize: MaterialStateProperty.all(Size(70, 40))
                                      ),
                                    )

                                  ],
                                ),
                                SizedBox(height: 30),

                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "/Register");
                                    },
                                    style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.green)),
                                    child: Text("or create new Account")
                                )
                              ],
                            ),
                          ),

                          SizedBox(height: 110,),
                          
                        ],
                      ),
                    ),
                  ),

                ],

              ),


            ],

          ),

        ),
      ),

    );

    }
  }

