import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Others/AppColors.dart';

class AssetFinanceLoans extends StatefulWidget {
  const AssetFinanceLoans({Key? key, title = "Asset Finance Loans"}) : super(key: key);

  @override
  _AssetFinanceLoansState createState() => _AssetFinanceLoansState();
}

class _AssetFinanceLoansState extends State<AssetFinanceLoans> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Request Loan"),
          centerTitle: true,
          leading: new IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: new Icon(Icons.arrow_back),
          ),
        ),

        body: SafeArea(
          child: Container(

            height: ScreenHeight,
            width: ScreenWidth,
            margin: EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Stack(
                  children:  [
                    Container(
                      margin: EdgeInsets.only(top: 15,left: 10,right: 10),
                      child: Divider(
                        color: AppColors.black, thickness: 2,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 50, bottom: 10),
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(0.99),
                          border: Border.all(color: AppColors.black),
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: const Image(
                        image: AssetImage("Assets/Images/loans.png"),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.black.withOpacity(0.3)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.white.withOpacity(0.8),
                          blurRadius: 1.0,
                          offset: Offset(0, 1),
                        ),

                      ]

                  ),
                  child: Column(
                    children: [

                      Text("Asset Finance Loans", style: TextStyle(color: AppColors.black,fontWeight: FontWeight.w600,fontSize: 20),),
                      SizedBox(height: 10,),

                      Text("Ksh 25,000 to Ksh 2,000,000", style: TextStyle(color: AppColors.grey,fontWeight: FontWeight.w500,),),
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter Amount",

                          //Add controller here
                        ),
                      ),


                      SizedBox(height: 20,),

                      TextButton(
                        onPressed: (){

                        },
                        child: const Text("Request"),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(AppColors.green),
                            foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            ),
                            fixedSize: MaterialStateProperty.all(Size(300, 40))
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
