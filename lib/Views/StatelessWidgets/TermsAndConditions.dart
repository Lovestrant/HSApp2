import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../StatefulWidgets/Others/AppColors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key, title= "TermsAndConditions"}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.navyBlue,
            title: const Text("Terms And Conditions"),
            centerTitle: true,
            leading: new IconButton(onPressed: () {
              Navigator.pop(context);
            },
              icon: new Icon(Icons.arrow_back),),
          ),

        body: SafeArea(
          child: Container(
            height: ScreenHeight,
            width: ScreenWidth,
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Only Government Issued ID Cards acceptable are"),
                      Text("1.) KRA PIN (Kenyan Citizens)"),
                      Text("2.) Social Security Number (For US Citizens)"),
                      Text("Passport (Biometric Page)"),
                      Text("4.) National Identification Card (Front and Back)"),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: const [
                      Text("Disclaimer",
                        style: TextStyle(
                            fontWeight: FontWeight.w800
                        ),
                      ),

                      Text("1.) The form of Government ID attached is subject to verification.",
                        style: TextStyle(
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      Text("2.) Additional Proof of identification may be requested to maintain your account privileges at anytime.",
                        style: TextStyle(
                            fontWeight: FontWeight.w800
                        ),
                      ),

                      Text("3.) HS Group Microfinance may suspend the privileges of your account during the verification process.",
                        style: TextStyle(
                            fontWeight: FontWeight.w800
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
