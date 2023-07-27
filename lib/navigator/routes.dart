import 'package:flutter/material.dart';
import 'package:flutter_web/model/service_detail_model.dart';
import 'package:flutter_web/ui/home_screen.dart';
import 'package:flutter_web/ui/services_detail_screen.dart';
import 'package:flutter_web/ui/unknown.dart';

class AppRoutes {
  static Route<dynamic> generateGlobalRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.homeScreenUrl:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
          settings: settings,
        );
      case ServicesDetailScreen.servicesDetailScreenUrl:
        return MaterialPageRoute(
          builder: (context) => ServicesDetailScreen(
            imgUrl: (settings.arguments as Map)['imgUrl'],
            body: (settings.arguments as Map)['body'],
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => UnknownRoute(),
        );
    }
  }
}
