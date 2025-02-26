import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_port/bottombar.dart';
import 'package:plant_port/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => _checkLoginStatus());
  }

  Future<void> _checkLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? email = prefs.getString('email');

    if (email == null) {
      Get.offAll(() => OnBoardingScreen());
    } else {
      Get.offAll(() => BottomBar());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF129C52),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/applogo.png'),
                width: 230,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
