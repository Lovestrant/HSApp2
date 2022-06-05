import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Others/AppColors.dart';

class FinishSignUp extends StatefulWidget {
  const FinishSignUp({Key? key, title = "FinishSignUp"}) : super(key: key);
  @override
  _FinishSignUpState createState() => _FinishSignUpState();
}

class _FinishSignUpState extends State<FinishSignUp> {

//Boolean variables for checkbox
  bool valuefirst = false;
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.navyBlue,
              title: const Text("Sign Up"),
              centerTitle: true,
              leading: new IconButton(onPressed: () {
                Navigator.pop(context);
              },
                icon: new Icon(Icons.arrow_back),),
            ),
            body: SafeArea(
              child: Container(
                width: ScreenWidth,
                height: ScreenHeight,
                margin: EdgeInsets.only(top: 30),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 1.0,
                              offset: Offset(0, 1),
                            ),

                          ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red
                              ),
                              child: Text("Id Number")
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Id Number',

                            ),
                          ),
                          SizedBox(height: 3,),

                          const DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red
                              ),
                              child: Text("Choose country Code")
                          ),

                          SizedBox(
                            height: 60,
                            child: CountryCodePicker(
                              onChanged: print,
                              // Initial selection and favorite can be one of code ('KE') OR dial_code('+254')
                              initialSelection: 'KE',
                              favorite: ['+254','KE'],
                              // optional. Shows only country name and flag
                              showCountryOnly: false,
                              // optional. Shows only country name and flag when popup is closed.
                              showOnlyCountryWhenClosed: false,
                              // optional. aligns the flag and the Text left
                              alignLeft: false,

                            ),
                          ),

                          SizedBox(height: 3,),

                          const DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red
                              ),
                              child: Text("Phone Number")
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Contact e.g. 791638771',

                            ),
                          ),
                          SizedBox(height: 3,),

                          const DefaultTextStyle(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.red
                              ),
                              child: Text("Upload Id/Passport photo")
                          ),

                          SizedBox(height: 5,),
                          //------Button to choose file using file picker plugin
                          TextButton(
                              child: Text("Choose File"),
                              onPressed: () => chooseFileUsingFilePicker()
                          ),


                          SizedBox(height: 10,),

                          Row(
                            children: [
                           Checkbox(
                          checkColor: AppColors.greenAccent,
                          activeColor: AppColors.red,
                          value: this.valuefirst,
                          onChanged: (bool? value) {
                          setState(() {
                          this.valuefirst = value!;
                          });}),

                          SizedBox(width: 3,),

                          Text("I agree To"),

                              SizedBox(height: 10,),

                          TextButton(onPressed: (){
                                //add On press Listerner
                              Navigator.pushNamed(context, '/TermsAndConditions');
                              },
                                child: const Text(" Terms and Conditions"),
                                style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.deepPurple)),
                              ),
                          ],
                          ),

                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "/Dashboard");
                            },
                            child: const Text("Complete Sign Up"),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                                foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                ),
                                fixedSize: MaterialStateProperty.all(Size(250, 40))
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }

  chooseFileUsingFilePicker() async {
    //Choose file and upload
  }
}

