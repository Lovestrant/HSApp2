import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Others/AppColors.dart';

class LoanHistory extends StatefulWidget {
  const LoanHistory({Key? key, String title = "Loan History"}) : super(key: key);

  @override
  _LoanHistoryState createState() => _LoanHistoryState();
}

class _LoanHistoryState extends State<LoanHistory> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Loan History"),
          centerTitle: true,
          leading: new IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: new Icon(Icons.arrow_back),),
        ),
        body: SafeArea(
          child: Container(
            height: ScreenHeight,
            width: ScreenWidth,

            margin: EdgeInsets.only(top: 10,left: 10,right: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          Navigator.pushNamed(context, "/SingleLoan");
                        },
                      ),
                    )
                  ],
                ),

                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Your Loan History",
                      style: TextStyle(color: AppColors.green,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),

                SizedBox(height: 20,),

                Column(
                  //body of the Page
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(

                      child: FutureBuilder <List<List>>(
                        //future: futureData,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            // List<Data> data = snapshot.data;
                            return ListView.builder(
                                itemCount: 10,//data.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    title: Text("Hello, Map Title data here"), //An array e.g data['title'].index
                                    subtitle: Text("Map body of the data here"),
                                    onTap: () {
                                      //What happens when user clicks An item
                                      Navigator.pushNamed(context, "/SingleLoan");
                                    },
                                  );
                                }
                            );
                          } else if (snapshot.hasError) {
                            return TextButton(
                              child: Text("Go to single Transaction"),
                              onPressed: () {

                              },);
                          }
                          // By default show a loading spinner.
                          return CircularProgressIndicator();
                        },
                      ),
                      // child: Text("Load Data From API on container Above in the CODE..."),

                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
