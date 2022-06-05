import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Others/AppColors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key, String title = "Otp Screen"}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context). size. width;
    double height = MediaQuery.of(context). size. height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children:  [
               Container(
                 width: width- width/10,
                   height: height/3,
                   margin: EdgeInsets.symmetric(horizontal: 10,vertical: 2),

                   child: Image(image: AssetImage("Assets/Images/logo1.png")
                   )),
               Container(
                 width: width- width/4,
                 height: height- height/2,

                 margin: EdgeInsets.only(left: 5,right: 5),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,

                   children: [
                     DefaultTextStyle(
                         style: TextStyle(
                       fontWeight: FontWeight.w500,
                       ),
                       child: Text("Enter OTP and press Proceed")
                     ),
                     TextFormField(
                       decoration: InputDecoration(
                           labelText: 'Enter OTP from Phone',
                           hintText: 'Input OTP',

                       ),
                     ),
                     SizedBox(height: 20,),
                     TextButton(
                       onPressed: (){},
                       child: const Text("Proceed"),
                       style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(AppColors.red),
                           foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                           shape: MaterialStateProperty.all(
                             RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
                           ),
                           fixedSize: MaterialStateProperty.all(Size(100, 40))
                       ),
                     ),

                     SizedBox(height: 10,),
                     Container(
                       padding: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         color: AppColors.red,

                       ),
                       child: TextButton(
                         onPressed: (){},
                         child: const Text("Resend"),
                         style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(AppColors.white),
                             foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.red),
                            // padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                             shape: MaterialStateProperty.all(
                               RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(5),

                               ),

                             ),
                             fixedSize: MaterialStateProperty.all(Size(100, 40))
                         ),
                       ),
                     ),
                     SizedBox(height: 10,),

                     TextButton(
                         onPressed: () {

                         },
                         style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.green)),
                         child: Text("or use another Account")
                     )
                   ],
                 ),
               )
             ],
           )
          ),
        )
      ),
    );
  }
}
