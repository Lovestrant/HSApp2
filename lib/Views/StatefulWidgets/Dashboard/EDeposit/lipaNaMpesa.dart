import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Others/AppColors.dart';

class LipaNaMpesa extends StatefulWidget {
  const LipaNaMpesa({Key? key}) : super(key: key);

  @override
  _LipaNaMpesaState createState() => _LipaNaMpesaState();
}

class _LipaNaMpesaState extends State<LipaNaMpesa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Container(
              width: 300,
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
                  Container( height: 190,child: Image(image: AssetImage("Assets/Images/lipanampesa.png"))),

                  SizedBox(height: 10,),
                  Text("M~pesa"),
                  SizedBox(height: 20,),

                  TextButton(
                    onPressed: (){

                    },
                    child: const Text("Deposit Now"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColors.green),
                        foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                        fixedSize: MaterialStateProperty.all(Size(100, 30))
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
