import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MpesaHistory extends StatefulWidget {
  const MpesaHistory({Key? key}) : super(key: key);

  @override
  _MpesaHistoryState createState() => _MpesaHistoryState();
}

class _MpesaHistoryState extends State<MpesaHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            //body of the Page
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
               margin: EdgeInsets.only(top: 10),
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
    );
  }
}
