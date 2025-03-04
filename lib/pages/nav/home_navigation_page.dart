import 'package:coorg_explorer_app/pages/nav/popular_place_detailed.dart';
import 'package:coorg_explorer_app/utils/destinations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'search_places.dart';
import 'explore_place_detailed.dart';
import '../../utils/places.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeNavigationPage extends StatefulWidget {
  const HomeNavigationPage({super.key});

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

final List<String> imagePaths = [
  "assets/images/madikeri_town.jpg",
  "assets/images/virajpete_town.jpg",
  "assets/images/kushalnagar_town.jpg",
  "assets/images/raja_seat.jpg",
  "assets/images/abbey_falls.jpg",
  "assets/images/madikeri_fort.jpg",
  "assets/images/mallalli_falls.jpg",
  "assets/images/golden_temple.jpg",
  "assets/images/harangi_dam.jpg",
  "assets/images/mandalpatti.jpg",
  "assets/images/backwater.jpg",
  "assets/images/irpu.jpg",
  "assets/images/kotebetta.jpg",
  "assets/images/rajas_tomb.jpg",
  "assets/images/talakaveri.jpg",
  "assets/images/kotte_abbi_falls.jpg",
  "assets/images/dubare.jpg",
  "assets/images/nisargadhama.jpg",
  "assets/images/omkareshwara_temple.jpg",
  "assets/images/chiklihole.jpg",
];
// Timer? timer;
// final PageController _pageController = PageController(initialPage: 0);

class _HomeNavigationPageState extends State<HomeNavigationPage>
    with TickerProviderStateMixin {
  List<Places> places = allPlaces;
  List<Destinations> destination = allDestinations;
  String selectedCategory1 = 'viewpoint';
  String selectedCategory2 = 'waterfall';
  String selectedCategory3 = 'temple';
  String selectedCategory4 = 'dam';
  // Method to filter places by category
  List<Places> filterPlacesByCategory(String category) {
    return allPlaces.where((place) => place.placeCategory == category).toList();
  }

  // void startTimer() {
  //   timer = Timer.periodic(const Duration(seconds: 3), (timer) {
  //     if (_pageController.hasClients) {
  //       if (_pageController.page == imagePaths.length - 1) {
  //         _pageController.animateToPage(0,
  //             duration: const Duration(milliseconds: 500),
  //             curve: Curves.easeInOut);
  //       } else {
  //         _pageController.nextPage(
  //             duration: const Duration(milliseconds: 500),
  //             curve: Curves.easeInOut);
  //       }
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();

    // startTimer();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 4,
      vsync: this,
    );
    List<Places> filteredPlaces1 = filterPlacesByCategory(selectedCategory1);
    List<Places> filteredPlaces2 = filterPlacesByCategory(selectedCategory2);
    List<Places> filteredPlaces3 = filterPlacesByCategory(selectedCategory3);
    List<Places> filteredPlaces4 = filterPlacesByCategory(selectedCategory4);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('COORG EXPLORER'),
        leading: Image.asset("assets/images/app_logo.png"),
      ),
      body: ListView(
        children: [
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
                margin: const EdgeInsets.only(left: 12, right: 12, top: 10),
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
                      'Where do you want to go...',
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
          // category header
          Padding(
            padding: const EdgeInsets.only(top: 36, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPlaces()),
                    );
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // category tabs

          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 25.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: tabController,
                labelColor: Colors.green,
                unselectedLabelColor: Colors.grey,
                splashBorderRadius: BorderRadius.circular(12),
                tabAlignment: TabAlignment.start,
                indicatorPadding: EdgeInsets.zero,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                isScrollable: true,
                tabs: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Tab(
                      text: "View Points",
                      height: 100,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Tab(
                      text: "Waterfall",
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Tab(
                      text: "Temple",
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Tab(
                      text: "River/Dam",
                    ),
                  ),
                ],
              ),
            ),
          ),

          // tabs display

          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 25.h),
            child: SizedBox(
              width: double.infinity,
              height: 150.h,
              child: TabBarView(
                controller: tabController,
                children: [
                  // View Points
                  ShowCategoryTab(filteredPlaces: filteredPlaces1),
                  // Waterfalls
                  ShowCategoryTab(filteredPlaces: filteredPlaces2),
                  // Temples
                  ShowCategoryTab(filteredPlaces: filteredPlaces3),
                  // River/dam
                  ShowCategoryTab(filteredPlaces: filteredPlaces4),
                ],
              ),
            ),
          ),
