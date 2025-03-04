import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('ABOUT COORG'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            // header
            Center(
              child: Image.asset(
                "assets/images/app_logo.png",
                height: 250.h,
                width: 250.w,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            // picture

            SizedBox(
              height: 12.h,
            ),
            // about coorg
            Center(
              child: Text(
                "COORG, THE SCOTLAND OF INDIA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.black87,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Coorg, officially called Kodagu, is the most sought after and popular hill station of Karnataka. Lying serenely amidst high mountains, Coorg’s landscape stays misty throughout the year. The aboriginals of the place are Kodavas. Apart from Kannada, the other two main languages of this hill station are Kodagu and Kodava.",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14.sp,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "The best time to visit Kodagu is between October to May and the peak season for this hill station is within February to May. Kodagu is the largest producer of Coffee in India. Also, it is one of the places with highest rainfall across the nation. Undulating hills covered in lush green forests and a landscape dotted with coffee plantations, tea gardens and orange groves, this hill station has breathtakingly stunning scenic beauty",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14.sp,
                ),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.all(12.0),
            //   child: Divider(),
            // ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 200.h,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/raja_seat.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            // contact admin
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  "For feedback or business queries,\nReach out to\nfuturecraftlab.developers@gmail.com",
                  textAlign: TextAlign.center,
                  //  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: Colors.black87),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Text(
                  'Made with ❤ by FutureCraftLab',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
