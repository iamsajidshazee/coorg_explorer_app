import 'package:coorg_explorer_app/pages/nav/taxi_homepage.dart';
import 'package:coorg_explorer_app/providers/app_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'pages/nav/about.dart';
import 'pages/nav/gallery.dart';
import 'pages/nav/home_navigation_page.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({super.key});

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  // pages to display
  final List<Widget> _pages = [
    const HomeNavigationPage(),
    GalleryPage(),
    TaxiHomepage(),
    const AboutPage(),
  ];
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: SizedBox(
          height: 50.h,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: appProvider.index == 0
                    ? Icon(
                        size: 24.sp,
                        Icons.home,
                        color: Colors.black,
                      )
                    : const Icon(Icons.home_outlined),
                onPressed: () {
                  appProvider.setIndex(0);
                },
              ),
              IconButton(
                icon: appProvider.index == 1
                    ? Icon(
                        size: 24.sp,
                        Icons.camera_alt,
                        color: Colors.black,
                      )
                    : const Icon(Icons.camera_alt_outlined),
                onPressed: () {
                  appProvider.setIndex(1);
                },
              ),
              IconButton(
                icon: appProvider.index == 2
                    ? Icon(
                        size: 24.sp,
                        CupertinoIcons.car_fill,
                        color: Colors.black,
                      )
                    : Icon(CupertinoIcons.car_fill),
                onPressed: () {
                  appProvider.setIndex(2);
                },
              ),
              IconButton(
                icon: appProvider.index == 3
                    ? Icon(
                        size: 24.sp,
                        Icons.account_circle,
                        color: Colors.black,
                      )
                    : const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  appProvider.setIndex(3);
                },
              ),
            ],
          ),
        ),
      ),
      body: _pages[appProvider.index],
    );
  }
}
