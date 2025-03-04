import 'package:coorg_explorer_app/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroke_text/stroke_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width.w,
        height: MediaQuery.of(context).size.height.h,
        color: Colors.white,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/man_standing.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 75.h,
            ),
            // It's a Big World
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: StrokeText(
                text: "It's a Big World",
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.sp,
                ),
                strokeColor: Colors.white,
                strokeWidth: 2,
              ),
            ),

            // Out There,
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: StrokeText(
                text: "Out There,",
                textStyle: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp,
                ),
                strokeColor: Colors.black,
                strokeWidth: 2,
              ),
            ),

            // Go Explore
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: StrokeText(
                text: "Go Explore",
                textStyle: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.sp,
                ),
                strokeColor: Colors.black,
                strokeWidth: 2,
              ),
            ),

            // space
            Spacer(),

            //

            // get started button
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: const Image(
                          image: AssetImage("assets/images/icons_google.png"),
                          width: 25.0,
                        ),
                        onPressed: () async {
                          // google login
                          await _auth.loginWithGoogle();
                        },
                        label: const Text(
                          "Sign-In with Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          //  shape: const RoundedRectangleBorder(),
                          //  foregroundColor: Colors.black,
                          backgroundColor: Colors.lightGreenAccent,
                          side: const BorderSide(color: Colors.green),
                          padding: const EdgeInsets.symmetric(vertical: 20),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 50.h,
                    //   width: MediaQuery.of(context).size.width.w,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(50),
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         'Get Started',
                    //         style: TextStyle(
                    //           color: Colors.green,
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 15.sp,
                    //         ),
                    //       ),
                    //       Icon(
                    //         Icons.arrow_right,
                    //         color: Colors.green,
                    //         size: 20.sp,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.black,
                      ),
                    ),
                    // StrokeText(
                    //   text: "Privacy Policy",
                    //   textAlign: TextAlign.center,
                    //   textStyle: TextStyle(
                    //     color: Colors.black,
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 12.sp,
                    //   ),
                    //   strokeColor: Colors.white,
                    //   strokeWidth: 2,
                    // ),
                  ],
                ),
              ),
            ),
            Center(
              child: const Text(
                "Made with ❤ by TechShaz",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  // fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            // Privacy Policy
          ],
        ),
      ),
    );
  }
}
