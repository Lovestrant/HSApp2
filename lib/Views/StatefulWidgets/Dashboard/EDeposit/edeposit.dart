import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/EDeposit/creditCardDeposit.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/EDeposit/lipaNaMpesa.dart';

import '../../Others/AppColors.dart';

class Edeposit extends StatefulWidget {
  const Edeposit({Key? key, String title = "Edeposit"}) : super(key: key);

  @override
  _EdepositState createState() => _EdepositState();
}

class _EdepositState extends State<Edeposit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.navyBlue,
            title: Container(
              margin: EdgeInsets.symmetric(vertical: 2),
                child: const Text("E-Deposit",)
            ),
            centerTitle: true,
            leading: new IconButton(onPressed: () {
              Navigator.pop(context);
            },
              icon: new Icon(Icons.arrow_back),),

              bottom: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: Container(
                  color: AppColors.white,
                  child: const TabBar(
                    labelColor: AppColors.green,
                    unselectedLabelColor: AppColors.navyBlue,
                    tabs: [
                      Tab(child: Text("CREDIT CARD" ),),
                      Tab(child: Text("LIPA NA MPESA"),),
                    ],
                  ),
                ),
              )
          ),

          body: TabBarView(children: [
                  CreditCardDeposit(),
                  LipaNaMpesa()
                 ]),
        ),
      ),
    );
  }
}