//  "Popular Destination", header
          Padding(
            padding: const EdgeInsets.only(top: 36, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Destination",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPlaces()),
                    );
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //  "Popular Destination", lists
          // madikeri
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PopularPlaceDetailedPage(
                    place: allDestinations[0].title,
                    desc: allDestinations[0].desc,
                    imageUrl: allDestinations[0].image,
                    lat: allDestinations[0].lat,
                    lang: allDestinations[0].lang,
                  ),
                ),
              );
            },
            child: Container(
              margin:
                  EdgeInsets.only(left: 25, right: 25, top: 25.h, bottom: 5.h),
              height: 125.h,
              width: 325.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  )
                  //  color: Colors.grey.shade300,
                  ),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 125.h,
                width: 125.w,
                margin: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/madikeri_town.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    // column for place details
                    StrokeText(
                      text: "Madikeri",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                    StrokeText(
                      text: "Coorg, Karnataka, India",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // virajpete
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PopularPlaceDetailedPage(
                    place: allDestinations[1].title,
                    desc: allDestinations[1].desc,
                    imageUrl: allDestinations[1].image,
                    lat: allDestinations[1].lat,
                    lang: allDestinations[1].lang,
                  ),
                ),
              );
            },
            child: Container(
              margin:
                  EdgeInsets.only(left: 25, right: 25, top: 5.h, bottom: 5.h),
              height: 125.h,
              width: 325.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  )
                  //  color: Colors.grey.shade300,
                  ),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 125.h,
                width: 125.w,
                margin: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/virajpete_town.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    // column for place details
                    StrokeText(
                      text: "Virajpete",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                    StrokeText(
                      text: "Coorg, Karnataka, India",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Kushalnagara
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PopularPlaceDetailedPage(
                    place: allDestinations[2].title,
                    desc: allDestinations[2].desc,
                    imageUrl: allDestinations[2].image,
                    lat: allDestinations[2].lat,
                    lang: allDestinations[2].lang,
                  ),
                ),
              );
            },
            child: Container(
              margin:
                  EdgeInsets.only(left: 25, right: 25, top: 5.h, bottom: 5.h),
              height: 125.h,
              width: 325.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  )
                  //  color: Colors.grey.shade300,
                  ),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 125.h,
                width: 125.w,
                margin: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/kushalnagar_town.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    // column for place details
                    StrokeText(
                      text: "Kushalnagara",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                    StrokeText(
                      text: "Coorg, Karnataka, India",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Somwarpete
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PopularPlaceDetailedPage(
                    place: allDestinations[3].title,
                    desc: allDestinations[3].desc,
                    imageUrl: allDestinations[3].image,
                    lat: allDestinations[3].lat,
                    lang: allDestinations[3].lang,
                  ),
                ),
              );
            },
            child: Container(
              margin:
                  EdgeInsets.only(left: 25, right: 25, top: 5.h, bottom: 5.h),
              height: 125.h,
              width: 325.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  )
                  //  color: Colors.grey.shade300,
                  ),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 125.h,
                width: 125.w,
                margin: EdgeInsets.all(5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/somwarpete_town.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    // column for place details
                    StrokeText(
                      text: "Somwarpete",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                    StrokeText(
                      text: "Coorg, Karnataka, India",
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // header
          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0, top: 25, right: 25),
          //   child: Text(
          //     'Picture of the day',
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 12.sp,
          //     ),
          //   ),
          // ),
          // new =======================================================

          // Padding(
          //   padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
          //   child: Container(
          //     width: double.infinity,
          //     height: MediaQuery.of(context).size.height / 4,
          //     clipBehavior: Clip.hardEdge,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //     ),
          //     child: PageView.builder(
          //         controller: _pageController,
          //         itemCount: imagePaths.length,
          //         itemBuilder: (context, index) {
          //           return _pages[index];
          //         }),
          //   ),
          // ),

          // // banner images
          // Padding(
          //   padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
          //   child: Container(
          //     height: 200.h,
          //     decoration: BoxDecoration(
          //       image: const DecorationImage(
          //         image: AssetImage("assets/images/raja_seat.jpg"),
          //         fit: BoxFit.cover,
          //       ),
          //       color: Colors.grey,
          //       borderRadius: BorderRadius.circular(12),
          //     ),
          //   ),
          // ),

          // powered by
          Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Text(
                'Made with ❤ by FutureCraftLab',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShowCategoryTab extends StatelessWidget {
  const ShowCategoryTab({
    super.key,
    required this.filteredPlaces,
  });

  final List<Places> filteredPlaces;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: filteredPlaces.length,
      itemBuilder: (context, index) {
        final place = filteredPlaces[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailedPlace(
                        place: place.title,
                        dest: place.subTitle,
                        imageUrl: place.urlImage,
                        imageOne: place.urlImage1,
                        imageTwo: place.urlImage2,
                        imageThree: place.urlImage3,
                        facOne: "Parking",
                        facTwo: "Food",
                        facThree: "Guides",
                        desc: place.desc,
                        lat: place.lat,
                        lang: place.lang,
                      )),
            );
          },
          child: Hero(
            tag: place.urlImage,
            child: Container(
              margin: EdgeInsets.only(right: 20.w),
              width: 250.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(place.urlImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: StrokeText(
                      text: "${place.title}, ${place.subTitle}",
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                      strokeColor: Colors.black,
                      strokeWidth: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
