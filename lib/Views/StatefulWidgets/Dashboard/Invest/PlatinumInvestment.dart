import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Others/AppColors.dart';

class PlatinumInvestment extends StatefulWidget {
  const PlatinumInvestment({Key? key, title = "Platinum"}) : super(key: key);

  @override
  _PlatinumInvestmentState createState() => _PlatinumInvestmentState();
}

class _PlatinumInvestmentState extends State<PlatinumInvestment> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Platinum"),
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
            margin: EdgeInsets.only(top: 20),
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
                        image: AssetImage("Assets/Images/invest.png"),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  padding: EdgeInsets.all(10),
                  width: 310,
                  // height: ScreenHeight/2,

                  decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.cyan, width: 10),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.cyan.withOpacity(0.9),
                          // blurRadius: 1.0,
                          //offset: Offset(10, 10,),
                        ),
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 11.0),
                                child: Text("Platinum", style: TextStyle( fontWeight: FontWeight.w900,),),
                              ),
                              SizedBox(height: 10,),

                              Container(
                                margin: EdgeInsets.only(left: 10, bottom: 10),
                                height: 50,

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.99),
                                    border: Border.all(color: AppColors.black),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: const Image(
                                  image: AssetImage("Assets/Images/platinum.png"),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Text("Ksh 150,001 to Ksh 250,000", style: TextStyle( fontWeight: FontWeight.w600,),),
                              ),
                              SizedBox(height: 20,),

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
                                child: const Text("Invest"),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(AppColors.green),
                                    foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                    ),
                                    fixedSize: MaterialStateProperty.all(Size(300, 40))
                                ),
                              ),

                              SizedBox(height: 20,),
                            ],
                          )
                      )
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
