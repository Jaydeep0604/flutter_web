import 'package:flutter/material.dart';
import 'package:flutter_web/widget/responsive.dart';

class ServicesDetailScreen extends StatefulWidget {
  ServicesDetailScreen({
    super.key,
    required this.imgUrl,
    required this.body,
  });
  String? imgUrl;
  String? body;

  @override
  State<ServicesDetailScreen> createState() => _ServicesDetailScreenState();
}

class _ServicesDetailScreenState extends State<ServicesDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: ResponsiveWidget.isSmallScreen(context)
          ? Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        height: screenSize.height * 0.45,
                        width: screenSize.width,
                        child: Image.asset(
                          '${widget.imgUrl}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: SizedBox(
                        height: screenSize.height * 0.45,
                        width: screenSize.width,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenSize.height / 4,
                        left: screenSize.width / 15,
                        right: screenSize.width / 15,
                        bottom: screenSize.width / 30,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white60,
                              Colors.white60,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: SizedBox(
                          height: screenSize.height * 0.70,
                          width: screenSize.width,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    widget.body!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      fontFamily: 'Montserrat',
                                      // fontSize: screenSize.width / 25,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      child: SizedBox(
                        height: screenSize.height * 0.45,
                        width: screenSize.width,
                        child: Image.asset(
                          '${widget.imgUrl}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: SizedBox(
                        height: screenSize.height * 0.45,
                        width: screenSize.width,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenSize.height / 6,
                        left: screenSize.width / 5,
                        right: screenSize.width / 5,
                        bottom: screenSize.width / 30,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white60,
                              Colors.white60,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: SizedBox(
                          height: screenSize.height * 0.70,
                          width: screenSize.width,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    widget.body!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      letterSpacing: 1,
                                      fontFamily: 'Montserrat',
                                      // fontSize: screenSize.width / 25,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
