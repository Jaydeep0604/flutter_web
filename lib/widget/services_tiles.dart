import 'package:flutter/material.dart';
import 'package:flutter_web/model/service_detail_model.dart';
import 'package:flutter_web/widget/responsive.dart';

class ServicesTiles extends StatelessWidget {
  ServicesTiles({super.key, required this.screenSize});
  final Size screenSize;

  // final List<String> assets = [
  //   'assets/images/world.jpg',
  //   'assets/images/hotel.jpg',
  //   'assets/images/guide.jpg',
  //   'assets/images/event.jpg',
  // ];

  // final List<String> titleList = [
  //   'WorldWide Tours',
  //   'Hotel Reservation',
  //   'Travel Guides',
  //   'Event Management',
  // ];
  List<ServiceDetailModel> servicesDetailList = [
    ServiceDetailModel(
      id: "1",
      imgUrl: "assets/images/world.jpg",
      title: "WorldWide Tours",
      body:
          "   Embark on an extraordinary journey of a lifetime with our carefully curated worldwide tours, where adventure, culture, and beauty seamlessly intertwine. Traverse the diverse landscapes of our planet, from the pristine beaches of Bora Bora to the rugged terrains of Patagonia. Immerse yourself in enchanting cultures, meeting fascinating locals and partaking in ancient traditions. Wander through bustling markets, marvel at architectural wonders, and taste tantalizing cuisines, expanding your horizons with each destination.\n\n   Our expertly crafted itineraries offer a blend of iconic landmarks and hidden gems, ensuring you experience the heart and soul of each location. Trek through dense rainforests to discover hidden waterfalls, dive into crystal-clear waters teeming with marine life, or unwind in serene spa retreats, rejuvenating your body and mind.\n\n   Safety and comfort are our top priorities, and our knowledgeable guides accompany you every step of the way, providing valuable insights and ensuring a seamless travel experience. Travel with like-minded explorers from around the globe, forging friendships that transcend borders and cultures.\n\n   Indulge your adventurous spirit with thrilling activities like hiking ancient trails, zip-lining through lush canopies, or snorkeling amidst vibrant coral reefs. Alternatively, relish moments of tranquility while gazing at awe-inspiring sunsets or stargazing under clear night skies.\n\n   Our worldwide tours cater to various interests, from nature enthusiasts to history buffs, photographers to foodies. Whether you seek adrenaline-pumping escapades or serene meditative retreats, our tours promise to enrich your life with unforgettable memories and soul-stirring experiences that will leave you forever in awe of the wonders our world has to offer. So, come join us on this exhilarating global exploration, and let the magic of our worldwide tours ignite your sense of wonder and wanderlust.",
    ),
    ServiceDetailModel(
      id: "2",
      imgUrl: "assets/images/hotel.jpg",
      title: "Hotel Reservation",
      body:
          "   Welcome to our seamless hotel reservation service, where we make finding your perfect accommodation a breeze. Whether you're planning a relaxing getaway, a business trip, or an adventurous journey, we've got you covered.\n\n   With an extensive network of partner hotels worldwide, we offer an array of options to suit every budget and preference. From luxurious five-star resorts overlooking pristine beaches to cozy boutique hotels tucked away in charming city corners, our selection caters to all tastes.\n\n   Our user-friendly platform allows you to effortlessly browse through various properties, filtering by location, price, amenities, and guest reviews. Detailed descriptions and high-quality images offer a virtual tour, helping you make an informed decision before you book.\n\n   Booking with us ensures you receive the best rates available, thanks to our partnerships and negotiated deals with hotels. Rest assured that your personal information is secure, and our customer support team is available 24/7 to assist you with any queries or special requests.\n\n   Whether you're traveling solo, with family, or in a group, we take care of your accommodation needs, so you can focus on making lasting memories during your trip. With our hassle-free reservation process, you can confidently plan your stay without the stress of searching for the perfect place.\n\n   Choose our hotel reservation service and experience convenience, reliability, and comfort at your fingertips. Let us be your travel companion, ensuring your accommodations are a home away from home, and your journey is filled with delightful moments from start to finish.",
    ),
    ServiceDetailModel(
      id: "3",
      imgUrl: "assets/images/guide.jpg",
      title: "Travel Guides",
      body:
          "   Our comprehensive travel guides are your ultimate companions, unlocking the wonders of every destination and transforming your journey into an unforgettable adventure. Packed with invaluable insights and expert recommendations, our guides cater to all types of travelers, from first-timers to seasoned explorers.\n\n   Each travel guide is meticulously curated, presenting a wealth of information about the destination's history, culture, landmarks, and hidden gems. Explore bustling cities like a local, discover off-the-beaten-path treasures, and immerse yourself in authentic experiences that go beyond tourist traps.\n\n   From practical travel tips, such as visa requirements and local customs, to must-visit attractions and top-rated restaurants, our guides provide all the essential knowledge you need for a smooth and enriching trip. Stunning photographs and detailed maps allow you to visualize your adventure in advance, making it easier to plan and navigate.\n\n   Whether you're seeking adrenaline-pumping activities, relaxing getaways, or cultural encounters, our travel guides cater to diverse interests. Delve into nature's wonders, explore ancient ruins, or indulge in culinary delights as you follow our carefully crafted itineraries.\n\n   With our travel guides in hand, you can confidently venture into new territories, knowing that every step is backed by well-researched information and reliable tips. Gain a deeper understanding of the places you visit, connect with locals, and create cherished memories that will last a lifetime.\n\n   Whether you're exploring one city or hopping across continents, our travel guides are the quintessential companions to unlock the full potential of your journey. So, embrace the world with curiosity, armed with our insightful travel guides, and let the wonders of each destination unfold before your eyes.",
    ),
    ServiceDetailModel(
      id: "4",
      imgUrl: "assets/images/event.jpg",
      title: "Event Management",
      body:
          "   Event management is an artful orchestration that turns visions into reality, creating unforgettable experiences for all involved. As seasoned event planners, we pride ourselves on meticulous planning and flawless execution, ensuring that every detail is carefully considered and executed with precision.\n   From intimate gatherings to grand celebrations, we specialize in organizing a wide array of events, including corporate conferences, weddings, product launches, galas, and more. Our team of dedicated professionals collaborates closely with clients, understanding their unique preferences, objectives, and aspirations.\n\n   The event journey begins with conceptualization, where we craft a tailored blueprint, encompassing themes, layouts, and timelines. Seamlessly transitioning to logistics, we source the finest venues, coordinate transportation, and manage event essentials, such as catering, audiovisual setups, and decor.\n\n   On the day of the event, our skilled coordinators work behind the scenes, ensuring seamless transitions and handling any unforeseen challenges with grace and efficiency. We prioritize guest experience, ensuring attendees are delighted from the moment they arrive until the event's conclusion.\n\n   Safety and compliance are paramount in our event management process, and we adhere to all local regulations and guidelines, guaranteeing a secure environment for all participants.\n\n   Our goal is to surpass expectations and deliver an extraordinary event that lingers in the hearts and minds of guests long after the final curtain call. With our expertise, creativity, and unwavering dedication, we make every occasion an enchanting celebration that leaves lasting impressions and unforgettable memories. Entrust us with your event, and together, we'll create an experience that transcends imagination, setting the stage for unforgettable moments that will be cherished for years to come.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 50,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              primary: false,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: servicesDetailList.length,
              itemBuilder: (context, index) {
                return ServicesTileSmallSizeWidget(
                    screenSize: screenSize,
                    serviceDetailModel: servicesDetailList[index]);
              },
            ),
          )
        : Container(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(servicesDetailList.length).map(
                  (int index) => ServiceTileBigSizeWidget(
                    screenSize: screenSize,
                    serviceDetailModel: servicesDetailList[index],
                  ),
                ),
              ],
            ),
          );
  }
}

