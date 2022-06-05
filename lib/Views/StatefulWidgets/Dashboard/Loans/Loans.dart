import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Others/AppColors.dart';

class Loans extends StatefulWidget {
  const Loans({Key? key, title= "Loan Request"}) : super(key: key);

  @override
  _LoansState createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Loan Plans"),
          centerTitle: true,
          leading: new IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: new Icon(Icons.arrow_back),
          ),
        ),

        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(

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
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Select one of Our Loans", style: TextStyle(color: AppColors.navyBlue,fontWeight: FontWeight.w600),),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          margin: EdgeInsets.symmetric(horizontal: 20),

                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Column(
                                      children: [
                                        Text("Logbook Loan", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w600,),),
                                        SizedBox(height: 10,),
                                        Text("100,000", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [

                                        Container(
                                            padding: EdgeInsets.only(top: 40),
                                            child: Column(
                                              children: [
                                                Text("to", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400,),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 40,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          child: TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, "/LogBookLoans");
                                            },
                                            child: const Text("Request"),
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(AppColors.white),
                                                foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.green),
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                                ),
                                                fixedSize: MaterialStateProperty.all(Size(250, 40))
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text("5,000,000", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Column(
                                      children: [
                                        Text("Business Loan", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 10,),
                                        Text("500", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [

                                        Container(
                                            padding: EdgeInsets.only(top: 40),
                                            child: Column(
                                              children: [
                                                Text("to", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400,),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          child: TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, "/BusinessLoans");
                                            },
                                            child: const Text("Request"),
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(AppColors.white),
                                                foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.green),
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                                ),
                                                fixedSize: MaterialStateProperty.all(Size(250, 40))
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text("100,000", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Column(
                                      children: [
                                        Text("Asset Finance Loan", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 10,),
                                        Text("25,000", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [

                                        Container(
                                            padding: EdgeInsets.only(top: 40),
                                            child: Column(
                                              children: [
                                                Text("to", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400,),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          child: TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, "/AssetFinanceLoans");
                                            },
                                            child: const Text("Request"),
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(AppColors.white),
                                                foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.green),
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                                ),
                                                fixedSize: MaterialStateProperty.all(Size(250, 40))
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text("2000,000", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Column(
                                      children: [
                                        Text("Personal Loan", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 10,),
                                        Text("500", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [

                                        Container(
                                            padding: EdgeInsets.only(top: 40),
                                            child: Column(
                                              children: [
                                                Text("to", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400,),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          child: TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, "/PersonalLoans");
                                            },
                                            child: const Text("Request"),
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(AppColors.white),
                                                foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.green),
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                                ),
                                                fixedSize: MaterialStateProperty.all(Size(250, 40))
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text("50,000", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                decoration: BoxDecoration(
                                  color: AppColors.grey.withOpacity(0.1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    Column(
                                      children: [
                                        Text("Chama Loan", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),
                                        SizedBox(height: 10,),
                                        Text("500", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [

                                        Container(
                                            padding: EdgeInsets.only(top: 40),
                                            child: Column(
                                              children: [
                                                Text("to", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400,),),
                                              ],
                                            )
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 40,),
                                    Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          child: TextButton(
                                            onPressed: (){
                                              Navigator.pushNamed(context, "/ChamaLoans");
                                            },
                                            child: const Text("Request"),
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(AppColors.white),
                                                foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.green),
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                                                ),
                                                fixedSize: MaterialStateProperty.all(Size(250, 40))
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text("100,000", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w400),),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
