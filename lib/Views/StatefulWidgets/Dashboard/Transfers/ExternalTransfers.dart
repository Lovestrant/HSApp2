import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Others/AppColors.dart';

class ExternalTransfers extends StatefulWidget {
  const ExternalTransfers({Key? key}) : super(key: key);


  @override
  _ExternalTransfersState createState() => _ExternalTransfersState();
}

class _ExternalTransfersState extends State<ExternalTransfers> {

  String dropdownValue = 'Country';
  String currency = 'Select Currency';
  String bankName = 'Bank Name';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                  SizedBox(height: 20,),

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
                      items: <String>['Country','Kenya', 'Uganda', 'Tanzania', 'USA', 'Cameroon', 'Gabon', 'Senegal', 'Mali','Ghana','Ivoire Coast']
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
                  ),//Country
                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.black),

                    ),
                    child: DropdownButton<String>(
                      value: bankName,
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
                          bankName = newValue!;
                        });
                      },
                      items: <String>['Bank Name','One', 'Two', 'Three', 'Four'] //Display only after user has selected country above
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
                  ),//Bank name
                  SizedBox(height: 20,),

                  Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.black),

                    ),
                    child: DropdownButton<String>(
                      value: currency,
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
                          currency = newValue!;
                        });
                      },
                      items: <String>['Select Currency','USA- Dollars', 'XAF- Central African States', 'European-Euro', 'UK-Pounds','West African CFA franc', 'Tanzanian Shilling', 'Ugandan Shilling']
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
                  ),//Currency
                  SizedBox(height: 20,),


                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Branch",

                      //Add controller here
                    ),
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Name of Account Holder",

                      //Add controller here
                    ),
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Account Number",

                      //Add controller here
                    ),
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Amount (Ksh)",

                      //Add controller here
                    ),
                  ),

                  SizedBox(height: 20,),

                  TextButton(
                    onPressed: (){

                    },
                    child: const Text("Transfer"),
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
