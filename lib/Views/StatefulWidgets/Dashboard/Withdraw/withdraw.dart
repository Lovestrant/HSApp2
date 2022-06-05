import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Others/AppColors.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({Key? key, String title = "Withdraw"}) : super(key: key);


  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {

  String dropdownValue = 'Select Currency';

  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

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
                        image: AssetImage("Assets/Images/data_send.png"),
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
                      //border: Border.all(color: AppColors.BoxShadowDecoration),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.grey.withOpacity(0.3),
                          blurRadius: 1.0,
                          offset: Offset(0, 1),
                        ),
                      ]
                  ),
                  child: Column(
                    children: [
                      Container(


                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppColors.black),

                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),


                                // underline: Container(
                                //   height: 2,
                                //   color: Colors.deepPurpleAccent,
                                //   padding: EdgeInsets.all(20),
                                // ),

                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>['Select Currency','Kenya Shillings']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Container(
                                        width: 250,
                                        padding: EdgeInsets.all(10),
                                        child: Text(value)
                                    ),
                                  );
                                }).toList(),
                              ),

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
                              child: const Text("Withdraw"),
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
