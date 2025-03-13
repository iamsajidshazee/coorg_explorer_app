import 'package:coorg_explorer_app/pages/nav/search_places.dart';
import 'package:coorg_explorer_app/pages/nav/taxi_detailed_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaxiHomepage extends StatelessWidget {
  const TaxiHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('COORG TAXI'),
        // leading: Image.asset("assets/images/app_logo.png"),
        leading: Icon(
          size: 24.sp,
          CupertinoIcons.car_fill,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, left: 12.0),
            child: Text(
              'Where are you going',
              style: TextStyle(
                fontSize: 36.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'today?',
              style: TextStyle(
                fontSize: 36.sp,
                color: Colors.black,
              ),
            ),
          ),
          // search bar
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GestureDetector(
              //on tap
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPlaces()),
                );
              },
              //
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xfff4f6fd),
                  border: Border.all(
                    color: const Color.fromARGB(255, 173, 174, 177),
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                margin: const EdgeInsets.only(
                  // left: 12,
                  // right: 12,
                  top: 10,
                ),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.green,
                      size: 24.sp,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Search Location',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // list taxi cars 1

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaxiDetailedPage(),
                  // DetailedPlace(
                  //   place: place.title,
                  //   dest: place.subTitle,
                  //   imageUrl: place.urlImage,
                  //   imageOne: place.urlImage1,
                  //   imageTwo: place.urlImage2,
                  //   imageThree: place.urlImage3,
                  //   facOne: "Parking",
                  //   facTwo: "Food",
                  //   facThree: "Guides",
                  //   desc: place.desc,
                  //   lat: place.lat,
                  //   lang: place.lang,
                  // ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sedan',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.heart,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    // car image
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Hero(
                          tag: "taxi",
                          child: Image.asset(
                            "assets/images/etios.png",
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Toyoto Etios',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            //  fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.person_3_fill,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4 Persons',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          'Daniel A',
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // list taxi cars 2

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'SUV',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  // car image
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/innova.png",
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Toyoto Innova',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                          //  fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.person_3_fill,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '7 Persons',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text(
                        'Saleem P H',
                        style: TextStyle(
                          fontSize: 24.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // taxi car 3

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: Center(
                child: const Text("More Taxis coming soon"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
