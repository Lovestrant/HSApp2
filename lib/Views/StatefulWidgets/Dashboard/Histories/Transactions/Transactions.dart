import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Others/AppColors.dart';



class Transactions extends StatefulWidget {
  const Transactions({Key? key, String title = "Transactions"}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {

  TextEditingController startDateinput = TextEditingController();
  TextEditingController endDateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    startDateinput.text = ""; //set the initial value of text field
    endDateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBlue,
          title: const Text("Transactions"),
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
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                          controller: startDateinput, //editing controller of this TextField
                          style: const TextStyle(
                            color: AppColors.green,
                          ),
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.grey, width: 1.0),
                            ),
                            hintText: "Start Date",//icon of text field
                            //labelText: "Start Date" //label text of field
                          ),
                          readOnly: true,  //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101)
                            );

                            if(pickedDate != null ){
                              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

                              setState(() {
                                startDateinput.text = formattedDate; //set output date to TextField value.
                              });
                            }else{
                              startDateinput.text = ""; //set output date to Nothing if not selected.
                            }
                          }),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 100,
                      height: 50,
                      child: TextField(
                          controller: endDateinput, //editing controller of this TextField
                          style: const TextStyle(
                            color: AppColors.green,
                          ),
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.grey, width: 1.0),
                            ),
                            hintText: "End Date",//icon of text field
                            //labelText: "Start Date" //label text of field
                          ),
                          readOnly: true,  //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101)
                            );

                            if(pickedDate != null ){
                              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

                              setState(() {
                                endDateinput.text = formattedDate; //set output date to TextField value.
                              });
                            }else{
                              endDateinput.text = ""; //set output date to Nothing if not selected.
                            }
                          }),
                    ),

                    SizedBox(width: 20,),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          Navigator.pushNamed(context, "/SingleTransaction");
                        },
                      ),
                    )
                  ],
                ),

                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Transactions", style: TextStyle(color: AppColors.green, fontWeight: FontWeight.w900),),
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
                                        Navigator.pushNamed(context, "/SingleTransaction");
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
