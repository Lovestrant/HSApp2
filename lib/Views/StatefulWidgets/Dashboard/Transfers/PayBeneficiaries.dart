import 'package:flutter/material.dart';
import '../../Others/AppColors.dart';
import 'internalTransfers.dart';

class PayBeneficiaries extends StatefulWidget {
  const PayBeneficiaries({Key? key, title = "Pay Beneficiaries"}) : super(key: key);

  @override
  _PayBeneficiariesState createState() => _PayBeneficiariesState();
}

class _PayBeneficiariesState extends State<PayBeneficiaries> {
  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.navyBlue,
            title: Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              child: const Text("Pay Beneficiaries",)
            ),
            centerTitle: true,
            leading: new IconButton(onPressed: () {
            Navigator.pop(context);
          },
             icon: new Icon(Icons.arrow_back),
          ),
        ),

        body: SafeArea(
          child: Container(
            width: ScreenWidth,
            height: ScreenHeight,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InternalTransfers(),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
