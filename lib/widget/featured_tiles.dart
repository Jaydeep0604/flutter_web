import 'package:flutter/material.dart';
import 'package:flutter_web/model/service_detail_model.dart';
import 'package:flutter_web/ui/services_detail_screen.dart';
import 'package:flutter_web/widget/responsive.dart';

class FeaturedTiles extends StatelessWidget {
  FeaturedTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  // final List<String> assets = [
  //   'assets/images/mountain.jpg',
  //   'assets/images/river.jpg',
  //   'assets/images/trekking.jpg',
  // ];
  // final List<String> assets2 = [
  //   'assets/images/animal.jpg',
  //   'assets/images/photography.jpeg',
  //   'assets/images/forest.jpg',
  // ];
  // final List<String> title = [
  //   'Mountain',
  //   'River',
  //   'Trekking',
  // ];
  // final List<String> title2 = [
  //   'Animals',
  //   'Photography',
  //   'Forest',
  // ]
  List<ServiceDetailModel> servicesDetailList = [
    ServiceDetailModel(
      id: "1",
      imgUrl: "assets/images/mountain.jpg",
      title: "Mountain",
      body:
          "   Nestled majestically in nature's embrace, mountains stand as breathtaking guardians of beauty and wonder, beckoning adventurous souls to explore their awe-inspiring heights. As a destination for tourism, mountains offer a diverse and enriching experience for travelers seeking both serenity and excitement.\n\n   Traversing rugged terrains, visitors embark on thrilling treks and hikes that lead to panoramic vistas, rewarding their efforts with sweeping views of valleys, lakes, and snow-capped peaks. Mountain tourism is a sanctuary for nature enthusiasts, where vibrant flora and fauna thrive in harmony, offering unique opportunities for wildlife encounters and birdwatching.\n\n   Mountains also hold cultural significance, being home to ancient civilizations that have left their mark on the landscape with sacred temples, monasteries, and historical ruins. Travelers can immerse themselves in the rich heritage and traditions of mountain communities, learning from the wisdom passed down through generations.\n\n   From the adrenaline rush of skiing and snowboarding in winter to the tranquility of mountain retreats and wellness centers, these towering beauties offer something for every traveler. Nature's therapeutic touch embraces visitors, inviting them to meditate by crystal-clear streams, stargaze under unpolluted skies, or simply breathe in the crisp mountain air.\m\n   Mountain tourism is a gateway to self-discovery and a humbling reminder of humanity's connection to the Earth. With every step, travelers leave behind the complexities of modern life, finding solace in the simplicity of mountain existence. So, whether seeking adventure or seeking solace, mountain tourism promises an unparalleled experience that leaves an indelible mark on the soul.",
    ),
    ServiceDetailModel(
        id: "2",
        imgUrl: "assets/images/river.jpg",
        title: "River",
        body:
            "   Rivers, the lifelines of nature, offer a mesmerizing tapestry of beauty, tranquility, and adventure that captivates tourists worldwide. As a destination for tourism, rivers present an array of experiences, appealing to those seeking both relaxation and thrilling escapades.\n\n   River cruises are a popular attraction, allowing travelers to luxuriate in comfort as they meander along scenic waterways. Gazing upon picturesque landscapes, lush forests, and charming villages, passengers unwind while savoring delicious cuisine and enjoying onboard entertainment.\n\n   For adventure seekers, river rafting and kayaking opportunities abound, as these mighty water bodies carve their way through rugged terrains, offering adrenaline-pumping experiences. The rush of rapids and the roar of cascading waterfalls create unforgettable moments, perfect for thrill-seekers and nature enthusiasts alike.\n\n   River tourism also celebrates culture and history, with many iconic cities established along these waterways. From the romantic Seine in Paris to the historic Danube in Europe, travelers can explore storied architecture, museums, and monuments that bear witness to centuries of civilization.\n\n   Wildlife enthusiasts find solace in river ecosystems, teeming with diverse aquatic life and providing habitats for a myriad of birds and animals. Birdwatching, fishing, and nature walks along riverbanks offer intimate encounters with nature's wonders.\n\n   Above all, rivers inspire introspection and serenity, inviting visitors to sit by their banks, watch the sun set on the horizon, and reflect on the mysteries of life. River tourism provides an enchanting blend of relaxation, adventure, and cultural discovery that resonates deeply with the human spirit, leaving cherished memories that flow forever in the hearts of travelers."),
    ServiceDetailModel(
        id: "3",
        imgUrl: "assets/images/trekking.jpg",
        title: "Trekking",
        body:
            "   Trekking, the art of traversing rugged terrains on foot, epitomizes the essence of adventure and exploration in the world of tourism. It offers an unparalleled opportunity to connect with nature's raw beauty, captivating travelers with its challenges, rewards, and profound experiences.\n\n   For nature enthusiasts, trekking unveils landscapes that remain untouched by urbanization, revealing breathtaking vistas of majestic mountains, dense forests, cascading waterfalls, and serene valleys. Each step immerses trekkers in a world of vibrant flora and fauna, providing encounters with wildlife rarely witnessed elsewhere.\n\n   Trekking tourism caters to a spectrum of experiences, from leisurely day hikes to multi-day expeditions. Whether conquering iconic trails like the Inca Trail to Machu Picchu or venturing off-the-beaten-path, each trek is an opportunity to push personal limits, fostering self-discovery and resilience.\n\n   Moreover, trekking allows for cultural immersion, as trails often traverse remote villages and ethnic communities. Interactions with locals provide insight into their traditions, cuisines, and way of life, forging connections that transcend linguistic and cultural barriers.\n\n   Beyond physical challenges, trekking fosters spiritual growth, allowing trekkers to find solace in nature's grandeur and silence. Campfire tales under starlit skies and moments of quiet contemplation amidst pristine landscapes forge memories that resonate deeply.\n\n   Trekking tourism is also sustainable, encouraging responsible travel practices to preserve the ecosystems and communities along the trails. Guided by experienced trekkers, participants gain a deeper appreciation for the fragility of nature and the importance of conservation.\n\n   In conclusion, trekking tourism is a transformative experience that beckons adventurers to embrace the call of the wild, immersing themselves in a world of natural wonders and unforgettable encounters. Whether seeking thrilling escapades or profound soul-searching, trekking offers a pathway to unforgettable journeys that enrich the spirit and leave footprints on the heart."),
  ];
  List<ServiceDetailModel> servicesDetailList2 = [
    ServiceDetailModel(
        id: "1",
        imgUrl: "assets/images/animal.jpg",
        title: "Animals",
        body:
            "   Animals, the fascinating inhabitants of our planet, offer a unique and captivating dimension to tourism, providing travelers with unforgettable encounters and an appreciation for the diversity of life. Wildlife tourism allows visitors to connect with nature in profound ways, offering experiences that are both educational and deeply enriching.\n\n   Safari adventures take travelers into the heart of untamed landscapes, where they witness the splendor of majestic creatures in their natural habitats. From the mighty elephants of Africa to the elusive big cats, such as lions and leopards, these encounters evoke awe and respect for the animal kingdom.\n\n   Marine wildlife tourism invites travelers to explore the ocean's depths, encountering magnificent creatures like whales, dolphins, and sea turtles. Snorkeling and diving excursions provide intimate encounters with colorful coral reefs and a myriad of marine species, revealing the hidden wonders of the underwater world.\n\n   Ecotourism initiatives emphasize responsible practices, promoting conservation efforts and ethical interactions with animals. Sanctuaries and wildlife rehabilitation centers offer opportunities to learn about the importance of wildlife conservation and contribute to their well-being.\n\n   Birdwatching tourism appeals to nature enthusiasts and ornithologists, as they observe a diverse array of avian species in their natural habitats. Guided tours provide insights into bird behavior, migration patterns, and the role of birds in maintaining ecological balance.\n\n   Animal-related tourism can play a significant role in raising awareness about the conservation of endangered species and habitats. By fostering a deeper understanding and appreciation for animals, travelers are inspired to become advocates for wildlife preservation.\n\n   Ultimately, animals bring a touch of magic to tourism, reminding us of the delicate interconnection between all living beings and the need to protect our precious natural heritage. Whether seeking thrilling encounters or educational experiences, animal tourism presents a world of wonder and inspiration that leaves a lasting impact on both travelers and the ecosystems they explore."),
    ServiceDetailModel(
        id: "2",
        imgUrl: "assets/images/photography.jpeg",
        title: "Photography",
        body:
            "   Photography is a powerful tool that enhances the tourism experience, capturing the essence of a destination and preserving cherished memories for eternity. It transcends language barriers, allowing travelers to communicate their adventures and share the beauty they've witnessed with the world.\n\n   In tourism, photography serves as a visual storyteller, narrating tales of breathtaking landscapes, vibrant cultures, and unique encounters. From towering mountains and serene beaches to bustling city streets and ancient architecture, photography immortalizes the soul-stirring moments of every journey.\n\n   Photography in tourism enables travelers to see the world through a different lens, encouraging them to explore hidden corners and seek out the beauty in the ordinary. It instills a sense of mindfulness, as photographers keenly observe the interplay of light and shadow, the subtle details, and the expressions of people they encounter.\n\n   Moreover, photography is a means of preserving cultural heritage, capturing traditions, rituals, and artistic expressions that shape a destination's identity. It becomes a bridge between the past and the present, ensuring that stories of heritage are passed down for generations to come.\n\n   In the digital age, photography has become an essential part of travel experiences, inspiring wanderlust and drawing others to explore the world. The vibrant imagery shared on social media platforms creates a global community of explorers, fostering a sense of connection and encouraging responsible travel practices.\n\n   Ultimately, photography in tourism is an art form that goes beyond the technical aspects of capturing images. It encapsulates emotions, evokes nostalgia, and inspires new journeys. As travelers embark on adventures armed with their cameras, they not only document their experiences but also contribute to a collective visual tapestry that celebrates the boundless beauty and diversity of our planet."),
    ServiceDetailModel(
        id: "3",
        imgUrl: "assets/images/forest.jpg",
        title: "Forest",
        body:
            "   Forests, the ancient sanctuaries of nature, beckon tourists with their mystical allure and profound tranquility. As destinations for tourism, forests offer a unique escape from the bustling world, inviting travelers to immerse themselves in the beauty of untouched wilderness.\n   Forest tourism caters to a wide range of experiences, from leisurely nature walks on well-marked trails to challenging treks deep into remote woodlands. Towering trees, lush undergrowth, and the sweet scent of earth envelop visitors, providing a sensory journey like no other.\n\n   Ecotourism initiatives promote responsible forest exploration, emphasizing conservation and sustainable practices. Guided tours by knowledgeable naturalists offer valuable insights into the delicate balance of forest ecosystems, educating travelers about the significance of preserving these precious habitats.\n\n   Wildlife enthusiasts find solace in forest havens, where diverse fauna thrives amidst the dense foliage. Birdwatching opportunities abound, with melodies of songbirds echoing through the treetops, while glimpses of elusive creatures like deer, foxes, and even rare predators can leave a lasting impression.\n\n   Forests also harbor cultural significance, with some areas housing ancient ruins, sacred sites, and traditional villages. Exploring these cultural facets reveals a deeper connection between humans and nature, fostering an appreciation for the intricate relationship between local communities and their wooded surroundings.\n\n   In addition to their natural allure, forests provide serene settings for meditation, yoga retreats, and wellness getaways. The soothing ambiance and therapeutic benefits of being immersed in nature offer opportunities for rejuvenation and self-reflection.\n\n   Forest tourism offers an invitation to slow down, embrace nature's rhythm, and appreciate the marvels of biodiversity. It serves as a reminder of our responsibility to protect these precious ecosystems and fosters a sense of wonder and gratitude for the bountiful gifts that forests bestow upon us."),
  ];
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenSize.width / 15),
                      ...Iterable<int>.generate(servicesDetailList.length).map(
                          (int index) => FeaturedTileSmallSizeWidget(
                              screenSize: screenSize,
                              serviceDetailModel: servicesDetailList[index])),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height / 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: screenSize.width / 15),
                      ...Iterable<int>.generate(servicesDetailList.length).map(
                          (int index) => FeaturedTileSmallSizeWidget(
                              screenSize: screenSize,
                              serviceDetailModel: servicesDetailList2[index])),
                    ],
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...Iterable<int>.generate(servicesDetailList.length).map(
                        (int index) => FeaturedTileBigSizeWidget(
                            screenSize: screenSize,
                            serviceDetailModel: servicesDetailList[index])),
                  ],
                ),
                SizedBox(
                  height: screenSize.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...Iterable<int>.generate(servicesDetailList.length).map(
                        (int index) => FeaturedTileBigSizeWidget(
                            screenSize: screenSize,
                            serviceDetailModel: servicesDetailList2[index])),
                  ],
                ),
              ],
            ),
          );
  }
}

class FeaturedTileSmallSizeWidget extends StatelessWidget {
  FeaturedTileSmallSizeWidget({
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
        Navigator.pushNamed(
            context, ServicesDetailScreen.servicesDetailScreenUrl, arguments: {
          'imgUrl': serviceDetailModel.imgUrl,
          'body': serviceDetailModel.body
        });

  
      },
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.width / 2.5,
                width: screenSize.width / 1.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    serviceDetailModel.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height / 70,
                ),
                child: Text(
                  serviceDetailModel.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: screenSize.width / 15),
        ],
      ),
    );
  }
}

class FeaturedTileBigSizeWidget extends StatelessWidget {
  FeaturedTileBigSizeWidget({
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
        Navigator.pushNamed(
            context, ServicesDetailScreen.servicesDetailScreenUrl, arguments: {
          'imgUrl': serviceDetailModel.imgUrl,
          'body': serviceDetailModel.body
        });
      },
      child: Column(
        children: [
          SizedBox(
            height: screenSize.width / 6,
            width: screenSize.width / 3.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                serviceDetailModel.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: screenSize.height / 70,
            ),
            child: Text(
              serviceDetailModel.title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