class ServicesTileSmallSizeWidget extends StatelessWidget {
  ServicesTileSmallSizeWidget({
    super.key,
    required this.screenSize,
    required this.serviceDetailModel,
  });
  var screenSize;
  ServiceDetailModel serviceDetailModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //  Navigator.pushNamed(context, RoutesName.servicesDetailScreen,
        //     arguments: {
        //       'imgUrl': serviceDetailModel.imgUrl,
        //       'body': serviceDetailModel.body
        //     });
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return ServicesDetailScreen(
        //     imgUrl: serviceDetailModel.imgUrl,
        //     body: serviceDetailModel.body,
        //   );
        // }));
      },
      child: Container(
        height: screenSize.width / 2.3,
        width: screenSize.width / 2.3,
        child: Stack(
          children: [
            SizedBox(
              height: screenSize.width / 2.3,
              width: screenSize.width / 2.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  serviceDetailModel.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: screenSize.width / 2.3,
              width: screenSize.width / 2.3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    serviceDetailModel.title!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceTileBigSizeWidget extends StatelessWidget {
  ServiceTileBigSizeWidget({
    super.key,
    required this.screenSize,
    required this.serviceDetailModel,
  });
  var screenSize;
  ServiceDetailModel serviceDetailModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //  Navigator.pushNamed(context, RoutesName.servicesDetailScreen,
        //     arguments: {
        //       'imgUrl': serviceDetailModel.imgUrl,
        //       'body': serviceDetailModel.body
        //     });
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return ServicesDetailScreen(
        //     imgUrl: serviceDetailModel.imgUrl,
        //     body: serviceDetailModel.body,
        //   );
        // }));
      },
      child: Column(
        children: [
          Container(
            height: screenSize.width / 6,
            width: screenSize.width / 5.8,
            child: Stack(
              children: [
                SizedBox(
                  height: screenSize.width / 6,
                  width: screenSize.width / 5.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      "${serviceDetailModel.imgUrl}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: screenSize.width / 6,
                    width: screenSize.width / 5.8,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          serviceDetailModel.title!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
