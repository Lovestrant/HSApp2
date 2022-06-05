import 'package:flutter/cupertino.dart';

import '../../Others/AppColors.dart';


class AccountStatement extends StatefulWidget {
  const AccountStatement({Key? key}) : super(key: key);

  @override
  _AccountStatementState createState() => _AccountStatementState();
}

class _AccountStatementState extends State<AccountStatement> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: ScreenWidth,
      height: ScreenHeight,
      margin: EdgeInsets.only(top: 20,left: 10,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: AppColors.grey.withOpacity(0.1),
            ),
            child:Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/Transactions");
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, bottom: 10),
                              height: 50,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.99),
                                  border: Border.all(color: AppColors.black),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: const Image(
                                image: AssetImage("Assets/Images/grouptransfer.png"),
                              ),
                            ),
                          ),

                          SizedBox(height: 2,),

                          Text("H&S Group Transfer", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400,fontSize: 15),),

                        ],
                      ),
                      SizedBox(width: 10,),

                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/Transactions");
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 30, bottom: 10),
                              height: 50,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.99),
                                  border: Border.all(color: AppColors.black),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: const Image(
                                image: AssetImage("Assets/Images/moneycard.png"),
                              ),
                            ),
                          ),

                          SizedBox(height: 2,),

                          Text("Other Bank Transfer", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400,fontSize: 15),),

                        ],
                      )
                    ],
                  ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/edeposit");
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 30, bottom: 10),
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.99),
                                border: Border.all(color: AppColors.black),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: const Image(
                              image: AssetImage("Assets/Images/edeposit.png"),
                            ),
                          ),
                        ),

                        SizedBox(height: 2,),

                        Text("E-deposit", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),

                      ],
                    ),
                    SizedBox(width: 40,),

                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/PlatinumInvestment");
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 30, bottom: 10),
                            height: 50,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.99),
                                border: Border.all(color: AppColors.black),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: const Image(
                              image: AssetImage("Assets/Images/mybills.png"),
                            ),
                          ),
                        ),

                        SizedBox(height: 2,),

                        Text("My Bills", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w400),),

                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
