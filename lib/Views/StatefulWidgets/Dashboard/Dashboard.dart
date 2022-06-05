import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Others/AppColors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, String title = "Dashboard"}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/Investment");
             },
             child: const Text("Investment Histories: "),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),

           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/Transactions");
             },
             child: const Text("Transactions Histories: "),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),
           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/edeposit");
             },
             child: const Text("Edeposit "),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),
           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/LoanHistory");
             },
             child: const Text("LoanHistory "),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),

           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/PayBeneficiaries");
             },
             child: const Text("Pay Beneficiaries"),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),
           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/Transfer");
             },
             child: const Text("Transfer"),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),
           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/Withdraw");
             },
             child: const Text("Withdraw"),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),
           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/InvestmentPackages");
             },
             child: const Text("Investment Packages"),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),
           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/Account");
             },
             child: const Text("Account"),
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                 foregroundColor: MaterialStateProperty.resolveWith((states) => AppColors.white),
                 shape: MaterialStateProperty.all(
                   RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                 ),
                 fixedSize: MaterialStateProperty.all(Size(250, 40))
             ),
           ),
           SizedBox(height: 10,),

           TextButton(
             onPressed: (){
               Navigator.pushNamed(context, "/Loans");
             },
             child: const Text("Loans"),
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
    );
  }
}
