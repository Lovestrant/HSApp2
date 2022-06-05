import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Others/AppColors.dart';


class SingleInvestment extends StatefulWidget {
  const SingleInvestment({Key? key, String title = "SingleInvestment"}) : super(key: key);

  @override
  _SingleInvestmentState createState() => _SingleInvestmentState();
}

class _SingleInvestmentState extends State<SingleInvestment> {

  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Investment Detail"),
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
                        image: AssetImage("Assets/Images/investment64.png"),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                  width: 300,
                  height: ScreenHeight/2,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            //border: Border.all(color: AppColors.BoxShadowDecoration),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.grey.withOpacity(0.1),
                                blurRadius: 1.0,
                                offset: Offset(0, 1),
                              ),
                            ]
                        ),


                        child: Column(
                          children: [
                            //Details from the API for a specific item
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Title"),
                                SizedBox(width: 60,),
                                Text("Details")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("TrxID"),
                                SizedBox(width: 60,),
                                Text("hhtghghgg")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Amount"),
                                SizedBox(width: 60,),
                                Text("6000")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Balance"),
                                SizedBox(width: 60,),
                                Text("4699.5999")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Fees(Ksh)"),
                                SizedBox(width: 60,),
                                Text("0.0")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Status"),
                                SizedBox(width: 60,),
                                Text("Success", style: TextStyle(
                                    color: AppColors.green
                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Date"),
                                SizedBox(width: 60,),
                                Text("2022-04-01")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Type"),
                                SizedBox(width: 60,),
                                Text("fixed_deposit")
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Info"),
                                SizedBox(width: 60,),
                                Text("Fixed Deposit")
                              ],
                            ),
                          ],
                        ),

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
