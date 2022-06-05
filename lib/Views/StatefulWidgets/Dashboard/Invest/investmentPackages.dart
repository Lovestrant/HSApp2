import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Others/AppColors.dart';

class InvestmentPackages extends StatefulWidget {
  const InvestmentPackages({Key? key, String title = "Investment Packages"}) : super(key: key);

  @override
  _InvestmentPackagesState createState() => _InvestmentPackagesState();
}

class _InvestmentPackagesState extends State<InvestmentPackages> {
  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Investment Packages"),
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
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40, bottom: 10),
                                height: 50,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.99),
                                    border: Border.all(color: AppColors.black),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: const Image(
                                  image: AssetImage("Assets/Images/standard.png"),
                                ),
                              ),

                              SizedBox(height: 2,),

                              Padding(
                                padding: const EdgeInsets.only(left: 32.0),
                                child: Text("Standard", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400,),),
                              ),

                              SizedBox(height: 2,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("2% for 30 days", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),
                              ),

                            ],
                          ),

                          SizedBox(width: 10,),

                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/StandardInvestment");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 40, bottom: 10),
                                  height: 50,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: AppColors.white.withOpacity(0.99),
                                      border: Border.all(color: AppColors.black),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: const Image(
                                    image: AssetImage("Assets/Images/deposit64.png"),
                                  ),
                                ),
                              ),

                              SizedBox(height: 2,),

                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text("Invest Now", style: TextStyle( fontWeight: FontWeight.w400,),),
                              ),

                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40, bottom: 10),
                                height: 50,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: AppColors.white.withOpacity(0.99),
                                    border: Border.all(color: AppColors.black),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: const Image(
                                  image: AssetImage("Assets/Images/gold_ingots.png"),
                                ),
                              ),

                              SizedBox(height: 2,),

                              Padding(
                                padding: const EdgeInsets.only(left: 32.0),
                                child: Text("Gold", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400,),),
                              ),

                              SizedBox(height: 2,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("4% for 6 months", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),
                              ),

                            ],
                          ),

                          SizedBox(width: 10,),

                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/GoldInvestment");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 40, bottom: 10),
                                  height: 50,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: AppColors.white.withOpacity(0.99),
                                      border: Border.all(color: AppColors.black),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: const Image(
                                    image: AssetImage("Assets/Images/deposit64.png"),
                                  ),
                                ),
                              ),

                              SizedBox(height: 2,),

                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text("Invest Now", style: TextStyle( fontWeight: FontWeight.w400,),),
                              ),

                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 40, bottom: 10),
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

                              SizedBox(height: 2,),

                              Padding(
                                padding: const EdgeInsets.only(left: 32.0),
                                child: Text("Platinum", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400,),),
                              ),

                              SizedBox(height: 2,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text("5% for 12 months", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),
                              ),

                            ],
                          ),

                          SizedBox(width: 10,),

                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/PlatinumInvestment");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 40, bottom: 10),
                                  height: 50,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: AppColors.white.withOpacity(0.99),
                                      border: Border.all(color: AppColors.black),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                  child: const Image(
                                    image: AssetImage("Assets/Images/deposit64.png"),
                                  ),
                                ),
                              ),

                              SizedBox(height: 2,),

                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text("Invest Now", style: TextStyle( fontWeight: FontWeight.w400,),),
                              ),

                            ],
                          )
                        ],
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
