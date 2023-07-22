import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/model/service_detail_model.dart';
import 'package:flutter_web/widget/responsive.dart';

class DestinationCarousel extends StatefulWidget {
  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/images/kumbhalgarh.jpg',
    'assets/images/statue_of_unity.jpg',
    'assets/images/jaipur.jpg',
    'assets/images/ooty.jpg',
    'assets/images/taj-mahal2.jpg',
    'assets/images/manali.jpg',
  ];

  final List<String> places = [
    'KUMBHALGARH',
    'STATUE OF UNITY',
    'JAIPUR',
    'OOTY',
    'TAJ-MAHAL',
    'MANALI',
  ];
  List<ServiceDetailModel> servicesDetailList = [
    ServiceDetailModel(
      id: "1",
      imgUrl: "assets/images/kumbhalgarh.jpg",
      title: "KUMBHALGARH",
      body:
          "   Embark on an extraordinary journey of a lifetime with our carefully curated worldwide tours, where adventure, culture, and beauty seamlessly intertwine. Traverse the diverse landscapes of our planet, from the pristine beaches of Bora Bora to the rugged terrains of Patagonia. Immerse yourself in enchanting cultures, meeting fascinating locals and partaking in ancient traditions. Wander through bustling markets, marvel at architectural wonders, and taste tantalizing cuisines, expanding your horizons with each destination.\n\n   Our expertly crafted itineraries offer a blend of iconic landmarks and hidden gems, ensuring you experience the heart and soul of each location. Trek through dense rainforests to discover hidden waterfalls, dive into crystal-clear waters teeming with marine life, or unwind in serene spa retreats, rejuvenating your body and mind.\n\n   Safety and comfort are our top priorities, and our knowledgeable guides accompany you every step of the way, providing valuable insights and ensuring a seamless travel experience. Travel with like-minded explorers from around the globe, forging friendships that transcend borders and cultures.\n\n   Indulge your adventurous spirit with thrilling activities like hiking ancient trails, zip-lining through lush canopies, or snorkeling amidst vibrant coral reefs. Alternatively, relish moments of tranquility while gazing at awe-inspiring sunsets or stargazing under clear night skies.\n\n   Our worldwide tours cater to various interests, from nature enthusiasts to history buffs, photographers to foodies. Whether you seek adrenaline-pumping escapades or serene meditative retreats, our tours promise to enrich your life with unforgettable memories and soul-stirring experiences that will leave you forever in awe of the wonders our world has to offer. So, come join us on this exhilarating global exploration, and let the magic of our worldwide tours ignite your sense of wonder and wanderlust.",
    ),
    ServiceDetailModel(
      id: "2",
      imgUrl: "assets/images/statue_of_unity.jpg",
      title: "STATUE OF UNITY",
      body:
          "   Welcome to our seamless hotel reservation service, where we make finding your perfect accommodation a breeze. Whether you're planning a relaxing getaway, a business trip, or an adventurous journey, we've got you covered.\n\n   With an extensive network of partner hotels worldwide, we offer an array of options to suit every budget and preference. From luxurious five-star resorts overlooking pristine beaches to cozy boutique hotels tucked away in charming city corners, our selection caters to all tastes.\n\n   Our user-friendly platform allows you to effortlessly browse through various properties, filtering by location, price, amenities, and guest reviews. Detailed descriptions and high-quality images offer a virtual tour, helping you make an informed decision before you book.\n\n   Booking with us ensures you receive the best rates available, thanks to our partnerships and negotiated deals with hotels. Rest assured that your personal information is secure, and our customer support team is available 24/7 to assist you with any queries or special requests.\n\n   Whether you're traveling solo, with family, or in a group, we take care of your accommodation needs, so you can focus on making lasting memories during your trip. With our hassle-free reservation process, you can confidently plan your stay without the stress of searching for the perfect place.\n\n   Choose our hotel reservation service and experience convenience, reliability, and comfort at your fingertips. Let us be your travel companion, ensuring your accommodations are a home away from home, and your journey is filled with delightful moments from start to finish.",
    ),
    ServiceDetailModel(
      id: "3",
      imgUrl: "assets/images/jaipur.jpg",
      title: "JAIPUR",
      body:
          "   Our comprehensive travel guides are your ultimate companions, unlocking the wonders of every destination and transforming your journey into an unforgettable adventure. Packed with invaluable insights and expert recommendations, our guides cater to all types of travelers, from first-timers to seasoned explorers.\n\n   Each travel guide is meticulously curated, presenting a wealth of information about the destination's history, culture, landmarks, and hidden gems. Explore bustling cities like a local, discover off-the-beaten-path treasures, and immerse yourself in authentic experiences that go beyond tourist traps.\n\n   From practical travel tips, such as visa requirements and local customs, to must-visit attractions and top-rated restaurants, our guides provide all the essential knowledge you need for a smooth and enriching trip. Stunning photographs and detailed maps allow you to visualize your adventure in advance, making it easier to plan and navigate.\n\n   Whether you're seeking adrenaline-pumping activities, relaxing getaways, or cultural encounters, our travel guides cater to diverse interests. Delve into nature's wonders, explore ancient ruins, or indulge in culinary delights as you follow our carefully crafted itineraries.\n\n   With our travel guides in hand, you can confidently venture into new territories, knowing that every step is backed by well-researched information and reliable tips. Gain a deeper understanding of the places you visit, connect with locals, and create cherished memories that will last a lifetime.\n\n   Whether you're exploring one city or hopping across continents, our travel guides are the quintessential companions to unlock the full potential of your journey. So, embrace the world with curiosity, armed with our insightful travel guides, and let the wonders of each destination unfold before your eyes.",
    ),
    ServiceDetailModel(
      id: "4",
      imgUrl: "assets/images/ooty.jpg",
      title: "OOTY",
      body:
          "   Welcome to our seamless hotel reservation service, where we make finding your perfect accommodation a breeze. Whether you're planning a relaxing getaway, a business trip, or an adventurous journey, we've got you covered.\n\n   With an extensive network of partner hotels worldwide, we offer an array of options to suit every budget and preference. From luxurious five-star resorts overlooking pristine beaches to cozy boutique hotels tucked away in charming city corners, our selection caters to all tastes.\n\n   Our user-friendly platform allows you to effortlessly browse through various properties, filtering by location, price, amenities, and guest reviews. Detailed descriptions and high-quality images offer a virtual tour, helping you make an informed decision before you book.\n\n   Booking with us ensures you receive the best rates available, thanks to our partnerships and negotiated deals with hotels. Rest assured that your personal information is secure, and our customer support team is available 24/7 to assist you with any queries or special requests.\n\n   Whether you're traveling solo, with family, or in a group, we take care of your accommodation needs, so you can focus on making lasting memories during your trip. With our hassle-free reservation process, you can confidently plan your stay without the stress of searching for the perfect place.\n\n   Choose our hotel reservation service and experience convenience, reliability, and comfort at your fingertips. Let us be your travel companion, ensuring your accommodations are a home away from home, and your journey is filled with delightful moments from start to finish.",
    ),
    ServiceDetailModel(
      id: "5",
      imgUrl: "assets/images/taj-mahal2.jpg",
      title: "TAJ-MAHAL",
      body:
          "   Our comprehensive travel guides are your ultimate companions, unlocking the wonders of every destination and transforming your journey into an unforgettable adventure. Packed with invaluable insights and expert recommendations, our guides cater to all types of travelers, from first-timers to seasoned explorers.\n\n   Each travel guide is meticulously curated, presenting a wealth of information about the destination's history, culture, landmarks, and hidden gems. Explore bustling cities like a local, discover off-the-beaten-path treasures, and immerse yourself in authentic experiences that go beyond tourist traps.\n\n   From practical travel tips, such as visa requirements and local customs, to must-visit attractions and top-rated restaurants, our guides provide all the essential knowledge you need for a smooth and enriching trip. Stunning photographs and detailed maps allow you to visualize your adventure in advance, making it easier to plan and navigate.\n\n   Whether you're seeking adrenaline-pumping activities, relaxing getaways, or cultural encounters, our travel guides cater to diverse interests. Delve into nature's wonders, explore ancient ruins, or indulge in culinary delights as you follow our carefully crafted itineraries.\n\n   With our travel guides in hand, you can confidently venture into new territories, knowing that every step is backed by well-researched information and reliable tips. Gain a deeper understanding of the places you visit, connect with locals, and create cherished memories that will last a lifetime.\n\n   Whether you're exploring one city or hopping across continents, our travel guides are the quintessential companions to unlock the full potential of your journey. So, embrace the world with curiosity, armed with our insightful travel guides, and let the wonders of each destination unfold before your eyes.",
    ),
    ServiceDetailModel(
      id: "5",
      imgUrl: "assets/images/manali.jpg",
      title: "MANALI",
      body:
          "   Our comprehensive travel guides are your ultimate companions, unlocking the wonders of every destination and transforming your journey into an unforgettable adventure. Packed with invaluable insights and expert recommendations, our guides cater to all types of travelers, from first-timers to seasoned explorers.\n\n   Each travel guide is meticulously curated, presenting a wealth of information about the destination's history, culture, landmarks, and hidden gems. Explore bustling cities like a local, discover off-the-beaten-path treasures, and immerse yourself in authentic experiences that go beyond tourist traps.\n\n   From practical travel tips, such as visa requirements and local customs, to must-visit attractions and top-rated restaurants, our guides provide all the essential knowledge you need for a smooth and enriching trip. Stunning photographs and detailed maps allow you to visualize your adventure in advance, making it easier to plan and navigate.\n\n   Whether you're seeking adrenaline-pumping activities, relaxing getaways, or cultural encounters, our travel guides cater to diverse interests. Delve into nature's wonders, explore ancient ruins, or indulge in culinary delights as you follow our carefully crafted itineraries.\n\n   With our travel guides in hand, you can confidently venture into new territories, knowing that every step is backed by well-researched information and reliable tips. Gain a deeper understanding of the places you visit, connect with locals, and create cherished memories that will last a lifetime.\n\n   Whether you're exploring one city or hopping across continents, our travel guides are the quintessential companions to unlock the full potential of your journey. So, embrace the world with curiosity, armed with our insightful travel guides, and let the wonders of each destination unfold before your eyes.",
    ),
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              images[_current],
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              enlargeCenterPage: true,
              aspectRatio: 18 / 8,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                  for (int i = 0; i < imageSliders.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              }),
          carouselController: _controller,
        ),
        AspectRatio(
          aspectRatio: 18 / 8,
          child: Center(
            child: Text(
              places[_current],
              style: TextStyle(
                letterSpacing: 8,
                fontFamily: 'Electrolize',
                fontSize: screenSize.width / 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        ResponsiveWidget.isSmallScreen(context)
            ? Container()
            : AspectRatio(
                aspectRatio: 17 / 8,
                child: Center(
                  heightFactor: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: screenSize.width / 8,
                        right: screenSize.width / 8,
                      ),
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: screenSize.height / 50,
                            bottom: screenSize.height / 50,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int i = 0; i < places.length; i++)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onHover: (value) {
                                        setState(() {
                                          value
                                              ? _isHovering[i] = true
                                              : _isHovering[i] = false;
                                        });
                                      },
                                      onTap: () {
                                        _controller.animateToPage(i);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: screenSize.height / 80,
                                            bottom: screenSize.height / 90),
                                        child: Text(
                                          places[i],
                                          style: TextStyle(
                                            color: _isHovering[i]
                                                ? Colors.blueGrey[900]
                                                : Colors.blueGrey,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      maintainSize: true,
                                      maintainAnimation: true,
                                      maintainState: true,
                                      visible: _isSelected[i],
                                      child: AnimatedOpacity(
                                        duration: Duration(milliseconds: 400),
                                        opacity: _isSelected[i] ? 1 : 0,
                                        child: Container(
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                          width: screenSize.width / 10,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
