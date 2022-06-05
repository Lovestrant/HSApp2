import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/Transfers/ExternalTransfers.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/Transfers/internalTransfers.dart';
import '../../Others/AppColors.dart';



class Transfer extends StatefulWidget {
  const Transfer({Key? key, String title = "Transfers"}) : super(key: key);

  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
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
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: const Text("Transfer Money",)
              ),
              centerTitle: true,
              leading:  IconButton(onPressed: () {
                Navigator.pop(context);
              },
                icon:  Icon(Icons.arrow_back),),

              bottom: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: Container(
                  color: AppColors.white,
                  child: const TabBar(
                    labelColor: AppColors.green,
                    unselectedLabelColor: AppColors.navyBlue,
                    tabs: [
                      Tab(child: Text("INTERNAL TRANSFER" ),),
                      Tab(child: Text("OTHER BANKS"),),
                    ],
                  ),
                ),
              )
          ),

          body: TabBarView(children: [
            InternalTransfers(),
            ExternalTransfers()
          ]),
        ),
      ),
    );
  }
}
