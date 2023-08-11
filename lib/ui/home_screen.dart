import 'package:flutter/material.dart';
import 'package:flutter_web/widget/bottom_bar.dart';
import 'package:flutter_web/widget/carousel.dart';
import 'package:flutter_web/widget/destination_heading.dart';
import 'package:flutter_web/widget/explore_drawer.dart';
import 'package:flutter_web/widget/featured_heading.dart';
import 'package:flutter_web/widget/featured_tiles.dart';
import 'package:flutter_web/widget/floating_quick_access_bar.dart';
import 'package:flutter_web/widget/our_services_heading.dart';
import 'package:flutter_web/widget/responsive.dart';
import 'package:flutter_web/widget/services_tiles.dart';
import 'package:flutter_web/widget/top_bar_contents.dart';
// import 'package:http/http.dart' as http; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });
  static const String homeScreenUrl = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

//   List<dynamic> userData = [];
//   _scrollListener() {
//     setState(() {
//       _scrollPosition = _scrollController.position.pixels;
//     });
//   }
//   Future<void> fetchUserData() async {
//     final response = await http.post(Uri.parse("http://127.0.0.1:3000/findAll"));
//     if (response.statusCode == 200) {
//       setState(() {
//         userData = json.decode(response.body)["userDetailList"];
//       });
//     }
//   }
//   @override
//   void initState() {
//     _scrollController.addListener(_scrollListener);
//     fetchUserData();  // Call the API to fetch user data
//     super.initState();
//   }



  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              // for smaller screen sizes
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                'EXPLORE',
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 3,
                ),
              ),
            )
          : PreferredSize(
              // for larger & medium screen sizes
              preferredSize: Size(screenSize.width, 1000),
              child: TopBarContents(_opacity),
            ),
      drawer: ExploreDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    height: screenSize.height * 0.45,
                    width: screenSize.width,
                    child: Image.asset(
                      'assets/images/south_america.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black26],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: SizedBox(
                    height: screenSize.height * 0.45,
                    width: screenSize.width,
                  ),
                ),
                Column(
                  children: [
                    FloatingQuickAccessBar(screenSize: screenSize),
                    Container(
                      child: Column(
                        children: [
                          FeaturedHeading(
                            screenSize: screenSize,
                          ),
                          FeaturedTiles(screenSize: screenSize)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            DestinationHeading(screenSize: screenSize),
            DestinationCarousel(),
            OurServicesHeading(screenSize: screenSize),
            ServicesTiles(screenSize: screenSize),
            SizedBox(height: screenSize.height / 10),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
