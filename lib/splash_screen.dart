import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   Timer(const Duration(seconds: 5), () {
  //     Navigator.pushReplacement(context,
  //         MaterialPageRoute(builder: (context) => const OnboardMainpage()));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/coorg_explorer_app_logo.png",
              height: 300.h,
              width: 300.w,
            ),
            SizedBox(
              height: 25.h,
            ),
            const CircularProgressIndicator(
              color: Colors.green,
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              "YOUR DIGITAL TRAVEL PARTNER",
              style: TextStyle(
                color: Colors.green,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
