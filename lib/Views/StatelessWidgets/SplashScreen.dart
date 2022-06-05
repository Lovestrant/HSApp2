import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:flutter/material.dart';

import '../StatefulWidgets/Others/AppColors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key, String title = "Splash Screen"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void directToLogin() {
      Navigator.pushNamed(context, '/BaseLogin');
    }

    Timer(const Duration(seconds: 3), () {
      directToLogin();
    });

    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 300,
            width: 300,
            child: const Image(
              image: AssetImage("lib/Assets/Images/logo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
