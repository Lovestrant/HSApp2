import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({Key? key, String title = "PinScreen"}) : super(key: key);

  @override
  _PinScreenState createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Container(
              height: ScreenHeight,
              width: ScreenWidth,

              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      height: ScreenHeight/5,
                      width: ScreenWidth/2,

                      margin: EdgeInsets.only(top: 2),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("Assets/Images/logo.jpeg")
                        )
                      ),

                    ),
                    Container(
                      width: ScreenWidth,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                 color : Colors.white,
                                 border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(Icons.lock, size: 30,color: Colors.grey,)
                          ),
                          SizedBox(height: 2,),
                          Text("Enter Your Pin"),
                          SizedBox(height: 2,),

                          TextButton(
                            onPressed: () {  },
                            child: const Text(""),
                            ),

                          Text("_ _"),

                         SizedBox(height: 5,),

                        ],
                      ),
                    ),


                        Container(
                          width: 230,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              SizedBox(height: 10,),
                              Row(
                                children: [

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("4"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 5,),

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("5"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("6"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  )


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("7"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 5,),

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("8"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("9"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  )


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("OK"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: 5,),

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("0"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),

                                  Container(
                                    padding: EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color : Colors.white,
                                      border: Border.all(width: 2),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: TextButton(
                                      onPressed: () {  },
                                      child: Text("X"),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(24),
                                      ),
                                    ),
                                  )


                                ],
                              ),
                            ],
                          ),
                        )

                  ],
                ),
              ),
            )),
      ),

    );
  }
}
