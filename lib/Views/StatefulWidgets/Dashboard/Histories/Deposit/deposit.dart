import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/Histories/Deposit/depositHistory.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/Histories/Deposit/mpesaHistory.dart';
import '../../../Others/AppColors.dart';


class Deposit extends StatefulWidget {
  const Deposit({Key? key, String title = "depositHistory"}) : super(key: key);

  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
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
                  child: const Text("Deposit History",)
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
                      Tab(child: Text("DEPOSIT HISTORY" ),),
                      Tab(child: Text("M~PESA HISTORY"),),
                    ],
                  ),
                ),
              )
          ),

          body: TabBarView(children: [
            DepositHistory(),
            MpesaHistory()
          ]),
        ),
      ),
    );
  }
}
