import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Others/AppColors.dart';

class InternalTransfers extends StatefulWidget {
  const InternalTransfers({Key? key}) : super(key: key);

  @override
  _InternalTransfersState createState() => _InternalTransfersState();
}

class _InternalTransfersState extends State<InternalTransfers> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
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

                  TextButton(
                    onPressed: (){

                    },
                    child: const Text("Select Contact"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.black),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        fixedSize: MaterialStateProperty.all(Size(300, 40))
                    ),
                  ),

                  SizedBox(height: 20,),

                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Account Number",

                      //Add controller here
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
                    child: const Text("Pay Now"),
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
          ]
      ),
    );
  }
}
