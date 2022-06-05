import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Others/AppColors.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  _AccountProfileState createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 20),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("Personal Information", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w800),),
          SizedBox(height: 20,),
          Row(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.contacts_sharp),
              SizedBox(width: 5,),
              Text("Google Test", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Icon(Icons.email_rounded),
              SizedBox(width: 5,),
              Text("testhsgroup1@gmail.com", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
            ],
          ),

          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Icon(Icons.contact_mail_rounded),
              SizedBox(width: 5,),
              Text("246765587343", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
            ],
          ),

          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Icon(Icons.phone_callback),
              SizedBox(width: 5,),
              Text("+254745827185", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
            ],
          ),

          SizedBox(height: 20,),

          Text("Account Information", style: TextStyle(color: AppColors.navyBlue, fontWeight: FontWeight.w800),),
          SizedBox(height: 20,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text("Account Number", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
              SizedBox(width: 5,),
              Text("6788788989787647844", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
            ],
          ),

          SizedBox(height: 10,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text("Account Balance", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
              SizedBox(width: 5,),
              Text("Ksh 25599.599999994", style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w500),),
            ],
          ),
        ],
      ),
    );
  }
}
